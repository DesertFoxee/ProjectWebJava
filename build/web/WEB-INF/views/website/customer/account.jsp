<% request.setCharacterEncoding("utf-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:template-website title="Register">
    <jsp:attribute name="content">
        <div class="container">
            <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
            <ul class="breadcrumb">
                <li>
                    <a  href="${contextPath}">
                        <i class="fa fa-home"></i>
                    </a>
                </li>
                <li><a href="<c:url value ="customer"/>">Khách hàng</a>
                </li>
            </ul>
            <div class="row">
                <div id="content" class="col-sm-12">
                    <h1>Tài khoản</h1>
                    <p>Sửa thông tin cá nhân hoặc mật khẩu tài khoản. Ngoài ra bạn có thể tạo tài khoản mới tại đây
                        <a href="<c:url value="/customer/register"/>"><u>Đăng ký</u></a></p>
                    <form action="<c:url value="/customer/dashboard/account/changeinfor" />" id="edit-infor" class="form-horizontal account-register">
                        <fieldset id="account">
                            <legend>Thông tin khách hàng</legend> 
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-name">Họ và tên

                                </label>
                                <div class="col-sm-10">
                                    <input type="text" name="tenKhachHang" value="${account.khachHang.tenKhachHang}" placeholder="Nhập họ và tên"
                                           id="input-name" class="form-control">
                                    <small class="msg-error" id="er-tenKhachHang"></small>
                                </div>

                            </div>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-address">Địa chỉ
                                </label>
                                <div class="col-sm-10">
                                    <input type="text" name="diaChi" value="${account.khachHang.diaChi}" placeholder="Nhập địa chỉ"
                                           id="input-address" class="form-control">
                                    <small class="msg-error" id="er-diaChi"></small>
                                </div>

                            </div>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-phone">Số điện thoại

                                </label>
                                <div class="col-sm-10">
                                    <input type="text" name="sdt" value="${account.khachHang.sdt}" placeholder="Nhấp số điện thoại"
                                           id="input-phone" class="form-control">
                                    <small class="msg-error" id="er-sdt"></small>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend></legend>
                        </fieldset>
                        <div class="buttons">
                            <div class="pull-right">
                                <input type="submit" value="Cập nhật" style="margin-right:0px;" class="btn btn-primary">
                            </div>
                        </div>
                    </form>
                </div>
                <div id="content" class="col-sm-12">
                    <form action="<c:url value="/customer/dashboard/account/changepass" />" id="edit-pass" class="form-horizontal account-register">    
                        <fieldset id="address">
                            <legend>Đổi mật khẩu</legend>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-pass">Mật khẩu cũ

                                </label>
                                <div class="col-sm-10">
                                    <input type="password" name="matKhauCu" value="" placeholder="Mật khẩu cũ"
                                           id="input-pass" class="form-control">
                                    <small class="msg-error" id="er-matKhauCu"></small>
                                </div>

                            </div>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-newpass">Mật khẩu mới
                                </label>
                                <div class="col-sm-10">
                                    <input type="password" name="matKhau" value="" placeholder="Mật khẩu mới"
                                           id="input-newpass" class="form-control">
                                    <small class="msg-error" id="er-matKhau"></small>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-confirm">Xác nhận mật khẩu
                                </label>
                                <div class="col-sm-10">
                                    <input type="password" name="xacNhanMatKhau" value=""
                                           placeholder="Xác nhận mật khẩu mới" id="input-confirm" class="form-control">
                                    <small class="msg-error" id="er-xacNhanMatKhau"></small>
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