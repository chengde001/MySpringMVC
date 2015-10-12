<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css">
	<link href="resources/css/text.css" rel="stylesheet" type="text/css">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td><input type="button" value="隐藏计算式" class="buttonClass" id="aaa"
				onclick="document.getElementById('caltbl').style.visibility='hidden'" />
			</td>
			<td><input type="button" value="显示计算式"
				onclick="document.getElementById('caltbl').style.visibility='visible'" />
			</td>
		</tr>
		<tr>
			<td><input type="button" value="隐藏div"
				onclick="document.getElementById('container').style.visibility='hidden'" />
			</td>
			<td><input type="button" value="显示div"
				onclick="document.getElementById('container').style.visibility='visible'" />
			</td>
		</tr>
		<tr>
			<td><input type="button" value="スタイル変更"
				onclick="document.getElementById('label001').style.color='blue'" />
			</td>
			<td>
				<label class="mylabel" id="label001"><b>色が変わります。</b></label>
			</td>
		</tr>
		
	</table>
	<table width="500" class="table" id="caltbl">
		<tr height="20">
			<td><input type="text" id="A" /></td>
			<td>×</td>
			<td><input type="text" id="B" onblur= "cal()" /></td>
			<td>＝</td>
			<td width=100><p id="C"></td>
		</tr>
	</table>

	<div id="container">
		<div id="header">
			<h1>Main Title of Web Page</h1>
		</div>
		<div id="menu">
			<h2>Menu</h2>
			<ul>
				<li>HTML</li>
				<li>CSS</li>
				<li>JavaScript</li>
			</ul>

		</div>
		<div id="content">Content goes here
			<dl>
				<dt>HTML</dt>
				<dd>HyperText Markup Language（ハイパーテキスト マークアップ ランゲージ）、略記・略称HTML（エイチティーエムエル）とは、ウェブ上の文書を記述するためのマークアップ言語である。 文章の中に記述することでさまざまな機能を記述設定することができる。</dd>
				<dt>CSS</dt>
				<dd>CSS（Cascading Style Sheets、カスケーディング・スタイル・シート）とは、ウェブページのスタイルを指定するための言語です。</dd>
				<dt>JavaScript</dt>
				<dd>JavaScript（ジャヴァスクリプト）とは、プログラミング言語のひとつである。 </dd>
			</dl>
		
		</div>
		<div id="footer">Copyright W3School.com.cn</div>
	</div>

	<script type="text/javascript">
		function cal(){
			var A = document.getElementById("A").value;
			var B = document.getElementById("B").value;
			document.getElementById("C").innerHTML=A*B;
		}
	</script>
</body>
</html>