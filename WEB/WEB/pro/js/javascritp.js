$(document).on("ready", main);

function main(){
	$("#Menu a").on("click",irA);
}
function irA(){
	var seccion = $(this).attr("href");
	$("body, html").animate({

		scrollTop: $(seccion).offset().top -130	
	},800);
		return false;		
}