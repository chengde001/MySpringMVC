/**
 * 
 */
function test001() {

	var t = $("#item1").text();
	//alert(t);
	$("#item1").remove();
	$(".item1").remove();
	$("div").text($("div").text() + t);
	document.write("aaaaa");
}

