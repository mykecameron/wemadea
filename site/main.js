$(document).ready(function(){
  var setImage = function(image) {
    $('#image-container').css({
      'background-image': "url('images/" + image + "')"
    });
  }

  $('#image-controls li').on('click', function(event) {
    var image = $(event.target).data('image');
    setImage(image);
  });
});
