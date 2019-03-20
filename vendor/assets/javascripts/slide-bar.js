//HERO SLIDER PROGRESS BAR
$(document).ready(function(){
	var percent = 0,
	interval = 50//it takes about 8s, interval=20 takes about 4s
	$bar = $('#progress-bar'),
	$crsl = $('#hero-slider');
	$('.carousel-indicators li, .carousel-control').on('click', function (){$bar.css({width:0.5+'%'});});
	/*line above just for showing when controls are clicked the bar goes to 0.5% to make more friendly, 
	if you want when clicked set bar empty, change on width:0.5 to width:0*/
	$crsl.carousel({//initialize
		interval: false,
	}).on('slide.bs.carousel', function (){percent = 0;});//This event fires immediately when the bootstrap slide instance method is invoked.
	function progressBarCarousel() {
		$bar.css({width:percent+'%'});
		percent = percent +0.5;
		if (percent>=100) {
			percent=0;
			$crsl.carousel('next');
		}
	}
	var barInterval = setInterval(progressBarCarousel, interval);//set interval to progressBarCarousel function
	if (!(/Mobi/.test(navigator.userAgent))) {//tests if it isn't mobile
	}
});