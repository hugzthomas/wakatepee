$(document).ready(function() {
  // navbar transition jQuery script
  $(window).scroll(function(e){
    if ($(this).scrollTop() > 0) {
      $(".navbar-wagon-transparent").css({
        "background": "white"
      });
      $(".navbar-wagon-transparent-link").css({
        "color": "#333333"
      });
      $(".navbar-wagon-brand").css({
        "color": "#333333",
      });
      $(".dropdown-toggle").css({
        "color": "#333333",
      });
      $('.navbar-wagon-transparent').addClass('navbar-wagon');
    }
    else {
      $(".navbar-wagon-transparent").css({
        background: "transparent",
      });
      $(".navbar-wagon-transparent .navbar-wagon-transparent-link").css({
        "color": "white"
      });
      $(".navbar-wagon-brand").css({
        "color": "white",
      });
      $(".dropdown-toggle").css({
        "color": "white",
      });
      $('.navbar-wagon-transparent').removeClass('navbar-wagon');
    }
  });
});
