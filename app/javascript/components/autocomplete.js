function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var spotAddress = document.getElementById('spot_address');

    if (spotAddress) {
      var autocomplete = new google.maps.places.Autocomplete(spotAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(spotAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
