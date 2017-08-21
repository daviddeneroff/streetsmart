$(document).ready(function () {
  $('#search-bbl').click(function (e) {
    var inputVal = $('#input').val();
    $('tbody tr').addClass('hidden');

    $.each( $('tbody tr'), function( key, value ) {
      if ($(this).data('bbl') == inputVal) {
        $(this).removeClass('hidden');
      }
    });
  });

  $('.reset-search').click(function (e) {
    e.preventDefault();
    $('tbody tr').removeClass('hidden');
  })
});
