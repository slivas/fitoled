$(document).ready(function () {

	$(".main-slider__wrapper").slick({
		slidesToShow: 1,
		arrows: true,
		dots: true,
		autoplay: false,
  		autoplaySpeed: 10000,
		fade: true,
        infinite: true
        // prevArrow: '<div class="slick-prev"></div>',
        // nextArrow: '<div class="slick-next"></div>'
	});
	$('.why__slider').slick({
        autoplay: false,
        autoplaySpeed: 6000,
		arrows: false,
        variableWidth:false,
        slidesToShow: 3,
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 1
                }
            }]
	});
	$('.clients__slider').slick({
		arrows: true,
        prevArrow: '<i class="fa fa-angle-left slick-prev" aria-hidden="true"></i>',
        nextArrow: '<i class="fa fa-angle-right slick-next" aria-hidden="true"></i>',
		infinite: true,
		slidesToShow: 6,
		dots: false,
        responsive: [
            {
                breakpoint: 992,
                settings: {
                    slidesToShow: 5
                }
			},
			{
                breakpoint: 768,
                settings: {
                    slidesToShow: 4
                }
			},
			{
                breakpoint: 640,
                settings: {
                    slidesToShow: 3
                }
			},
			{
                breakpoint: 480,
                settings: {
                    slidesToShow: 1
                }
            }]
	});
    if ($(window).width() < 768) {

        $('.hamb').on('click', function(){
            $(this).toggleClass('open');
            $('.header__menu').toggleClass('open');
        });
		$('.has-child').on('click', function () {
			$('.has-child > .submenu').toggleClass('open');
        });
	};

    $('.tabs__nav').on('click', 'li:not(.active)', function() {
        $(this)
            .addClass('active').siblings().removeClass('active')
            .closest('.tabs').find('.tabs__content').removeClass('active').eq($(this).index()).addClass('active');
    });

    $('a[href^="#"]').on('click', function(event){
        event.preventDefault();
        var id = $(this).attr('href');
        $('html, body').animate({
            scrollTop: $(id).offset().top
        }, 1000);
    });

    $('.popup .close, .overlay').click(function (){
        $('.popup, .overlay').css({'opacity': 0, 'visibility': 'hidden'});
        $('body').css({'overflow': 'visible'});
    });

    $('.popup-open').click(function (e){
        $('.overlay, #callback').css({'opacity': 1, 'visibility': 'visible', 'display': 'block' });
        $('body').css({'overflow': 'hidden'});
        e.preventDefault();
    });

    $('.nav-icon').click(function(){
        $(this).toggleClass('open');
        $('.header__right').toggleClass('open');
        $('body').toggleClass('hidden');
    });

    $('.nav-list li').click(function(){
        $('.nav-list li').removeClass('active');
        $(this).addClass('active');
    });

    $('.overlay').click(function () {
       $('.nav-icon, .header__right').removeClass('open');
       $('body').removeClass('hidden');
    });

    $('.tabs__nav .tabs__item:first-of-type, .tabs__content:first-of-type').addClass('active');

});

$(window).scroll(function() {
    var scroll = $(window).scrollTop();
    if (scroll > 0) {
        $(".wrapper").addClass("scroll");
    }
    else {
        $('.wrapper').removeClass("scroll");
        $('.nav-list li').removeClass('active');
    }
});