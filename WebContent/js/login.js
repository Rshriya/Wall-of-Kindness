$(function() {
  $('<img/>').attr('src', 'https://www.todaysparent.com/wp-content/uploads/2011/12/givingback-tpt-dec2011-istockphoto.JPG').load(function() {
    $('.bg-img').append($(this));
    // simulate loading
    setTimeout(function() { 
     $('.container').addClass('loaded'); 
    }, 1500)
   //$(this).remove(); // prevent memory leaks as @benweet suggested
  });
  $('.form-toggle').on('click', function() {
    $('.container').toggleClass('show-register')
  })
})