$(document).ready(function(){
    //$("#submit_form").on("click",function(){
    //    if (($("input[name_company*='checkbox_company']:checked").length)<=0) {
    //        $('.company_check_box').css('border', 'solid red');
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
});
