$(document).ready(function(){
    $('.display-comment').click(function(event) {
      $('.card-comment').hide();
      $(this).next('.card-comment').toggle('show');
    });

});
