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
      debugger;
      console.log(response)
      $('.all-squirrels').append(response)
    }).fail(function(error){

    })
  })
});
