$(document).ready(function(){
    $("#submit_form").on("click",function(){
        if (($("input[name_company*='checkbox_company']:checked").length)<=0) {
            alert("You must check the options that describe your business");
            return false;
        }
        return true;
    });

    $("#submit_form").on("click",function(){
        if (($("input[name*='agree']:checked").length)<=0) {
            alert("You have reviewed, understand and agree to the terms of the Arbor Gentry Mutual Non-Disclosure Agreement");
            return false;
        }
        return true;
    });
});
