
$(document).ready(function () {
    
    $(".noti-hidden").click(function () {
        $body_pan = $(this).closest(".panel").find(".panel-body");
        if ($body_pan.is(":visible")) {
            $(this).text("Hiện");
            $body_pan.hide();
        } else {
            $(this).text("Ẩn");
            $body_pan.show();
        }
    });

    $("#search-side-menu").on("input", function (e) {
        var searchText = $(this).val();

        $("#side-menu").find("ul").removeClass("in");
        $("#side-menu").find("li").removeClass("active");
        $("#side-menu").find("li").show();

        if (searchText != "") {
            $('ul#side-menu a').each(function (index, value) {
                var currentName = $(value).text();
                var currentName = currentName.replace(/\s+/g, ' ').trim();
                if (currentName.toUpperCase().indexOf(searchText.toUpperCase()) > -1) {

                    $("#side-menu").find("ul").addClass("in");
                    $("#side-menu").find("li").has($(value)).addClass("active");
                    $("#side-menu").find("li").has($(value)).show();
                } else {
                    $(value).closest("li").hide();
                }
            });
        }
    });
});

