$(document).ready(function() {
  $(".main div").hide();
  // Cache tout les textes et les sous-menu

  $(".slidebar li:first").attr("id","active");
  // Ajoute la class active au premier menu

  $(".main div:first").fadeIn();
  // Montre le premier texte à l'apparition de la page


  $('.slidebar a').click(function(e) {
      e.preventDefault();
     if ($(this).closest("li").attr("id") == "active"){
          //si le menu cliquer est déjà ouvert.
       return
     }else{
       $(".main div").hide();
          // Cache tous les éléments

        $(".slidebar li").attr("id","");
          // Rénitialise tout les menu active

        $(this).parent().attr("id","active");
          // active le parent du li selectionner

        $('#' + $(this).attr('name')).fadeIn();
          // Montre le texte
        }


  });

});
