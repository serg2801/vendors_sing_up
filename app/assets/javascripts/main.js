$(document).ready(function(){
    $("#submit_form").on("click",function(){
        if (($("input[name_company*='checkbox_company']:checked").length)<=0) {
            $('.company_check_box').css('border', 'solid red');
            //alert("You must check the options that describe your business");
            return false;
        }
        $('.company_check_box').css('border', 'none');
        return true;
    });

    $("#submit_form").on("click",function(){
        if (($("input[name*='agree']:checked").length)<=0) {
            //alert("You have reviewed, understand and agree to the terms of the Arbor Gentry Mutual Non-Disclosure Agreement");
            $('.agree_checkbox').css('border', 'solid red');
            return false;
        }
        $('.agree_checkbox').css('border', 'none');
        return true;
    });
});
