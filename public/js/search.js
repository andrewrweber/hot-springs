var Search = {
  getStateSprings: function(code) {
    this.statusSearching();
    $.ajax ({
      type: 'get',
      url: '/springs',
      data: { state_code: code }
    }).done(function(response) {
      this.statusComplete();
      $('#results').html(response);
    }).fail(function() {
     this.statusFailure;
    })
  },

  statusSearching: function() {
    $('#status').html("Finding hot springs...");
    $('#status').css('background-color', '#7cb352');
  },

  statusComplete: function() {
    $('#status').css('background-color', '#5ca028');
  },

  statusFailure: function() {
    $('#status').html("Sorry, an error occurred.")
    $('#status').css('background-color', '#a0285b')
  }
}