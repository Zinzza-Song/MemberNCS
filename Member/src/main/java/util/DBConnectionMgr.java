package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBConnectionMgr {

	public static Connection getConnection() {
		Connection conn = null;
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			// jdbc/myoracle이란 이름을 객체를 찾아서 DataSource가 받는다.
			DataSource ds = (DataSource) envContext.lookup("jdbc/pool");
			// ds가 생성되었으므로 Connection을 구합니다.
			conn = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
}
