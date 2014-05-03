$(document).ready(function() {
  Map.init();
});

var Map = {
  init: function(){
    $('#map').vectorMap({map: 'us_aea_en'});
  }
}