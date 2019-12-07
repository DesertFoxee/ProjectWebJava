
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

    function getFormAdd(url, modal_body) {
        $(modal_body).empty();
        $.ajax({
            url: url,
            type: 'GET',
            success: function (response) {
                $(modal_body).html(response);
            },
            error: function () {
                $(modal_body).html("Error");
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
                $(modal).find('.modal-body').html("Error");
            }
        });
    }

    function submitAddForm(formData, url, modal) {
        remove_msg_error();
        var data_post = $(formData).serialize();
        $.ajax({
            type: 'POST',
            url: url,
            data: data_post,
            success: function (response) {
                if (response.validated) {
                    window.location.href = window.location;
                } else {
                    $.each(response.errorMessages, function (key, value) {
                        $("#er-" + key + "").text(" (" + value + ")");
                    });
                }
            },
            error: function () {
                $(modal).find('.modal-body').html("Error");
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
                show_msg('Có lỗi xảy ra');
            }
        });
        return false;
    }
    function submitEditForm(url, modal, datapost) {
        remove_msg_error();
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
                $(modal).closest('.modal-body').html("Error");
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
        submitAddForm($(this), url, $('#add-shoes'));
        return false;
    });
    $("#form-add-manu").submit(function () {
        var url = $(this).attr("action");
        submitAddForm($(this), url, $('#add-manu'));
        return false;
    });
    $("#form-add-type").submit(function () {
        var url = $(this).attr("action");
        submitAddForm($(this), url, $('#add-type'));
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


    $("#form-edit-shoes").submit(function () {
        var url = $(this).attr("action");
        var data_post = $(this).serialize();
        submitEditForm(url, $('#edit-shoes'), data_post);
        return false;
    });

    $("#form-edit-account").submit(function () {
        var url = $(this).attr("action");
        var data_post = $(this).serialize();
        submitEditForm(url, $('#edit-account'), data_post);
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

});