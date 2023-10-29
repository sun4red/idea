$(document).ready(function(){
		
	$("form").submit(function(){
		
		if($("#name").val() == ""){
			alert("이름을 입력");
			$("#name").focus();
			return false;
		}
		if($("#pw").val() == ""){
			alert("비밀번호 입력");
			$("#pw").focus();
			return false;
		}
		
	});
});