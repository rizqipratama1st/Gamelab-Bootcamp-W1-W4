function tampildata() {
  $.ajax({
    url: "https://api.sampleapis.com/codingresources/codingResources",
    method: "GET",
    dataType: "json",
    success: function (result) {
      console.log(result);
      
      /* sampai sini harus dimasukan kedalam variable dulu*/
      
      event_data = '';
      $.each(result, function (i, data) { 
         event_data += "<tr>";
         event_data += "<td>" + data.id + "</td>";
         event_data += "<td>" + data.description + "</td>";
         event_data += "<td>" + data.levels + "</td>";
         event_data += "<td style='max-width: 600px !important;''>" + data.url + "</td>";
         event_data += "</tr>";
      });

      $("#penampung_data").append(event_data);
    },
  });
};


tampildata();