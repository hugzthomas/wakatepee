$(document).ready(function() {
  teamComposition();
});

function teamComposition() {
  $( ".teamember" ).mouseover(function() {
    $( ".userteam" ).removeClass( "hidden" );
  });

  $( ".teamember" ).mouseout(function() {
    $( ".userteam" ).addClass( "hidden" );
  });

  $( ".teamember" ).click(function() {
    $(".user-id").each(function(){
      $(this).remove();
    })
    var ids = [];
    $( this ).toggleClass( "teamemberselected" );
    $(".teamemberselected").each(function(){
      ids.push($(this).attr("id"))
    })
    console.log(ids)
    ids.forEach(function(element){
      console.log(element)
      $("#user-projects").append("<input type='hidden' class='user-id' name='user_ids[]' value='" + element + "'>" )
    })
  });
}

