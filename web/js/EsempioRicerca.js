/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function () {
    $("#filter").keyup(function () {

        // Retrieve the input field text and reset the count to zero
        var filter = $(this).val(), count = 0;
        if (!filter) {
            $(".commentlist li").hide();
            return;
        }

        var regex = new RegExp(filter, "i");
        // Loop through the comment list
        $(".commentlist li").each(function () {

            // If the list item does not contain the text phrase fade it out
            if ($(this).text().search(regex) < 0) {
                $(this).hide();

                // Show the list item if the phrase matches and increase the count by 1
            } else {
                $(this).show();
                count++;
            }
        });

        // Update the count
        var numberItems = count;
        $("#filter-count").text("Number of Comments = " + count);
    });
});

