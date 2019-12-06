<% request.setCharacterEncoding("utf-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:template-website title="Login">
    <jsp:attribute name="content">
        <div class="container">
            <c:set var="baseURL" value="${pageContext.request.localName}"/>
            <ul class="breadcrumb">
                <li>
                    <a href="${baseURL}">
                        <i class="fa fa-home"></i>
                    </a>
                </li>
                <li><a
                        href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=account/account">Khách hàng</a>
                </li>
                <li><a
                        href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=account/login">Đăng nhập</a>
                </li>
            </ul>
            <div class="row">
                <div id="content" class="col-sm-12">
                    <div class="page-login">
                        <div class="account-border">
                            <div class="row">
                                <div class="col-sm-6 new-customer">
                                    <div class="well">
                                        <h2>KHÁCH HÀNG MỚI</h2>
                                        <p style="display:none;"><strong>Đăng ký tài khoản</strong></p>
                                        <p>Bằng các tạo tài khoản nhanh , bạn có thể truy cập trang web 
                                            để thực hiện giao dịch , mua bán , trao đổi thông tin
                                        </p>

                                    </div>
                                    <div class="bottom-form">
                                        <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=account/register"
                                           class="btn btn-primary creat-acc">Tiếp tục</a></div>
                                </div>
                                <form method="post" enctype="multipart/form-data">
                                    <div class="col-sm-6 customer-login">
                                        <div class="well">
                                            <h2>ĐĂNG NHẬP</h2>
                                            <p><strong>Bạn là một khách hàng cũ</strong></p>

                                            <div class="form-group">
                                                <label class="control-label col-lg-12 col-md-12 col-xs-12 col-sm-12"
                                                       for="input-account">Tài khoản
                                                    <small class="msg-error" id="er-tenTaiKhoan" ></small>
                                                </label>
                                                <input type="text" name="tenTaiKhoan" value="" id="input-account"
                                                       class="col-lg-6 col-md-6 col-xs-11 col-sm-11 form-control" />
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-lg-12 col-md-12 col-xs-12 col-sm-12"
                                                       for="input-password">Mật khẩu
                                                    <small class="msg-error" id="er-matKhau" ></small>
                                                </label>
                                                <input type="password" name="matKhau" value="" id="input-password"
                                                       class="col-lg-6 col-md-6 col-xs-11 col-sm-11 form-control" />
                                            </div>
                                        </div>
                                        <div class="bottom-form">
                                            <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=account/forgotten"
                                               class="forgot">Quên mật khẩu ?</a>
                                            <input type="submit" value="Đăng nhập" class="btn btn-primary" />
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
</t:template-website>