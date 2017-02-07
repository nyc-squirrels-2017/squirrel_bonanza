$(document).ready(function() {

  // $('#show-form').on('click', function(e){
  //   e.preventDefault();
  //   $.ajax({
  //     url: $(e.target).attr('href'),
  //     method: 'get'
  //   }).success(function(response){
  //     $('.form').html(response);
  //   }).fail(function(error, text, status){
  //
  //     console.log(error);
  //   })
  // })


  $('#form').on('submit', function(e){
    e.preventDefault();
    // debugger
    $.ajax({
      url: $(e.target).attr('action'),
      method: 'post',
      data: $(e.target).serialize()
    }).success(function(response){
      console.log(response)
      // With JSON
      var newElement = $('.one_squirrel').first().clone()
      newElement.children().first().text(response.name)
      newElement.find('a').first().attr('href', "/squirrels/"+response.id)
      newElement.find('a').last().attr('href', "/squirrels/"+response.id+"/edit")
      $('.all-squirrels').append(newElement)
      // Without JSON
      // $('.all-squirrels').append(response)
    }).fail(function(error){

    })
  })
});
