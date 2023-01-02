//Menggunakan Document ready function


// keypress : counter karakter akan bertambah
i = 0;
$(document).ready(function () {
  $("input").keypress(function () {
    $("span").text((i += 1));
  });
});

// keydown : akan membuat form input berwarna biru
$(document).ready(function () {
  $("input").keydown(function () {
    $("input").css("background-color", "blue");
  });

// keyup : warna akan berwarna kuning
  $("input").keyup(function () {
    $("input").css("background-color", "yellow");
  });
});

//mouse enter
$(document).ready(function () {
  $("div").mouseenter(function () {
    $("div").css("background-color", "blue");
  });

//mouse leave
  $("div").mouseleave(function () {
    $("div").css("background-color", "yellow");
  });
});