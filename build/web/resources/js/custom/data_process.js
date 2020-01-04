
$(document).ready(function () {

    function base64toBlob(base64Data, contentType) {
        contentType = contentType || '';
        var sliceSize = 1024;
        var byteCharacters = atob(base64Data);
        var bytesLength = byteCharacters.length;
        var slicesCount = Math.ceil(bytesLength / sliceSize);
        var byteArrays = new Array(slicesCount);

        for (var sliceIndex = 0; sliceIndex < slicesCount; ++sliceIndex) {
            var begin = sliceIndex * sliceSize;
            var end = Math.min(begin + sliceSize, bytesLength);

            var bytes = new Array(end - begin);
            for (var offset = begin, i = 0; offset < end; ++i, ++offset) {
                bytes[i] = byteCharacters[offset].charCodeAt(0);
            }
            byteArrays[sliceIndex] = new Uint8Array(bytes);
        }
        return new Blob(byteArrays, {type: contentType});
    }

    function getBlobDataImage(ImageURL) {
        var block = ImageURL.split(";");
        var contentType = block[0].split(":")[1];
        var realData = block[1].split(",")[1];
        return base64toBlob(realData, contentType);
    }

    function showAlertDelete(td, modal, MSGName) {
        var name = $(td).closest('tr').find("td").eq(1).text();
        var id = $(td).closest('tr').data('id');
        $(modal).find('.modal-body').html("Bạn muốn xóa " + MSGName + " [" + name + "]");
        $(modal).attr('data-id', id);
    }

    function show_msg(msg) {
        $('#message .modal-body').text(msg);
        $('#message').modal('toggle');
    }

    function remove_msg_error() {
        $("[id^='er-']").text("");
    }

    function show_msg_error(err_content) {
        $.each(err_content, function (key, value) {
            $("#er-" + key + "").text(" (" + value + ")");
        });
    }
    function get_list_error(err_content) {
        var err = "";
        $.each(err_content, function (key, value) {
            err += value + "\n";
        });
        return err;
    }
    function getFormToObject(data_form) {
        var obj = {};
        $.each(data_form.serializeArray(), function (i, obj) {
            obj[obj.name] = obj.value;
        });
        return obj;
    }
    function show_alert(msg, position) {
        var alert = $('.myAlert-' + position);
        var x = setTimeout('');
        for (var i = 0; i < x; i++)
            clearTimeout(x);
        alert.show();
        alert.find('.msg-alert').html(msg);
        a = setTimeout(function () {
            alert.slideUp(400);
        }, 2000);
    }

    function getFormAdd(url, modal_body) {
        $(modal_body).empty();
        $.ajax({
            url: url,
            type: 'GET',
            success: function (response) {
                $(modal_body).html(response);
            },
            error: function () {
                show_alert("Có lỗi xảy ra khi lấy dữ liệu", "bottom-error");
                ;
            }
        });
    }
    function getFormWithPara(url, modal_body, data) {
        $.ajax({
            url: url,
            type: 'GET',
            data: data,
            success: function (response) {
                modal_body.append(response);
                var a = $('#l-p').attr('value');
                var b = $('#l-n').attr('value');
                alert(a + " " + b);
            },
            error: function () {
                show_alert("Thất bại", "bottom-error");
            }
        });
    }
    function getFormEdit(td, url, modal) {
        var id = $(td).closest('tr').data('id');
        $(modal).find('.modal-body').empty();
        $.ajax({
            url: url,
            type: 'GET',
            data: {ma: id},
            success: function (response) {
                $(modal).attr("data-id", id);
                $(modal).find('.modal-body').html(response);
            },
            error: function () {
                show_alert("Có lỗi xảy ra ! Xin kiểm tra lại", "bottom-error");
            }
        });
    }

    function submitFormShowErr(formData, url) {
        remove_msg_error();
        var data_post = $(formData).serialize();
        $.ajax({
            type: 'POST',
            url: url,
            data: data_post,
            success: function (response) {
                if (response.validated) {
                    if (response.redirect) {
                        window.location.href = response.redirect;
                    } else {
                        window.location.href = window.location;
                    }
                } else {
                    show_msg_error(response.errorMessages);
                }
            },
            error: function () {
                show_alert("Có lỗi xảy ra ! Xin kiểm tra lại", "bottom-error");
            }
        });
    }
    function submitFormShowErrToAlert(formData, msg_success) {
        var url = $(formData).attr('action');
        var data_post = $(formData).serialize();
        $.ajax({
            type: 'POST',
            url: url,
            data: data_post,
            success: function (response) {
                if (response.validated) {
                    show_alert(msg_success, "bottom-warning");
                } else {
                    if (response.redirect) {
                        window.location.href = response.redirect;
                    } else {
                        var err = get_list_error(response.errorMessages);
                        show_alert(err, "bottom-error");
                    }
                }
            },
            error: function () {
                show_alert("Có lỗi xảy ra ! Xin kiểm tra lại", "bottom-error");
            }
        });
    }

    function submitDeleteForm(url, modal, table) {
        $(modal).modal('hide');
        var id = $(modal).data('id');
        $.ajax({
            type: 'POST',
            url: url,
            data: {ma: id},
            success: function (response) {
                if (response.validated) {
                    $(table).find('table tbody tr[data-id="' + id + '"]').remove();
                } else {
                    show_msg(response.errorMessages['err']);
                }
            },
            error: function () {
                show_alert("Có lỗi xảy ra ! Xin kiểm tra lại", "bottom-error");
            }
        });
        return false;
    }
    function submitEditForm(url, datapost) {
        remove_msg_error();
        $.ajax({
            type: 'POST',
            url: url,
            data: datapost,
            success: function (response) {
                if (response.validated) {
                    if (response.redirect === null) {
                        window.location.href = window.location;
                    } else {
                        window.location.href = response.redirect;
                    }
                } else {
                    if (response.alert) {
                        show_alert(get_list_error(response.errorMessages), "bottom-error");
                    } else
                        show_msg_error(response.errorMessages);
                }
            },
            error: function () {
                show_alert("Có lỗi xảy ra ! Xin kiểm tra lại", "bottom-error");
            }
        });
    }
    function submitJson(url, data_json) {
        remove_msg_error();
        $.ajax({
            url: url,
            type: 'POST',
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify(data_json),
            success: function (response) {
                if (response.validated) {
                    window.location.href = window.location;
                } else
                    show_msg_error(response.errorMessages);
            },
            error: function () {
                show_alert("Có lỗi xảy ra !", 'bottom-error');
            }
        });
    }


    // add form 
    $(".btn-add-shoes").on("click", function () {
        var url = $(this).attr("link");
        getFormAdd(url, $('#add-shoes .modal-body'));
    });

    $(".btn-add-manu").on("click", function () {
        var url = $(this).attr("link");
        getFormAdd(url, $('#add-manu .modal-body'));
    });
    $(".btn-add-type").on("click", function () {
        var url = $(this).attr("link");
        getFormAdd(url, $('#add-type .modal-body'));
    });


    // show delete 
    $(".btn-delete-shoes").click(function () {
        showAlertDelete($(this), $('#delete-shoes'), "sản phẩm");
    });

    $(".btn-delete-cart").click(function () {
        showAlertDelete($(this), $('#delete-cart'), "sản phẩm");
    });

    $(".btn-delete-invoice").click(function () {
        showAlertDelete($(this), $('#delete-shoes'), "sản phẩm");
    });
    $(".btn-delete-account").click(function () {
        showAlertDelete($(this), $('#delete-account'), "người dùng");
    });

    $(".btn-delete-manu").click(function () {
        showAlertDelete($(this), $('#delete-manu'), "hãng");
    });
    $(".btn-delete-type").click(function () {
        showAlertDelete($(this), $('#delete-type'), "loại giày");
    });

    // show edit
    $(".btn-edit-shoes").click(function () {
        var url = $("#form-edit-shoes").attr('action');
        getFormEdit($(this), url, $('#edit-shoes'));

    });
    $(".btn-edit-invoice").click(function () {
        var url = $("#form-edit-invoice").attr('action');
        getFormEdit($(this), url, $('#edit-invoice'));
    });

    $(".btn-edit-account").click(function () {
        var url = $("#form-edit-account").attr('action');
        getFormEdit($(this), url, $('#edit-account'));
    });
    $(".btn-edit-manu").click(function () {
        var url = $("#form-edit-manu").attr('action');
        getFormEdit($(this), url, $('#edit-manu'));
    });

    $(".btn-edit-type").click(function () {
        var url = $("#form-edit-type").attr('action');
        getFormEdit($(this), url, $('#edit-type'));
    });


    // submit form add 
    $("#form-add-shoes").submit(function () {
        var url = $(this).attr("action");
        var rows = $('#tb-add-size').find('tbody tr');
        shoes = {};
        $.each($(this).serializeArray(), function (i, obj) {
            shoes[obj.name] = obj.value;
        });
        var size_new = [];
        for (i = 0; i < rows.length; i++) {
            var rowSizeNew = {};
            rowSizeNew.soLuong = $(rows[i]).find('._count').html();
            rowSizeNew.kichCo = $(rows[i]).find('._size').html();
            size_new.push(rowSizeNew);
        }
        var data = {
            'shoes': shoes,
            'newSize': size_new
        };

        submitJson(url, data);
        return false;
    }
    );
    $("#form-add-manu").submit(function () {
        var url = $(this).attr("action");
        submitFormShowErr($(this), url);
        return false;
    });
    $("#form-add-type").submit(function () {
        var url = $(this).attr("action");
        submitFormShowErr($(this), url);
        return false;
    });


    // login 
    $('#user-login').submit(function () {
        var url = $(this).attr("action");
        remove_msg_error();
        var data_post = $(this).serialize();
        $.ajax({
            type: 'POST',
            url: url,
            data: data_post,
            success: function (response) {
                if (response.validated) {
                    if (window.location.href === document.referrer) {
                        window.location.href = response.redirect;
                    } else
                        window.location.href = document.referrer;
                } else {
                    show_msg_error(response.errorMessages);
                }
            },
            error: function () {
                show_alert("Có lỗi xảy ra ! Xin kiểm tra lại", "bottom-error");
            }
        });
        return false;
    });

    // submit form delete 


    $("#form-delete-shoes").submit(function () {
        var url = $(this).attr("action");
        submitDeleteForm(url, $('#delete-shoes'), $('#table-shoes'));
        return false;
    });
    $("#form-delete-manu").submit(function () {
        var url = $(this).attr("action");
        submitDeleteForm(url, $('#delete-manu'), $('#table-manu'));
        return false;
    });
    $("#form-delete-type").submit(function () {
        var url = $(this).attr("action");
        submitDeleteForm(url, $('#delete-type'), $('#table-type'));
        return false;
    });
    $("#form-delete-account").submit(function () {
        var url = $(this).attr("action");
        submitDeleteForm(url, $('#delete-account'), $('#table-account'));
        return false;
    });

    $("#form-delete-cart").submit(function () {
        var url = $(this).attr("action");
        submitDeleteForm(url, $('#delete-account'), $('#table-account'));
        return false;
    });



    $("#form-edit-shoes").submit(function () {
        var url = $(this).attr("action");
        var data_post = $(this).serialize();
        submitEditForm(url, data_post);

        return false;
    });

    $("#form-edit-account").submit(function () {
        var url = $(this).attr("action");
        var data_post = $(this).serialize();
        submitEditForm(url, data_post);
        return false;
    });

    $("#form-edit-manu").submit(function () {
        var url = $(this).attr("action");
        var data_post = $(this).serialize();
        submitEditForm(url, data_post);
        return false;
    });
    $("#form-edit-type").submit(function () {
        var url = $(this).attr("action");
        var data_post = $(this).serialize();
        submitEditForm(url, data_post);
        return false;
    });

    $("#admin-update").submit(function () {
        remove_msg_error();
        var url = $(this).attr("action");
        var datapost = $(this).serialize();
        $.ajax({
            type: 'POST',
            url: url,
            data: datapost,
            success: function (response) {
                if (response.validated) {
                    window.location.href = window.location;
                } else {
                    show_msg_error(response.errorMessages);
                }
            },
            error: function () {
                show_msg("Thất bại");
            }
        });
        return false;
    });


    // image 

    $('.btn-image-shoes').on('click', function () {
        var id_shoes = $(this).closest('tr').data('id');
        var url = $('#image-shoes').attr('link');
        $('#image-shoes .modal-body').empty();
        $.ajax({
            url: url,
            type: 'GET',
            data: {maGiay: id_shoes, new : "false"},
            success: function (response) {
                $('#image-shoes').attr('data-id', id_shoes);
                $('#image-shoes .modal-body').html(response);
            }
        });
    });

    $('#image-shoes .modal-body').on('click', '.close', function () {
        img_delete = $(this).closest('.img-wrap').find('img');

        if ($(img_delete).is('[new]')) {
            $(img_delete).closest('.img-wrap').remove();
        } else {
            if (confirm("Bạn muốn xóa [Image]")) {
                var url = $('#image-shoes').attr('link') + '/delete';
                var id_image = $(img_delete).data('id');
                $.ajax({
                    url: url,
                    type: 'GET',
                    data: {id_image: id_image},
                    success: function () {
                        $(img_delete).closest('.img-wrap').remove();
                    }
                });
            }
        }

    });

    $("#btn-choose-file").click(function () {
        $("#selectfile").trigger('click');
    });


    $("#selectfile").bind('change', function (e) {
        var url = $('#image-shoes').attr('link');
        $.ajax({
            url: url,
            type: 'GET',
            data: {maGiay: 0, new : "true"},
            success: function (response) {
                $(".modal-body").append(response);
                if (e.target.files && e.target.files[0]) {
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        $(".modal-body .img-wrap img").last().attr('src', e.target.result);
                    };
                    reader.readAsDataURL(e.target.files[0]);
                }
                $("#selectfile").values("");
            }
        });
        return false;
    });



    $("#btn-update-file").click(function () {
        var id_shoes = $('#image-shoes').attr('data-id');
        image_data = $("#image-shoes .modal-body .img-wrap img[new]");
        var data = new FormData();
        data.append("maGiay", id_shoes);
        var url = $('#image-shoes').attr('link');

        for (var index = 0; index < $(image_data).length; index++) {
            var blob = getBlobDataImage($(image_data[index]).attr('src'));
            data.append('files-' + index, blob);
        }
        $.ajax({
            data: data,
            contentType: false,
            processData: false,
            enctype: 'multipart/form-data',
            cache: false,
            type: 'POST',
            url: url,
            success: function (response) {
                $("#image-shoes").modal('hide');
                if (!response.validated) {
                    show_msg(response.errorMessages['err']);
                }
            },
            error: function () {
                $("#image-shoes").modal('hide');
                show_msg("Gửi thất bại");
            }
        });
        return false;
    });


    // update size ;
    $(document).on("click", "#btn-update-size-shoes", function () {
        var rows = $('#tb-edit-size').find('tbody tr');
        var shoes_id = $(this).closest('form').find('input[name="maGiay"]')[0].value;

        var url = $(this).closest('form').attr('action') + '/size/update';
        var size_update = [];
        var size_delete = [];
        var size_new = [];
        for (i = 0; i < rows.length; i++) {
            if ($(rows[i]).attr('state') === 'delete') {
                size_delete.push($(rows[i]).attr('data-id'));
            } else if ($(rows[i]).attr('state') === 'old') {
                var rowSize = {};
                rowSize.maKichCo = $(rows[i]).attr('data-id');
                rowSize.soLuong = $(rows[i]).find('._count').html();
                rowSize.kichCo = $(rows[i]).find('._size').html();
                size_update.push(rowSize);
            } else {
                var rowSizeNew = {};
                rowSizeNew.soLuong = $(rows[i]).find('._count').html();
                rowSizeNew.kichCo = $(rows[i]).find('._size').html();
                size_new.push(rowSizeNew);
            }
        }
        $.ajax({
            url: url,
            type: 'POST',
            contentType: 'application/json; charset=utf-8',
            data: JSON.stringify({
                oldSize: size_update,
                newSize: size_new,
                deleteSize: size_delete,
                shoesID: shoes_id
            }),
            success: function (response) {
                show_alert("Cập nhật thành công", "bottom-warning");
                $('#tb-edit-size').find('tbody').empty();
                $('#tb-edit-size').find('tbody').html(response);
            },
            error: function () {
                show_msg("Lỗi xảy ra !");
            }
        });
        return false;
    });

    function updatePageProduct(url, data) {
        $.ajax({
            url: url,
            type: 'GET',
            data: data,
            success: function (response) {
                $('.product-filter-bottom').remove();
                $('.products-list').remove();
                $(".products-category").append(response);
                var pr_n = $('#change-page-bottom').contents().clone();
                $('#change-page-top').empty();
                $('#change-page-top').html(pr_n);
            },
            error: function () {
                show_alert("Thất bại", "bottom-error");
            }
        });
    }
    $('.products-category').on('click', '.change-page', function () {
        var url = $(this).attr('href');
        var page_number = $(this).attr('value');
        var data = $('.filters-shoes').find("select ,input").serialize();
        data += "&number=" + page_number;
        updatePageProduct(url, data);
        return false;
    });

    $('.btn-filter').click(function () {
        var url = $(this).attr('href');
        var data = $('.filters-shoes').find("select input").serialize();
        updatePageProduct(url, data);
        return false;
    });


    // add to cart
    $('#add-to-cart').submit(function () {
        submitFormShowErrToAlert($(this), "Thêm sản phẩm thành công");
        return false;
    });

    $('#edit-infor , #edit-pass ,#register-customer').submit(function () {
        var url = $(this).attr('action');
        var data = $(this).serialize();
        submitEditForm(url, data);
        return false;
    });

    $('#review').submit(function () {
        var url = $(this).attr('action');
        var data = $(this).serialize();
        $.ajax({
            type: 'POST',
            url: url,
            data: data,
            success: function (response) {
                if (response.validated) {
                    window.location.href = response.redirect;
                } else {
                    var err = get_list_error(response.errorMessages);
                    show_alert(err, "bottom-error");
                }
            },
            error: function () {
                show_alert("Có lỗi xảy ra ! Xin kiểm tra lại", "bottom-error");
            }
        });
        return false;
    });

});