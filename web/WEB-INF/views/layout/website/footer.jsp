<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-6 col-md-3 box-account box-footer">
                    <div class="module clearfix">
                        <h3 class="modtitle">My Account</h3>
                        <div class="modcontent">
                            <ul class="menu">
                                <li><a
                                        href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/manufacturer">Brands</a>
                                </li>
                                <li><a
                                        href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=account/voucher">Gift
                                        Certificates</a></li>
                                <li><a
                                        href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=affiliate/account">Affiliates</a>
                                </li>
                                <li><a
                                        href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/special">Specials</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>


                <div class="col-sm-6 col-md-3 box-information box-footer">
                    <div class="module clearfix">
                        <h3 class="modtitle">Information</h3>
                        <div class="modcontent">
                            <ul class="menu">
                                <li><a
                                        href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=information/information&amp;information_id=4">About
                                        Us</a></li>
                                <li><a
                                        href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=information/information&amp;information_id=6">FAQ</a>
                                </li>
                                <li><a
                                        href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=information/information&amp;information_id=3">Pricing
                                        Tables</a></li>
                                <li><a
                                        href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=information/information&amp;information_id=5">Terms
                                        Conditions</a></li>
                            </ul>
                        </div>
                    </div>
                </div>




                <div class="col-sm-6 col-md-3 collapsed-block box-footer">
                    <div class="module clearfix">


                        <h3 class="modtitle">About Us</h3>
                        <div class="modcontent">
                            <ul class="contact-address">
                                <li><span class="fa fa-home"></span> My Company, 42 avenue des Champs</li>
                                <li><span class="fa fa-envelope"></span> Email: <a href="#">
                                        sales@yourcompany.com</a></li>
                                <li><span class="fa fa-phone">&nbsp;</span> Phone 1: 0123456789</li>
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
                    SO Maxshop © 2019- 2020 MAGENTECH Store. All Rights Reserved. </div>

                <div class="col-sm-4">
                </div>
            </div>
        </div>
    </div>
    <div class="back-to-top"><i class="fa fa-angle-up"></i></div>
</div>


