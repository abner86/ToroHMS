/**
 * Created by abner on 11/22/14.
 */
//jQuery time

$(document).ready(function(){
    var current_fs, next_fs, previous_fs; //fieldsets
    var left, opacity, scale; //fieldset properties which we will animate
    var animating; //flag to prevent quick multi-click glitches

    //this assigns a price value to each selection of room type in order
    //to make calculations for total price for booking a room
    var Rprices = [];
    Rprices["single"] = 65.00;
    Rprices["double"] = 100.00;
    Rprices["suite"] = 120.00;
    var roomPrice = 0;
    var start;
    var ends;
    var bForm = document.forms["msform"];
    var selectType = bForm.elements["RoomType"];

    //input/saving data for the next form
    $(".next").click(function(){
        if(animating) return false;
        animating = true;

        current_fs = $(this).parent();
        next_fs = $(this).parent().next();

        //activate next step on progressbar using the index of next_fs
        $("#progress_bar").find("li").eq($("fieldset").index(next_fs)).addClass("active");

        //show the next fieldset
        next_fs.show();
        //hide the current fieldset with style
        current_fs.animate({opacity: 0}, {
            step: function (now) {
                //as the opacity of current_fs reduces to 0 - stored in "now"
                //1. scale current_fs down to 80%
                scale = 1 - (1 - now) * 0.2;
                //2. bring next_fs from the right(50%)
                left = (now * 50)+"%";
                //3. increase opacity of next_fs to 1 as it moves in
                opacity = 1 - now;
                current_fs.css({'transform': 'scale('+scale+')'});
                next_fs.css({'left': left, 'opacity': opacity});
            },
            duration: 800,
            complete: function(){
                current_fs.hide();
                animating = false;
            },
            //this comes from the easing plugin
            easing: 'easeInOutBack'
        });
        //this will calculate the date differences in days
        start = $('#checkin').val();//grabbing date value for checkout
        ends = $('#checkout').val();//grabbing date value for checkin
        var start_date = new Date(start);//variable with an initialization for a new date
        var end_date = new Date(ends);//same as above code
        var diff = end_date.getDate() - start_date.getDate();//subtracting checkin and checkout to get the differences
        //roomPrice = price inserted into selection type(Single = 65, Double = 100, Suite = 120)
        roomPrice = Rprices[selectType.value];//roomPrice = the price for each type of room
        var SubTotal = roomPrice * diff;//subtotal for room booking without taxes
        var tax = SubTotal * .09;//this calculates the total tax for room. taxing customer 9%
        var Total = (tax + SubTotal).toFixed(2);

        //preparing form5
         fields = [$('#FirstName').val() + ' ' + $('#LastName').val(),
            $('#phone').val(),
            $('#email').val(),
            $('#StreetAddress').val(),
            $('#City').val(),
            $('#state').val(),
            $('#zip').val(),
             start,
             ends,
            $('#RoomType').val(),
             $('#NumOfPeople').val(),
             document.getElementById("total").value = Total];

        //this will input all the information to form 5 for staff/customer review
        var tr = $("#form5 tr");
        tr.each(function () {
            $(this).children('td:nth-child(2)').html(fields[$(this).index()]);
        });
    });

    $(".previous").click(function(){
        if(animating) return false;
        animating = true;

        current_fs = $(this).parent();
        previous_fs = $(this).parent().prev();

        //de-activate current step on progressbar
        $("#progress_bar li").eq($("fieldset").index(current_fs)).removeClass("active");

        //show the previous fieldset
        previous_fs.show();
        //hide the current fieldset with style
        current_fs.animate({opacity: 0}, {
            step: function (now) {
                //as the opacity of current_fs reduces to 0 - stored in "now"
                //1. scale previous_fs from 80% to 100%
                scale = 0.8 + (1 - now) * 0.2;
                //2. take current_fs to the right(50%) - from 0%
                left = ((1-now) * 50)+"%";
                //3. increase opacity of previous_fs to 1 as it moves in
                opacity = 1 - now;
                current_fs.css({'left': left});
                previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
            },
            duration: 800,
            complete: function(){
                current_fs.hide();
                animating = false;
            },
            //this comes from the custom easing plugin
            easing: 'easeInOutBack'
        });
    });

    $(".submit").submit(function(){
        //send information to server/database
        alert('Your Room has been Reserved');
    });
});