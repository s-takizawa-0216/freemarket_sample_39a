$(document).on('turbolinks:load', function() {
  $(function(){
    var swiper = new Swiper('.swiper-container', {
    loop: true,
    pagination: '.swiper-pagination',
    nextButton: '.swiper-button-next',
    prevButton: '.swiper-button-prev'
    });
  }, false);
})
