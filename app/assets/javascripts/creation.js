$(document).ready(function() {
  $("#project_title").prop('required',true);
  $("#project_deadline").prop('required',true);
  validate();
  $(".adding").click(function(){
    $("#myModal").modal('toggle');
  });
  $(".finalizeproject").click(function(){
    $("#myModal").removeAttr('disabled');
  });



});

function validate() {

  $('#new_project input[required]').keyup(function() {
    if ($(this).val() != '') {
      $('#registered').removeAttr('disabled');
      $('.finalizeproject').removeAttr('disabled');
    }
    else {
      $('#registered').attr('disabled', 'disabled');
      $('.finalizeproject').removeAttr('disabled');
    };

  });

}
function modalClose() {
  $('#addAMilestone').modal('toggle');
}
