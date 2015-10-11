<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="resources/js/js001.js"></script>
<title>Insert title here</title>
</head>
<body>

<p class="item1">abc</p>
<p id="item1">def</p>
<div></div>

<script>
	(function(){
		var t = document.getElementsByClassName("item1")[0].innerText;
		alert(t);
	})();
</script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script>
	test001();
</script>

</body>
</html>