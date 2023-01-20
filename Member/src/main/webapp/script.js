function zipserch(){ 
	if(document.frm.zip.value==null){ 
		alert("주소를 입력해주세요"); 
		return false;	 
	}else if(document.frm.zip.value==""){ 
		alert("주소를 입력해주세요"); 
		return false;	 
	} 
	return true; 
} 
function checkId(){ 
	if(document.idCheckForm.chid.value==null){ 
		alert("ID를 입력해주세요."); 
		return false; 
	} 
	if(checkNum==1){ 
		alert("ID가 중복됩니다."); 
		return false; 
	} 
	else{ 
		return true; 
	} 
} 
 
function goUrl() { 
	const idText = document.f.id.value; 
	return "idCheck.jsp?id="+idText; 
}

function goZip() {
	window.name = "memberForm";
	window.open();
}

function ch(){
	if(document.f.id.value==""||document.f.id.value==null){
		alert("아이디를 입력해주세요");
		return false;
	}
	
	if(document.f.pwd2.value==""||document.f.pwd2.value==null){
		alert("비밀번호 확인 칸을 입력해주세요");
		return false;
	}
	
	if(document.f.pwd.value!=document.f.pwd2.value){
		alert("비밀번호가 일치하지 않습니다");
		return false;	
	}
	
	if(document.f.name.value==""||document.f.name.value==null){
		alert("이름을 입력해주세요");
		return false;
	}
	
	if(document.f.gender.value==""||document.f.gender.value==null){
		alert("성별을 체크해주세요");
		return false;
	}
	
	if(document.f.email.value==""||document.f.email.value==null){
		alert("이메일을 입력해주세요");
		return false;
	}	
	
	
	if(document.f.birth.value==""||document.f.birth.value==null){
		alert("생년월일을 입력해주세요");
		return false;
	}
	
	if(document.f.address.value==""||document.f.address.value==null){
		alert("주소를 입력해주세요");
		return false;
	}		
	
	return true;	
}
