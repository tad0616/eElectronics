jQuery(document).ready(function($){

    // jQuery sticky Menu

	$(".mainmenu-area").sticky({topSpacing:0});


    // Bootstrap ScrollPSY
    $('body').scrollspy({
        target: '.navbar-collapse',
        offset: 95
    })
});

