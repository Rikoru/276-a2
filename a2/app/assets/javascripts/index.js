/* Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/ */
$(window).on("page:change", function(){

$('.none').jrumble({
  x: 3,
  y: 3,
  rotation: 2,
  speed: 50
});

$('.some').jrumble({
  x: 2,
  y: 2,
  rotation: 1,
  speed: 100
});

$('.very').jrumble({
  x: 1,
  y: 1,
  rotation: 0,
  speed: 200
});

$('.none, .some, .very').hover(function() {
  $(this).trigger('stopRumble');
}, function() {
  $(this).trigger('startRumble');
});

$('.none, .some, .very').trigger('startRumble');

});
