// JavaScript Document
$(document).ready(function() {
	$(".group1").colorbox({rel:'group1'});
    $('.color_box1').colorbox({iframe:true, width:720, height:800, scrolling:true});
}),

$(".star_rating a").click(function(){
    $(this).parent().children("a").removeClass("on");
    $(this).addClass("on").prevAll("a").addClass("on");
    return false;
});