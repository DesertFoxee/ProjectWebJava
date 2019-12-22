<% request.setCharacterEncoding("utf-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>


<t:template-website title="Customer">
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
                    <div class="page-login">
                        <div class="account-border">
                            <div class="row">
                                <div id="content" class="col-sm-12">
                                    <h1>Tài khoản</h1>
                                    <div class="row">
                                        <div class="col-sm-6 new-customer">
                                            <div class="well">
                                                <h2 style="border-bottom: 1px solid #e4e3e3;">Tổng quan</h2>
                                                <p style="display:none;"><strong>Đăng ký tài khoản</strong></p>
                                                <div style="max-height: 220px; overflow:auto;"> 
                                                    Xin chào : <b>${account.tenTaiKhoan} !</b><br>

                                                    <b>Tại đây bạn có thể thực hiện các tác vụ sau :</b><br>
                                                    <div class="content-info-customer">
                                                        1. Sửa thông tin cá nhân <br>
                                                        2. Kiểm soát giỏ hàng , đặt hàng<br>
                                                        3. Thay đổi mật khẩu <br>
                                                    </div>
                                                    <b>Thông tin khách hàng:</b>
                                                    <div class="content-info-customer">

                                                        Họ tên : ${account.khachHang.tenKhachHang} <br>
                                                        Số điện thoại : ${account.khachHang.sdt} <br>
                                                        Địa chỉ : ${account.khachHang.diaChi} <br>
                                                    </div>
                                                    <b>Giỏ hàng :</b>
                                                    <div class="content-info-customer">
                                                        Có 2 sản phẩm trong giỏ hàng <br>        
                                                    </div>


                                                </div>

                                            </div>
                                            <div class="bottom-form">
                                                <a >Chính sách</a> 
                                                <a>Bảo mật</a>
                                            </div>
                                        </div>

                                        <div class="col-sm-6 customer-login">
                                            <div class="well">
                                                <h2 style="border-bottom: 1px solid #e4e3e3;">Chức năng</h2>
                                                <p><strong>Bạn có thể thực hiện :</strong></p>
                                                <div class="form-group">
                                                    <label class="control-label col-lg-12 col-md-12 col-xs-12 col-sm-12"
                                                           for="input-account">Thông tin khách hàng ,tài khoản : 
                                                        <a href="<c:url value="customer/account"/>" style="color: red;">Tại đây</a>
                                                    </label>

                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-lg-12 col-md-12 col-xs-12 col-sm-12"
                                                           for="input-account">Kiểm soát giỏ hàng :
                                                        <a href="<c:url value="customer/cart"/>" style="color: red;">Tại đây</a>
                                                    </label>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-lg-12 col-md-12 col-xs-12 col-sm-12"
                                                           for="input-account">Hay :
                                                        <a href="${contextPath}" style="color: red;">Trang chủ</a>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="bottom-form">

                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </jsp:attribute>
</t:template-website>
