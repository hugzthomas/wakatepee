$(document).ready(function() {
  $("#project_title").prop('required',true);
  $("#project_deadline").prop('required',true);
  validate();
  $(".adding").click(function(){
    $("#myModal").modal('toggle');
  });

});

function validate() {

  $('#new_project input[required]').keyup(function() {
    if ($(this).val() != '') {
      $('#registered').removeAttr('disabled');
    }
    else {
      $('#registered').attr('disabled', 'disabled');
    };

  });
}
