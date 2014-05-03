$(document).ready(function() {
  Map.init();
});

var Map = {
  init: function(){
    $('#map').vectorMap({map: 'us_aea_en'});
    // Event handler for clicking a state:
    $('#map').bind('regionClick.jvectormap', function(event, code) {
      Search.getStateSprings(code);
    });
  }
}