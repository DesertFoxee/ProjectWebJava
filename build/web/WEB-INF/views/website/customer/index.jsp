<% request.setCharacterEncoding("utf-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:template-website title="Customer">
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
                    <h1>Tài khoản</h1>
                    <p>Sửa thông tin cá nhân , hoặc mật khẩu tài khoản <a href="#"></a>.</p>
                    <form action="#" method="post" enctype="multipart/form-data"
                          class="form-horizontal account-register">
                        <fieldset id="account">
                            <legend>Thông tin khách hàng</legend>
                            <div class="form-group required" style="display: none;">
                                <label class="col-sm-2 control-label">Customer Group</label>
                                <div class="col-sm-10">
                                    <div class="radio">
                                        <label>
                                            <input type="radio" name="customer_group_id" value="1" checked="checked">
                                            Default</label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-name">Họ và tên
                                    <small class="msg-error" id="er-tenKhachHang"></small>
                                </label>
                                <div class="col-sm-10">
                                    <input type="text" name="tenKhachHang" value="" placeholder="Nhập họ và tên"
                                           id="input-name" class="form-control">
                                </div>
                            </div>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-address">Địa chỉ
                                    <small class="msg-error" id="er-diaChi"></small>
                                </label>
                                <div class="col-sm-10">
                                    <input type="text" name="diaChi" value="" placeholder="Nhập địa chỉ"
                                           id="input-address" class="form-control">
                                </div>
                            </div>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-phone">Số điện thoại
                                    <small class="msg-error" id="er-sdt"></small>
                                </label>
                                <div class="col-sm-10">
                                    <input type="email" name="sdt" value="" placeholder="Nhấp số điện thoại"
                                           id="input-phone" class="form-control">
                                </div>
                            </div>

                        </fieldset>
                        <fieldset id="address">
                            <legend>Đổi mật khẩu</legend>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-pass">Mật khẩu cũ
                                    <small class="msg-error" id="er-matKhauCu"></small>
                                </label>
                                <div class="col-sm-10">
                                    <input type="text" name="matKhauCu" value="" placeholder="Mật khẩu cũ"
                                           id="input-pass" class="form-control">
                                </div>
                            </div>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-newpass">Mật khẩu mới
                                    <small class="msg-error" id="er-matKhauMoi"></small>
                                </label>
                                <div class="col-sm-10">
                                    <input type="text" name="matKhauMoi" value="" placeholder="Mật khẩu mới"
                                           id="input-newpass" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-confirm">Xác nhận mật khẩu
                                    <small class="msg-error" id="er-xacNhanMatKhau"></small>
                                </label>
                                <div class="col-sm-10">
                                    <input type="text" name="xacNhanMatKhau" value=""
                                           placeholder="Xác nhận mật khẩu mới" id="input-confirm" class="form-control">
                                </div>
                            </div>
                        </fieldset>

                        <fieldset>
                            <legend></legend>

                        </fieldset>
                        <div class="buttons">
                            <div class="pull-left">
                                <a>Bạn quên mật khẩu ?</a>
                            </div>
                            <div class="pull-right">
                                <input type="submit" value="Xác nhận" style="margin-right:0px;" class="btn btn-primary">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </jsp:attribute>
</t:template-website>
