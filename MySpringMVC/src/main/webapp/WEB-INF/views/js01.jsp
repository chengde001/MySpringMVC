<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Script-Type" content="text/javascript">
	<script type="text/javascript" src="resources/js/js001.js"></script>
	<title>javascript study 01</title>
</head>
<body>
	<script type="text/javascript">
		document.write("hello world !");
	</script>
	<noscript>
		Your browser doesn't support or has disabled JavaScript
	</noscript>
	<br />
	<script>
		n = '838102050'        // Set 'n' to a string
		document.write("n = '838102050'  // Set 'n' to a string" + '<br />')
		document.write('n = ' + n + ', and is a ' + typeof n + '<br />')
		document.write('\n');
		n = 12345 * 67890;     // Set 'n' to a number
		document.write("n = 12345 * 67890; // Set 'n' to a number" + "<br />")
		document.write('n = ' + n + ', and is a ' + typeof n + '<br />')
		
		n += ' plus some text' // Change 'n' from a number to a string
		document.write("n += ' plus some text' // Change 'n' from a number to a string" + "<br />")
		document.write('n = ' + n + ', and is a ' + typeof n + '<br />')
		if (typeof n != "undefined") document.write('n = "' + n + '"<br />')
		delete n
		if (typeof n == "undefined") document.write('n is deleted')
	</script>
</body>
</html>