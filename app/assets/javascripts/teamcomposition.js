$(document).ready(function() {
  $( ".teamember" ).mouseover(function() {
    $( ".userteam" ).removeClass( "hidden" );
  });

  $( ".teamember" ).mouseout(function() {
    $( ".userteam" ).addClass( "hidden" );
  });

  $( ".teamember" ).click(function() {
    $( this ).toggleClass( "teamemberselected" );
  });

  $( ".teamember" ).click(function() {
    var Id = $(this.id);
    var Idmember = Id.selector;
    var membersfinal = $("#allmembers").val();
    console.log(membersfinal)
    $("#allmembers").val(membersfinal + (Idmember + ", "));
    // $( this ).('<input type="textarea" style="width:50px">');
    console.log(Idmember)
  });


});
