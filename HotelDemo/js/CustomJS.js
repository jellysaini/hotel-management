$(document).ready(function () {
    setTimeout(executeQuery, 5000);
    $.ajax({
        type: "POST",
        url: "HotelService.asmx/GetCount",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: OnSuccess,
        failure: function (response) {

        }
    });
});


function executeQuery() {

    $.ajax({
        type: "POST",
        url: "HotelService.asmx/GetCount",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: OnSuccess,
        failure: function (response) {

        }
    });


    setTimeout(executeQuery, 5000);
}

function OnSuccess(response) {
    $("#lblCount").text(response.d);
}
