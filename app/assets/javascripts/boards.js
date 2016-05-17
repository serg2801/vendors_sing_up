$(document).ready(function () {

    $("#add_brand_name_js").click(function (e) {
        e.preventDefault();
        $(".brand_names").prepend(
            '<div class="form-group">' +
            '<label class="col-lg-2 col-md-3 control-label">Brand Name(s):</label>' +
            '<div class="col-lg-8 col-md-9 brand_name">' +
            '<input type="brand" class="form-control">' +
            '</div>' +
            '<button type="submit" class="btn btn-danger remote_brand_name">Remove</button>' +
            '</div>');

        var brand_names = [];
        $(".brand_names .form-group").each(function () {
            this_brand_name = $(this);
            brand_names.push(this_brand_name.find('.brand_name input').val());
        });
        $(".brand_hidden").val(brand_names);

    });

    $(document).on("click", ".remote_brand_name",function(e){
        e.preventDefault();
        $(this).parents(".form-group").remove();
        var brand_names = [];
        $(".brand_names .form-group").each(function () {
            this_brand_name = $(this);
            brand_names.push(this_brand_name.find('.brand_name input').val());
        });
        $(".brand_hidden").val(brand_names);
    });



    $("#add_location_and_contact_js").click(function (e) {
        e.preventDefault();
        $(".transportation_and_shipments").append(
            '<div class="transportation_and_shipment">' +
            '<div class="panel-heading">' +
            '<h4 class="panel-title">Another Ship From Information</h4>' +
            '</div>' +
            '<div class="form-group">' +
            '<label class="col-lg-2 col-md-3 control-label">Street:</label>' +
            '<div class="col-lg-10 col-md-9">' +
            '<input type="street" class="form-control">' +
            '</div>' +
            '</div>' +

            '<div class="form-group">' +
            '<label class="col-lg-2 col-md-3 control-label">Unit, Suite, Floor:</label>' +
            '<div class="col-lg-10 col-md-9">' +
            '<input type="unit" class="form-control">' +
            '</div>' +
            '</div>' +

            '<div class="form-group">' +
            '<label class="col-lg-2 col-md-3 control-label">City:</label>' +
            '<div class="col-lg-10 col-md-9">' +
            '<input type="city" class="form-control">' +
            '</div>' +
            '</div>' +

            '<div class="form-group">' +
            '<label class="col-lg-2 col-md-3 control-label">State:</label>' +
            '<div class="col-lg-10 col-md-9">' +
            '<input type="state" class="form-control">' +
            '</div>' +
            '</div>' +

            '<div class="form-group">' +
            '<label class="col-lg-2 col-md-3 control-label">Zip/Postal Code:</label>' +
            '<div class="col-lg-10 col-md-9">' +
            '<input type="zip" class="form-control">' +
            '</div>' +
            '</div>' +

            '<div class="form-group">' +
            '<label class="col-lg-2 col-md-3 control-label">Country:</label>' +
            '<div class="col-lg-10 col-md-9">' +
            '<input type="country" class="form-control">' +
            '</div>' +
            '</div>' +

            '<div class="panel-heading">' +
            '<h4 class="panel-title">Transportation Contact</h4>' +
            '</div>' +
            '<div class="form-group">' +
            '<label class="col-lg-2 col-md-3 control-label">Name:</label>' +
            '<div class="col-lg-4 col-md-9">' +
            '<input type="name" class="form-control">' +
            '</div>' +
            '<label class="col-lg-2 col-md-3 control-label">Phone:</label>' +
            '<div class="col-lg-4 col-md-9">' +
            '<input type="phone" class="form-control">' +
            '</div>' +
            '</div>' +

            '<div class="form-group">' +
            '<label class="col-lg-2 col-md-3 control-label">Email:</label>' +
            '<div class="col-lg-4 col-md-9">' +
            '<input type="email" class="form-control">' +
            '</div>' +
            '<label class="col-lg-2 col-md-3 control-label">Fax:</label>' +
            '<div class="col-lg-4 col-md-9">' +
            '<input type="fax" class="form-control">' +
            '</div>' +
            '<button type="submit" class="btn btn-danger remote_transportation_and_shipment">Remove</button>' +
            '</div>' +
            '</div>');
    });

    $(document).on("click", ".remote_transportation_and_shipment",function(e){
        e.preventDefault();
        $(this).parents(".transportation_and_shipment").remove();
    });


    $("#add_vendor_carrier_js").click(function (e) {
        e.preventDefault();
        $(".vendor_carriers").prepend(
            '<div class="form-group">' +
            '<div class="col-lg-10 col-md-9 vendor_carrier">' +
            '<input type="vendor_carrier" class="form-control">' +
            '</div>' +
            '<button type="submit" class="btn btn-danger remote_vendor_carrier">Remove</button>' +
            '</div>');

        var vendor_carriers = [];
        $(".vendor_carriers .form-group").each(function () {
            this_vendor_carrier = $(this);
            vendor_carriers.push(this_vendor_carrier.find('.vendor_carrier input').val());
        });
        $(".vendor_carrier").val(vendor_carriers);
    });

    $(document).on("click", ".remote_vendor_carrier",function(e){
        e.preventDefault();
        $(this).parents(".form-group").remove();
        var vendor_carriers = [];
        $(".vendor_carriers .form-group").each(function () {
            this_vendor_carrier = $(this);
            vendor_carriers.push(this_vendor_carrier.find('.vendor_carrier input').val());
        });
        $(".vendor_carrier").val(vendor_carriers);
    });

    $("#add_arbor_gentry_js").click(function (e) {
        e.preventDefault();
        $(".arbor_gentries").prepend(
            '<div class="form-group">' +
            '<div class="col-lg-10 col-md-9">' +
            '<input type="arbor_gentry" class="form-control">' +
            '</div>' +
            '<button type="submit" class="btn btn-danger remote_arbor_gentry">Remove</button>' +
            '</div>');
        var arbor_gentries = [];
        $(".vendor_carriers .form-group").each(function () {
            this_arbor_gentry = $(this);
            arbor_gentries.push(this_arbor_gentry.find('.arbor_gentry input').val());
        });
        $(".vendor_carrier").val(arbor_gentries);
    });

    $(document).on("click", ".remote_arbor_gentry",function(e){
        e.preventDefault();
        $(this).parents(".form-group").remove();
        var arbor_gentries = [];
        $(".vendor_carriers .form-group").each(function () {
            this_arbor_gentry = $(this);
            arbor_gentries.push(this_arbor_gentry.find('.arbor_gentry input').val());
        });
        $(".vendor_carrier").val(arbor_gentries);
    });

    $("#add_product_type_js").click(function (e) {
        e.preventDefault();
        $(".product_types").prepend(
            '<div class="form-group">' +
            '<div class="col-lg-9 col-md-9">' +
            '<input type="product_type" class="form-control">' +
            '</div>' +
            '<button type="submit" class="btn btn-danger remote_product_type">Remove</button>' +
            '</div>');
        var product_types = [];
        $(".vendor_carriers .form-group").each(function () {
            this_product_type = $(this);
            product_types.push(this_product_type.find('.product_type input').val());
        });
        $(".vendor_carrier").val(product_types);
    });

    $(document).on("click", ".remote_product_type",function(e){
        e.preventDefault();
        $(this).parents(".form-group").remove();
    });
});