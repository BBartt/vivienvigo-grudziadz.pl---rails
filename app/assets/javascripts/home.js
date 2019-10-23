$(document).ready(function(){
  let $navHeight = $("nav").height();
  const $nav = $("nav");

  $('a[href*=\\#]:not([href=\\#])').bind('click', function(e) {
		e.preventDefault();
		let target = $(this).attr("href");
		$('html, body').stop().animate({
			scrollTop: $(target).offset().top - $navHeight
		}, 600);
		return false;
	});

  $(window).scroll(function() {
  	let scrollDistance = $(window).scrollTop();
  	$('.page-section').each(function(i) {
  		if ($(this).position().top <= scrollDistance + $navHeight + 5) {
  			$('nav a.active').removeClass('active');
  			$('nav a').eq(i).addClass('active');
  		}else if(scrollDistance < 300){
        $('nav a.active').removeClass('active');
      }
  	});
  }).scroll();

  $('#my-tab').tabSlideOut({ tabLocation: 'left', offset: '150px' });
  $(".logo").on('click', function(){ $('html, body').animate({ scrollTop: 0 }, 800); });
  $(window).on('scroll', function(){ $(this).scrollTop() > 200 ? $nav.addClass('scroll') : $nav.removeClass('scroll'); });

  if( $(window).width() < 1030 ){
    $('.burger, ul li a').on('click', function(){
      $('.burger, ul').toggleClass('active');
    });
  }

});
