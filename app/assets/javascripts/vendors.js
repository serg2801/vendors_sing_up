$(document).ready(function(){

    $(".company_check_box .checkbox-custom").click(function () {
        if ($('label:contains("RETAILER")').siblings("input").prop("checked") | $('label:contains("CONTRACT")').siblings("input").prop("checked")) {
            $(".sub_options_js").show();
        } else {
            $(".sub_options_js").hide();
            document.getElementById("dropship_e_commerce").checked = false;
            document.getElementById("stocking_dealer").checked = false;
            document.getElementById("non_stocking_dealer").checked = false;
        }
    });

});
