<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<div id="footer">
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <div class="module news-letter">
                        <div class="newsletter">
                            <div class="title-block">
                                <div class="page-heading">
                                    Đăng ký với chúng tôi </div>
                                <div class="pre-text">
                                    Để có cơ hội nhận các phiếu giảm giá
                                </div>
                            </div>
                            <div class="block_content">
                                <form method="post" id="signup" name="signup">

                                    <div class="form-group required send-mail">
                                        <div class="input-box">
                                            <input type="email" placeholder="Your E- Mail" value=""
                                                   class="form-control" id="txtemail" name="txtemail">
                                        </div>
                                        <div class="subcribe">
                                            <button type="submit" class="btn btn-default btn-lg "
                                                    onclick="return subscribe_newsletter();">Đăng ký</button>

                                        </div>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-navbar">
        <div class="container content">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12 collapsed-block footer-links box-footer">
                    <div class="module clearfix">
                        <div class="modcontent">
                            <div class="content-block-footer">
                                <div class="footer-logo"><img src="<c:url value="/resources/images/common/logo-footer.png" />" alt="">
                                </div>
                                <p>Maxshop cung cấp cho bạn sản phẩm chất lượng cao ,giá thành hợp lý.
                                    Cảm ơn quý khách ! Mong được sự đóng góp nhằm phát triển hoàn thiện hơn .
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-3 box-account box-footer">
                    <div class="module clearfix">
                        <h3 class="modtitle">Tài khoản</h3>
                        <div class="modcontent">
                            <ul class="menu">
                                <li><a href="<c:url value ="/customer/login"/>">Đăng nhập</a></li>
                                <li><a href="<c:url value ="/customer/register"/>">Đăng ký</a></li>
                                <li><a href="<c:url value ="/"/>">Chính sách</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 box-account box-footer">
                    <div class="module clearfix">
                        <h3 class="modtitle">Website</h3>
                        <div class="modcontent">
                            <ul class="menu">
                                <li><span class="fa fa-caret-right">&nbsp;&nbsp;</span><a href="${contextPath}">Trang chủ</a></li>
                                <li><span class="fa fa-caret-right">&nbsp;&nbsp;</span><a href="<c:url value ="/product"/>">Tất cả sản phẩm</a></li>
                                <li><span class="fa fa-caret-right">&nbsp;&nbsp;</span><a href="<c:url value ="/manager"/>">Quản lý</a></li>
                                <li><span class="fa fa-caret-right">&nbsp;&nbsp;</span><a href="<c:url value ="/"/>">Trợ giúp</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-3 box-information box-footer">
                    <div class="module clearfix">
                        <h3 class="modtitle">Thông tin</h3>
                        <div class="modcontent">
                            <ul class="menu">
                                <li><span class="fa fa-mail-reply">&nbsp;&nbsp;</span>Email    :<a href="">ngothuong18121998@gmail.com</a></li>
                                <li><span class="fa fa-phone">&nbsp;&nbsp;</span>Liên lạc : 0398795518</li>
                                <li><span class="fa fa-address-card-o">&nbsp;&nbsp;</span>Đia chỉ  : 236, Hoàng Quốc Việt, P. Cổ Nhuế 1, Q. Bắc Từ Liêm, HN</li>
                                <li><span class="fa fa-facebook">&nbsp;&nbsp;</span>Facebook :<a href="http://facebook.com/SSID.no1">RedTeam</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bottom-block ">
        <div class=" container">
            <div class="row">
                <div class="col-sm-8 copyright-text">
                    SO Maxshop © 2019- 2020 RedTeam Store. Đăng ký bản quyền. </div>

                <div class="col-sm-4">
                </div>
            </div>
        </div>
    </div>
    <div class="back-to-top"><i class="fa fa-angle-up"></i></div>
</div>


