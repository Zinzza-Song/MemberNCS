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

