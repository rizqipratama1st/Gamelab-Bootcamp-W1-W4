
// fade in dan fade out

$(document).ready(function () {
  $(".btn1").click(function () {
    $("p").fadeOut();
  });
  $(".btn2").click(function () {
    $("p").fadeIn();
  });
});

// slide up dan slide down
$(document).ready(function () {
  $(".btn3").click(function () {
    $("p").slideUp();
  });
  $(".btn4").click(function () {
    $("p").slideDown();
  });
});

// fade toggle
$(document).ready(function () {
  $("button").click(function () {
    $("#1").fadeToggle();
    $("#2").fadeToggle("slow");
    $("#3").fadeToggle(3000);
  });
});