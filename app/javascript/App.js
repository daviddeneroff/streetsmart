
$(document).ready(function () {
  $('.filters .apply-filters').on('click', function (e) {
    e.preventDefault();
    $('tbody tr').removeClass('hidden');

    var submarket = $('#submarket').val().length > 0 ? "submarket" : false;
    var retail_type = $('#retail_type').val().length > 0 ? "retail_type" : false;
    var retailer_footprint = $('#retailer_footprint').val().length > 0 ? "retailer_footprint" : false;
    var occupancy_status = $('#occupancy_status').val().length > 0 ? "occupancy_status" : false;
    var class_mix = $('#class_mix').val().length > 0 ? "class_mix" : false;
    var bbl = $('#bbl').val().length > 0 ? "bbl" : false;

    var arr = [submarket, retail_type, retailer_footprint, occupancy_status, class_mix, bbl];
    var activeArr = []

    $.each(arr, function(key,value) {
      if (value) {
        activeArr.push(value)
      }
    });

    $.each( $('tbody tr'), function( key, value ) {
      var self = this;
      for (var i = 0; i < activeArr.length; i++) {
        if (!($(self).data(activeArr[i]).toLowerCase() == $('#' + activeArr[i]).val().toLowerCase())) {
          $(self).addClass('hidden');
        }
      };
    });
  })

  $('.reset-search').click(function (e) {
    e.preventDefault();
    $('tbody tr').removeClass('hidden');
  })
});



// var markers = [];

// function initMap() {
//   var manhattan = {lat: 40.7831, lng: -73.9712, info: "riva"};
//   map = new google.maps.Map(document.getElementById('map'), {
//     zoom: 15,
//     center: manhattan
//   });
//   // addMarker(manhattan);
// }

// function addMarker(location) {
//   var marker = new google.maps.Marker({
//     position: location,
//     map: map
//   });
//   markers.push(marker);
//   var content = "Location Info or nada: " + (location.info || "");
//   var infowindow = new google.maps.InfoWindow()

//   google.maps.event.addListener(marker,'click', (function(marker,content,infowindow){
//     return function() {
//        infowindow.setContent(content);
//        infowindow.open(map,marker);
//     };
//   })(marker,content,infowindow));
// }

// function setMapOnAll(map) {
//   for (var i = 0; i < markers.length; i++) {
//     markers[i].setMap(map);
//   }
// }

// function clearMarkers() {
//   setMapOnAll(null);
// }

// function showMarkers() {
//   setMapOnAll(map);
// }

// function deleteMarkers() {
//   clearMarkers();
//   markers = [];
// }

// function addInfoWindows(marker) {
// }


// $(document).ready(function () {
//   var activeLocations = [];
//   // apply filters event
//   $('.standin').on('click', function (e) {
//     // create array of results from filters
//     var nyc = {lat: 40.7831, lng: -73.9712, info: 'sahhhh'};
//     // iterate, then add marker for each
//     addMarker(nyc);
//   });

//   $('.section .title').on('click', function (e) {
//     $target = $(e.currentTarget);
//     $target.parent().toggleClass('active');
//   });
// });