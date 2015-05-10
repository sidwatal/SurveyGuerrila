$(document).ready(function() {
  var count = 3
  $('.add').on('click', function(e){
    e.preventDefault();
    $('.choices').append("<p class='option'><input type='string' name='choices[" + count + "]' placeholder='Choice here'><a class='remove' href='#'>Remove Choice</a></p>");
    count++
  });
  $('.choices').on('click', '.remove', function(e){
    e.preventDefault();
    $(this).closest('p').remove();
  });

  $('.remove_survey').on('submit', deleteSurvey)

});

var postUrl = function(url){
  $.post(url,function(){
    window.location = '/'
  });
}

var deleteSurvey = function(e){
  e.preventDefault();

  $.ajax({
    url: e.target.action,
    method: 'delete',
  }).done(function(response){
    $(e.target).parent().remove();
  }).error(function(error){
    console.log(error);
  });

}
