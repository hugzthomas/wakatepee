$(document).ready(function(){
    $('.display-comment').click(function(event) {
      $('.submilestone-card').css('border', 'none');
      // $(this).parent().parent().parent().css('border', '1px solid #FD7F6B');
      var id = $(this).attr("data-target");
      $('.card-comment').addClass('hidden');
      // console.log(id);
      // $(this).next('.card-comment').toggle('show');
      $(id).removeClass('hidden')
    });
});
