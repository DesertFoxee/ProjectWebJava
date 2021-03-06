<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<div class="col-lg-12" style="text-align: center;">
    <small class="msg-error" id="er-common" ></small>
</div>
<div class="col-lg-6 shoes-padding-input">
    <label>Tên khách hàng
        <small class="msg-error" id="er-tenKhachHang"></small>
    </label>
    <input name="tenKhachHang" class="form-control" placeholder="Tên tài khoản">
</div>
<div class="col-lg-12 shoes-padding-input">
    <label>Địa chỉ
        <small class="msg-error" id="er-diaChi"></small>
    </label>
    <input name="diaChi" class="form-control" placeholder="Nhập địa chỉ">
</div>
<div class="col-lg-12 shoes-padding-input">
    <label>Số điện thoại
        <small class="msg-error" id="er-sdt"></small>
    </label>
    <input name ="sdt" class="form-control" placeholder="Nhập số điện thoại">
</div>

<div class="col-lg-6 shoes-padding-input">
    <label>Tên tài khoản
        <small class="msg-error" id="er-tenTaiKhoan"></small>
    </label>
    <div class="form-group input-group">
        <span class="input-group-addon"><i
                class="fa fa-user fa-fw"></i></span>
        <input name="tenTaiKhoan" type="text" class="form-control">
    </div>
</div>
<div class="col-lg-6 shoes-padding-input">
    <label>Mật khẩu
        <small class="msg-error" id="er-matKhau"></small>
    </label>
    <div class="form-group input-group">
        <span class="input-group-addon"><i
                class="fa fa-lock fa-fw"></i></span>
        <input name="matKhau" type="password" class="form-control"
               placeholder="************">
    </div>
</div>
