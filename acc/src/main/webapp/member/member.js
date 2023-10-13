$(document).ready(function(){

	$("form").submit(function(){
	
	if($("#name").val() == ""){
		alert("사용자 이름 입력");
		$("#name").focus();
		return false;
	}else if($("#name").val().length < 2){
		alert("이름을 두글자 이상 입력");
		$("#name").focus();
		return false;
	}
	
	
	if($("#pw").val()==""){
		alert("비밀번호 작성");
		$("#pw").focus();
		return false;
	}else if($("#repw").val()==""){
		alert("비밀번호 확인란 작성");
		$("#repw").focus();
		return false;
	
	
	}else if( $("#pw").val() != $("#repw").val() ){
		alert("작성한 비밀번호가 서로 일치하지 않음");
		$("#pw").val("").focus();
		$("#repw").val("");
		return false;
	}
	
	
	});
});