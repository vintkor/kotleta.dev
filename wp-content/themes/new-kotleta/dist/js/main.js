// Видео фон
$(document).ready(function() {
    $('#my-video').backgroundVideo({
        pauseVideoOnViewLoss: false
    });
});

// Липкое меню
var options = {
  offset: 600
}

var header = new Headhesive('.top-nav', options);


