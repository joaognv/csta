function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var spotAddress = document.getElementById('spot_address');
    console.log(spotAddress )

    if (spotAddress) {
      var autocomplete = new google.maps.places.Autocomplete(spotAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(spotAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          console.log(e)
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
