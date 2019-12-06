<% request.setCharacterEncoding("utf-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:template-website title="Register">
    <jsp:attribute name="content">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=common/home"><i
                            class="fa fa-home"></i></a></li>
                <li><a
                        href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=account/account">Account</a>
                </li>
                <li><a
                        href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=account/register">Register</a>
                </li>
            </ul>
            <div class="row">
                <div id="content" class="col-sm-12">
                    <h1>Đăng ký tài khoản</h1>
                    <p>Nếu bạn đã có tài khoản , thực hiện giao dịch hoặc <a
                            href="<c:url value="/cusmter/login"/>"><u>Đăng nhập</u></a>.</p>
                    <form action="<c:url value="/customer/resgister"/>"
                          method="post" enctype="multipart/form-data" class="form-horizontal account-register">
                        <fieldset id="account">
                            <legend>Thông tin cá nhân</legend>
                            <div class="form-group required" style="display: none;">
                                <label class="col-sm-2 control-label">Thông tin khách hàng</label>
                            </div>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-firstname">Họ tên
                                    <small class="msg-error" id="er-tenKhachHang"></small>
                                </label>
                                <div class="col-sm-10">
                                    <input type="text" name="tenKhachHang" value="" placeholder="Nhập họ và tên"
                                           id="input-firstname" class="form-control">
                                </div>
                            </div>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-email">Địa chỉ
                                    <small class="msg-error" id="er-diaChi"></small>
                                </label>
                                <div class="col-sm-10">
                                    <input type="email" name="diaChi" value="" placeholder="Nhập địa chỉ" id="input-email"
                                           class="form-control">
                                </div>
                            </div>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-telephone">Số điện thoại
                                    <small class="msg-error" id="er-std"></small>
                                </label>
                                <div class="col-sm-10">
                                    <input type="tel" name="std" value="" placeholder="Nhập số điện thoại"
                                           id="input-telephone" class="form-control">
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>Tài khoản</legend>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-address-2">Tên tài khoản
                                    <small class="msg-error" id="er-tenTaiKhoan"></small>
                                </label>
                                <div class="col-sm-10">
                                    <input type="text" name="tenTaiKhoan" value="" placeholder="Nhập tài khoản"
                                           id="input-address-2" class="form-control">
                                </div>
                            </div>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-password">Mật khẩu
                                    <small class="msg-error" id="er-matKhau"></small>
                                </label>
                                <div class="col-sm-10">
                                    <input type="password" name="matKhau" value="" placeholder="Nhập mật khẩu"
                                           id="input-password" class="form-control">
                                </div>
                            </div>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-confirm">Xác nhận mật khẩu
                                    <small class="msg-error" id="er-xacNhanMatKhau"></small>
                                </label>
                                <div class="col-sm-10">
                                    <input type="password" name="xacNhanMatKhau" value="" placeholder="Xác nhận mật khẩu"
                                           id="input-confirm" class="form-control">
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend></legend>
                        </fieldset>
                        <div class="buttons">
                            <div class="pull-right">
                                <input type="submit" value="Đăng ký" class="btn btn-primary">
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </jsp:attribute>
</t:template-website>