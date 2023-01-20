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