$(document).ready(function(){
    //$("#submit_form").on("click",function(){
    //    if (($("input[name_company*='checkbox_company']:checked").length)<=0) {
    //        $('.company_check_box').css('border', 'solid red');
    //        //alert("You must check the options that describe your business");
    //        return false;
    //    }
    //    $('.company_check_box').css('border', 'none');
    //    return true;
    //});

    $("#submit_form").on("click",function(){
        if (($("input[name*='agree']:checked").length)<=0) {
            $('.agree_checkbox').css('border', 'solid red');
            return false;
        }
        $('.agree_checkbox').css('border', 'none');
        return true;
    });

    $( "#show_order_js" ).click(function(e) {
        e.preventDefault();
        $( "#contact_order_js" ).toggle();
    });

    $( "#show_inventory_js" ).click(function(e) {
        e.preventDefault();
        $( "#contact_inventory_js" ).toggle();
    });

    $( "#show_return_js" ).click(function(e) {
        e.preventDefault();
        $( "#contact_return_js" ).toggle();
    });

    $( "#show_information_js" ).click(function(e) {
        e.preventDefault();
        $( "#contact_information_js" ).toggle();
    });

    $( "#show_service_js" ).click(function(e) {
        e.preventDefault();
        $( "#contact_service_js" ).toggle();
    });

});
