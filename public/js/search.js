var Search = {
  getStateSprings: function(code) {
    $('#status').html("Finding hot springs...");
    $.ajax ({
      type: 'get',
      url: '/springs',
      data: { state_code: code }
    }).done(function(response) {
      $('#results').html(response);
    }).fail(function() {
      $('#status').html("Sorry, an error occurred.");
    })
  }
}