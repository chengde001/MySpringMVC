<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="text" id="A" /> 	×　	<input type="text" id="B" onblur= "cal()"/>　＝ <p id="C"></div>
	<br />
	<input type="button" id="btn"/>
	
	<script type="text/javascript">
		function cal(){
			var A = document.getElementById("A").value;
			var B = document.getElementById("B").value;
			document.getElementById("C").innerHTML=A*B;
		}
	</script>
</body>
</html>