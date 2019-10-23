<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>MainPage</title>
<script type="text/javascript" src="<%=application.getContextPath()%>/resources/js/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=application.getContextPath()%>/resources/bootstrap-4.3.1-dist/css/bootstrap.min.css">
<script type="text/javascript" src="<%=application.getContextPath()%>/resources/bootstrap-4.3.1-dist/js/bootstrap.min.js"></script>

<style type="text/css">
html, body {
	
	background-color: #3399ff;
}

#content {
	border: 1px solid black;
	width:50;
	height:200;
	font-family: verdana;
	font-size: 100%
	
}

</style>

<script type="text/javascript">
	function checkForm() {
		
		var result = true;
		
		$(".error").text("");
		
		if($("#mid").val() == "") {
			$("#midError").text("ID를 입력하세요");
			result = false;
			
		}
		
		if($("#mpassword").val() == "") {
			$("#mpasswordError").text("비밀번호롤 입력하세요");
			result = false;
			
		}
		
		return result;
	}





</script>





</head>

<body>

	<div id="wrapper">

		<div id="content">
			<div id="center">
			
			<form method="post" action="login" onsubmit="return checkForm()">
				<div class="form-group">
					<label for="mid">아이디</label>
					<input type="text" class="form-control" id="mid" name="mid"
						placeholder="아이디를 입력하세요"> 
						<span id="midError" class="error" style="color: red"></span>
				</div>
				<div class="form-group">
					<label for="mpassword">비밀번호</label>
					<input type="password" class="form-control" id="mpassword" name="mpassword"
						placeholder="비밀번호를 입력하세요">
						<span id="mpasswordError" class="error" style="color: red"></span>
						
				</div>
				
				<div class="form-group">
				
				<input type="submit" class="btn btn-primary" value="로그인"/>
				<input type="submit" class="btn btn-success" value="회원가입"/>
				
				</div>
			</form>
			</div>

		</div>


	</div>

	

</body>
</html>