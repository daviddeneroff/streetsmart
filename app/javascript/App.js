$(document).ready(function () {
  $('.populate').click(function (e) {
    e.preventDefault();
    var url = "http://localhost:3000/premises"
    $.ajax({
      type: 'get',
      url: url,
      success: function (response) {
        // $('h1').after(response);
      }
    });
    // ajax for bbl - custom get request route with all objects with input bbl
    // display on page
    // use btn to populate form
    console.log($('#populate-bbl').val());
  });
});
