$(document).ready(function () {
  $("#bt1").click(function () {
    $("p").removeClass("intro");
  });
});

$(document).ready(function () {
  $("#bt2").click(function () {
    $("p:first").addClass("intro");
  });
});


$(document).ready(
  function () {
    $('#bt3').click(
      function () {
        $("h1").remove();
      }
    )
  }
);

$(document).ready(function () {
  $("#bt4").click(function () {
    $("#gantiSaya").html("<p>Saya terubah</p>");
  });
});
;

$(document).ready(function () {
  $("#bt5").click(function () {
    $("#gantiSaya").text("<p>Saya terubah, sayanganya saya bukan html() method</p>");
  });
});
;