$(document).ready(function () {

	$('#container').multiscroll({
    	easing: 'easeOutBack',
    	scrollingSpeed: 1000,
    	afterLoad: function(anchorLink, index){
    		$('.pager .active').text(index);
    	}
    });
    
});
