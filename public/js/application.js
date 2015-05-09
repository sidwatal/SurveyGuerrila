$(document).ready(function() {
  $('.choices').on('click',".add", function(e){
    e.preventDefault();
    $(this).hide();
    $('.choices').append("<p class='option'><input type='string' name='choice' placeholder='Choice here'><a class='add' href='#'>Add Choice</a></p>");
  });
});
