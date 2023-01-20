package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.MemberBean;
import bean.ZipBean;
import util.DBConnectionMgr;

public class MemberMgr {

	private static MemberMgr instance = null;

	private MemberMgr() {
	}

	public static MemberMgr getInstance() {
		if (instance == null)
			instance = new MemberMgr();
		return instance;
	}

	public void insertMember(MemberBean bean) {
		String sql = "insert into member values(?,?,?,?,?,?,?,?,?,?)";
		try (Connection con = DBConnectionMgr.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setString(1, bean.getId());
			pstmt.setString(2, bean.getPwd());
			pstmt.setString(3, bean.getName());
			pstmt.setString(4, bean.getGender());
			pstmt.setString(5, bean.getEmail());
			pstmt.setString(6, bean.getBirth());
			pstmt.setString(7, bean.getZipcode());
			pstmt.setString(8, bean.getAddress());
			pstmt.setString(9, bean.getHobby());
			pstmt.setString(10, bean.getJob());
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int idCheck(String id) {
		int res = 505;
		String sql = "select count(*) from member where id=?";
		
		try(Connection con = DBConnectionMgr.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next())
				res = rs.getInt(1);
			rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return res;
	}
	
	public MemberBean login(String id, String pw) {
		MemberBean bean = new MemberBean();
		String sql = "select * from member where id=? and pwd=?";
		
		try(Connection con = DBConnectionMgr.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				bean.setId(rs.getString(1));
				bean.setPwd(rs.getString(2));
				bean.setName(rs.getString(3));
				bean.setGender(rs.getString(4));
				bean.setEmail(rs.getString(5));
				bean.setBirth(rs.getString(6));
				bean.setZipcode(rs.getString(7));
				bean.setAddress(rs.getString(8));
				bean.setHobby(rs.getString(9));
				bean.setJob(rs.getString(10));
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return bean;
	}
	
	public ArrayList<ZipBean> serchZip(String keyword) {
		ArrayList<ZipBean> list = new ArrayList<>();
		
		String sql = "select * from tblzipcode where area2 like ? or area3 like ?";
		String str = '%' + keyword + '%';
		
		try(Connection con = DBConnectionMgr.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setString(1, str);
			pstmt.setString(2, str);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				ZipBean zip = new ZipBean();
				zip.setZipcode(rs.getString(1));
				zip.setArea1(rs.getString(2));
				zip.setArea2(rs.getString(3));
				zip.setArea3(rs.getString(4));
				
				list.add(zip);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

}
