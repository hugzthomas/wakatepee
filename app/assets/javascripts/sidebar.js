$(document).ready(function(){
  $('.tab').click(function(){
    $('.tab-content').addClass('hidden');
    $('.tab').removeClass('active');
    $(this).addClass('active');
    var tabContentID = $(this).data('target');
    $(tabContentID).removeClass('hidden');
    history.pushState(null, null, tabContentID);
  });

  $('.tab[data-target="' + window.location.hash + '"]').click();

});
