$('button').click(function () {
    var countryName = $('input').val().toLowerCase();

    $.ajax({
        url: "https://covid-193.p.rapidapi.com/statistics",
        method: "GET",
        data: {
            country: countryName,
        },
        Headers: {
            "X-RapidAPI-Host": "covid-193.p.rapidapi.com",
            "X-RapidAPI-Key": "bf981def12msh6bb98945fd6c7f9p1e00b2jsn0e170355106a",
        },

        success: function (res) {
            console.log(res);
            var data = res.response[0].cases;
            
            $('.active-case').text(data.active);
            $(".critical-case").text(data.critical);
            $(".new-case").text(data.new);
            $(".recovered").text(data.recovered);

            var newCountryName = countryName.charAt(0).toUpperCase() + countryName.slice(1);
            $('.nama-negara').text(newCountryName);

            $('card-statistik').show();
        }
    });
});