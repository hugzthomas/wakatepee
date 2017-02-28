$(document).ready(function(){
  if ($(".projectshow").length) {
  var tour;
  tour = new Shepherd.Tour({
    defaults: {
      classes: 'shepherd-theme-arrows'
    }
  });

  tour.addStep('step-1', {
    title: 'Example Shepherd',
    text: 'Welcome to your new project ...',
    attachTo: '#hero-example bottom',

    // advanceOn: '.docs-link click'
  });

  tour.addStep('step-2', {
    title: 'Autre',
    text: 'Welcome to your new project ...',
    attachTo: '#deudeu right',
    scrollTo: true

    // advanceOn: '.docs-link click'
  });

  tour.start();
}
});

