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
