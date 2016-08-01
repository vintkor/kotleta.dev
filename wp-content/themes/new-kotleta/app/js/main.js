// Видео фон
$(document).ready(function() {
    $('#my-video').backgroundVideo({
        pauseVideoOnViewLoss: false
    });

    /*Анимация при наведении на логотип*/

    $('.logo').hover(function(){
    	$(this).addClass('tada animated');
    });
    $('.logo').mouseout(function(){
    	$(this).removeClass('tada animated');
    });

    $('.menu-item-has-children').hover(function(){
        $('.sub-menu').css('display', 'block');
    });
    $('html').click(function(){
        $('.sub-menu').css('display', 'none');
    });

});

/* Плавная раскрытие изображения в хедере когда страница загрузилась */
var headerImg = $('.header-img').ready(),
    homePage = $('body').hasClass('page-template-home-page');

if (!headerImg) {  

    $('.header-wrap').css({
        'height' : '111px'
    });

    $('.header-img').css({
        'height' : '0'
    });  

} else {    

    if(!homePage){
        $('.logo').addClass('animated flip infinite')

        $('.header-wrap').animate({
            'height' : '600px'
        }, 3000);

        $('.header-img').animate({
            'height' : '600px'
        }, 3000, function(){

            $('.logo').removeClass('animated flip infinite');

        });  
    };

}


// Липкое меню
var options = {
  offset: 600
}

var header = new Headhesive('.top-nav', options);
