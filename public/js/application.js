$(document).ready(function() {
  var count = 3
  $('.choices').on('click',".add", function(e){
    e.preventDefault();
    $(this).hide();
    $('.choices').append("<p class='option'><input type='string' name='choices[" + count + "]' placeholder='Choice here'><a class='add' href='#'>Add Choice</a></p>");
    count++
  });
});
