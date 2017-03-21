$(document).ready(function() {
	$("#test_button").click(function () {
		$("#jquerytest").html("Testing, testing!");
	});
	$(".trigger").click(function(){
			$(".overlay").fadeToggle();
	});
	$("div > p").mouseover(function(){
			$("div > p").slideUp();
	});
	$("#return").click(function(){
			$("div > p").slideDown();
	});
});

