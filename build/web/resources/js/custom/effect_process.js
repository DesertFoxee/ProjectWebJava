
$(document).ready(function () {

    $('div.alert').on('click', function () {
        var a = $(this);
        setTimeout(function () {
            a.slideUp(400);
        });
    });

    function show_alert(msg, position) {
        var alert = $('.myAlert-' + position);
        var x = setTimeout('');
        for (var i = 0; i < x; i++)
            clearTimeout(x);
        alert.show();
        alert.find('.msg-alert').html(msg);
        a = setTimeout(function () {
            alert.slideUp(400);
        }, 3000);
    }

    $('div.alert').on('click', function () {
        var a = $(this);
        setTimeout(function () {
            a.slideUp(400);
        });
    });

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

        if (searchText !== "") {
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

    $(document).on("click", "#btn-add-size-shoes", function () {
        const newTr = `
            <tr state= "new">
                <td contenteditable="true" class="_size">0</td>
                <td contenteditable="true" class="_count">0</td>
                <td>
                    <a class="a-delete-size" href="#" class="btn-edit btn-detail">
                        Xóa
                    </a>
                </td>
            </tr>
        `;
        $('.table-add-size-shoes').find('tbody').append(newTr);
    });

    $(document).on('click', '.a-delete-size', function () {
        if ($(this).closest('tr').attr('state') === 'old') {
            $(this).closest('tr').hide();
            $(this).closest('tr').attr('state', 'delete');
        } else {
            $(this).closest('tr').remove();
        }
        return false;
    });

    $(document).on("click", "#btn-refesh-size-shoes", function () {
        $('#tb-edit-size').find('tbody tr[state="new"]').remove();
        $('#tb-edit-size').find('tbody tr[state="delete"]').attr('state', 'old').show();
    });

  

});

