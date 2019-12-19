<%@page import="models.database.LoaiGiay"%>
<%@page import="dao.LoaiGiayDAO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="models.database.HangGiay" %>
<%@page import="dao.HangGiayDAO" %>

<%
    List<HangGiay> manus = HangGiayDAO.getAllManufacturer();
    List<LoaiGiay> types = LoaiGiayDAO.getAllType();
%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<div id="header" class=" variant">
    <!-- HEADER TOP -->
    <div class="header-top compact-hidden">
        <div class="container">
            <div class="row">
                <div class="header-top-left form-inline col-lg-4 col-md-5 hidden-sm hidden-xs compact-hidden">
                    <div class="form-group navbar-welcome hidden-xs">
                        <div class="welcome-msg">
                            <ul class="list-msg">
                                <li><label class="label-msg">Tuần này</label> <a href="#">Giảm giá cho tất cả mặt hàng Nike</a></li>
                                <li><label class="label-msg">Tuần sau</label> <a href="#">Giảm giá cho tất cả mặt hàng Adidas</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- END -->
                </div>
                <div class="header-top-right collapsed-block col-lg-8 col-md-7 col-xs-12 ">

                    <div class="tabBlock" id="TabBlock-1">
                        <ul class="top-link list-inline">

                            <li class="account" id="my_account">
                                <a href="<c:url value="/customer/account"/>" onclick="window.location = this.getAttribute('href');" title="Tài khoản" class="btn btn-xs dropdown-toggle" data-toggle="dropdown">

                                    <span>Tài khoản</span>
                                    <span class="fa fa-angle-down"></span>
                                </a>
                                <ul class="dropdown-menu ">
                                    <li><a href="<c:url value="/customer/login"/>"><i class="fa fa-pencil-square-o"></i> Đăng nhập</a></li>
                                    <li><a href="<c:url value="/customer/register"/>"
                                           <i class="fa fa-user"></i> Đăng ký</a></li>
                                </ul>


                            </li>
                            <li class="checkout"><a
                                    href="<c:url value="/customer/cart"/>"
                                    class="top-link-checkout" title="Checkout"><span>Giỏ hàng</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- HEADER CENTER -->
    <div class="header-center">
        <div class="container">
            <div class="row">
                <!-- Logo -->
                <div class="navbar-logo col-md-3 col-sm-3 col-xs-10">
                    <a href="${contextPath}"><img
                            src="<c:url value="/resources/images/common/theme_logo.png" />"
                            title="MaxStore" alt="MaxStore" /></a>
                </div>
                <!-- //end Logo -->

                <!-- Secondary menu -->
                <div class="header-center-right col-md-9 col-sm-9 col-xs-2">

                    <div class="header-bottom-menu col-xs-12">

                        <div class="responsive so-megamenu">
                            <nav class="navbar-default">
                                <div class=" container-megamenu  horizontal">


                                    <div class="megamenu-wrapper">

                                        <span id="remove-megamenu" class="fa fa-times"></span>

                                        <div class="megamenu-pattern">

                                            <div class="container" style="float: right;">
                                                <ul class="megamenu">
                                                    <li class="home">
                                                        <a
                                                            href="${contextPath}">
                                                            <span><strong>TRANG CHỦ</strong></span> </a>
                                                    </li>
                                                    <li class='full-width'>
                                                        <a href= "<c:url value="/product" />"
                                                           class='clearfix'>
                                                            <strong>
                                                                SẢN PHẨM
                                                            </strong>
                                                        </a>
                                                    </li>
                                                    <li class='full-width with-sub-menu hover'>
                                                        <p class='close-menu'></p><a href='' class='clearfix'>
                                                            <strong>
                                                                Loại giày
                                                            </strong>
                                                            <b class='caret'></b>
                                                        </a>
                                                        <div class="sub-menu" style="width:230px">
                                                            <div class="content">
                                                                <div class="row">
                                                                    <div class="col-sm-6">
                                                                        <div class="html ">
                                                                            <ul class="row-list">
                                                                                <% for (int i = 0; i < types.size() / 2; i++) {%>
                                                                                <li>
                                                                                    <a class="subcategory_item"
                                                                                       href="<c:url value="/product/style?id="/><%=types.get(i).getMaLoaiGiay()%>"><%=types.get(i).getTenLoaiGiay()%></a>
                                                                                </li>
                                                                                <%}%>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <div class="html ">
                                                                            <ul class="row-list">
                                                                                <% for (int i = types.size() / 2 + 1; i < types.size(); i++) {%>
                                                                                <li>
                                                                                    <a class="subcategory_item"
                                                                                       href="<c:url value="/product/style?id="/><%=types.get(i).getMaLoaiGiay()%>"><%=types.get(i).getTenLoaiGiay()%></a>
                                                                                </li>
                                                                                <%}%>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class='item-style1 with-sub-menu hover'>
                                                        <p class='close-menu'></p><a href='' class='clearfix'>
                                                            <strong>
                                                                <img src="<c:url value="/resources/images/common/hot-icon.png" />"
                                                                     alt="">Hãng giày
                                                            </strong>
                                                            <b class='caret'></b>
                                                        </a>
                                                        <div class="sub-menu" style="width:230px">
                                                            <div class="content">
                                                                <div class="row">
                                                                    <div class="col-sm-6">
                                                                        <div class="html ">
                                                                            <ul class="row-list">
                                                                                <% for (int i = 0; i < manus.size() / 2; i++) {%>
                                                                                <li>
                                                                                    <a class="subcategory_item"
                                                                                       href="<c:url value="/product/manu?id="/><%=manus.get(i).getMaHang()%>"><%=manus.get(i).getTenHangGiay()%></a>
                                                                                </li>
                                                                                <%}%>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <div class="html ">
                                                                            <ul class="row-list">
                                                                                <% for (int i = manus.size() / 2 + 1; i < manus.size(); i++) {%>
                                                                                <li>
                                                                                    <a class="subcategory_item"
                                                                                       href="<c:url value="/product/manu?id="/><%=manus.get(i).getMaHang()%>"><%=manus.get(i).getTenHangGiay()%></a>
                                                                                </li>
                                                                                <%}%>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class='style-page with-sub-menu hover'>
                                                        <p class='close-menu'></p><a href='' class='clearfix'>
                                                            <strong>
                                                                Pages
                                                            </strong>

                                                            <b class='caret'></b>
                                                        </a>
                                                        <div class="sub-menu" style="width:230px">
                                                            <div class="content">
                                                                <div class="row">
                                                                    <div class="col-sm-6">
                                                                        <div class="html ">
                                                                            <ul class="row-list">
                                                                                <li>
                                                                                    <a class="subcategory_item"
                                                                                       href="${contextPath}">Trang chủ</a>
                                                                                </li>
                                                                                <li>
                                                                                    <a class="subcategory_item"
                                                                                       href="<c:url value="/product"/>">Sản phẩm</a>
                                                                                </li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="<c:url value="/customer/cart"/>">Giỏ hàng</a>
                                                                                </li>

                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <div class="html ">
                                                                            <ul class="row-list">
                                                                                <li><a class="subcategory_item"
                                                                                       href="<c:url value="/customer/register"/>">Đăng ký</a>
                                                                                </li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="<c:url value="/manager"/>">Quản lý</a>
                                                                                </li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="<c:url value="/customer/login"/>">Đăng nhập</a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </nav>
                        </div>
                        <!-- //end Navbar -->
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- end container for top line of header -->

    <!-- Header Bottom -->
    <div class="header-bottom">
        <div class="container">
            <div class="row">
                <div class="header-bottom-inner">

                    <div class="header-bottom-left col-md-3 col-sm-2 col-xs-2">

                        <div class="responsive so-megamenu">
                            <div class="so-vertical-menu no-gutter">
                                <nav class="navbar-default">
                                    <div class=" container-megamenu container vertical ">
                                        <div id="menuHeading">
                                            <div class="megamenuToogle-wrapper">
                                                <div class="megamenuToogle-pattern">
                                                    <div class="container ">
                                                        Danh mục </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="navbar-header hidden-lg hidden-md">
                                            <button type="button" id="show-verticalmenu" data-toggle="collapse"
                                                    class="navbar-toggle">
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                            </button>
                                        </div>

                                        <div class="vertical-wrapper ">
                                            <span id="remove-verticalmenu" class="fa fa-times"></span>

                                            <div class="megamenu-pattern">
                                                <div class="container">
                                                    <ul class="megamenu">
                                                        <% for (HangGiay h : manus) {%>
                                                        <li class='item-vertical style1 with-sub-menu hover'>
                                                            <p class='close-menu'></p>
                                                            <a href= "<c:url value="/product/manu?id="/><%=h.getMaHang()%>" class='clearfix'>
                                                                <span><strong>
                                                                        <i class='icon icon1'></i><%=h.getTenHangGiay()%>
                                                                    </strong></span>
                                                                <span class='label'> </span>
                                                            </a>
                                                        </li>
                                                        <%}%>

                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>

                    <div class="header-bottom-right col-md-9 col-sm-10 col-xs-10">
                        <!-- Search -->
                        <div class="col-lg-9 col-md-8 col-sm-7 col-xs-9 header_search">
                            <div id="sosearchpro" class="sosearchpro-wrapper so-search compact-hidden">
                                <form method="GET" action="index.php">
                                    <div id="search1" class="search input-group">
                                        <div class="select_category filter_type  icon-select">
                                            <select class="no-border" name="category_id">
                                                <option value="0">All Category</option>
                                                <option value="20">Desktops</option>
                                                <option value="26">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Home 9
                                                </option>

                                                <option value="27">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Home 8
                                                </option>

                                                <option value="18">Laptops &amp; Notebooks</option>
                                                <option value="46">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Macs
                                                </option>

                                                <option value="45">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Windows
                                                </option>

                                                <option value="25">Automotive</option>
                                                <option value="35">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gadgets
                                                    &amp; Auto Parts</option>

                                                <option value="36">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;More Car
                                                    Accessories</option>

                                                <option value="29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Car
                                                    Alarms and Security</option>

                                                <option value="28">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Car Audio
                                                    &amp; Speakers</option>

                                                <option value="30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Printers
                                                </option>

                                                <option value="31">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Scanners
                                                </option>

                                                <option value="32">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Web
                                                    Cameras</option>

                                                <option value="57">Mobile &amp; Tablet </option>
                                                <option value="68">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hanet
                                                    magente</option>

                                                <option value="69">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Knage
                                                    unget</option>

                                                <option value="70">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Latenge
                                                    mange</option>

                                                <option value="67">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Punge
                                                    nenune</option>

                                                <option value="71">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Qunge
                                                    genga</option>

                                                <option value="65">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tange
                                                    manue</option>

                                                <option value="17">Electronics </option>
                                                <option value="64">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Angene
                                                    mafin</option>

                                                <option value="60">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Egante
                                                    mangetes</option>

                                                <option value="62">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gante
                                                    extensg</option>

                                                <option value="61">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Guntes
                                                    magesg</option>

                                                <option value="66">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rengae
                                                    manges</option>

                                                <option value="63">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sine
                                                    engain</option>

                                                <option value="33">Apparel</option>
                                                <option value="76">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Accessories</option>

                                                <option value="80">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Bags
                                                </option>

                                                <option value="74">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Computers
                                                </option>

                                                <option value="72">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Electronics</option>

                                                <option value="79">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Fashion
                                                </option>

                                                <option value="77">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Men
                                                </option>

                                                <option value="73">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mobiles
                                                </option>

                                                <option value="75">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sports
                                                </option>

                                                <option value="81">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Watches
                                                </option>

                                                <option value="78">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Women
                                                </option>

                                                <option value="34">Computer</option>
                                                <option value="43">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Camping
                                                    &amp; Hiking</option>

                                                <option value="47">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Cusen
                                                    mariot</option>

                                                <option value="48">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Denta
                                                    magela</option>

                                                <option value="55">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Engite
                                                    nanet</option>

                                                <option value="44">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Theid
                                                    cupensg</option>

                                                <option value="59">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Verture
                                                    agoent</option>

                                            </select>
                                        </div>

                                        <input class="autosearch-input form-control" type="text" value="" size="50"
                                               autocomplete="off" placeholder="Search" name="search">
                                        <span class="input-group-btn">
                                            <button type="submit" class="button-search btn btn-default btn-lg"
                                                    name="submit_search"><i class="fa fa-search"></i></button>
                                        </span>
                                    </div>
                                    <input type="hidden" name="route" value="product/search" />
                                </form>
                            </div>
                            <script type="text/javascript">


                                $(document).ready(function () {
                                    var selector = '#search1';
                                    var total = 0;
                                    var showimage = 1;
                                    var showprice = 1;
                                    var character = 3;
                                    var height = 100;
                                    var width = 100;


                                    $(selector).find('input[name=\'search\']').Soautocomplete({
                                        delay: 500,
                                        source: function (request, response) {
                                            var category_id = $(".select_category select[name=\"category_id\"]").first().val();
                                            if (typeof (category_id) == 'undefined')
                                                category_id = 0;
                                            var limit = 5;
                                            if (request.length >= character) {
                                                $.ajax({
                                                    url: 'index.php?route=module/so_searchpro/autocomplete&filter_category_id=' + category_id + '&limit=' + limit + '&width=' + width + '&height=' + height + '&filter_name=' + encodeURIComponent(request),
                                                    dataType: 'json',
                                                    success: function (json) {
                                                        response($.map(json, function (item) {
                                                            total = 0;
                                                            if (item.total) {
                                                                total = item.total;
                                                            }

                                                            return {
                                                                price: item.price,
                                                                special: item.special,
                                                                tax: item.tax,
                                                                label: item.name,
                                                                image: item.image,
                                                                link: item.link,
                                                                minimum: item.minimum,
                                                                show_price: showprice,
                                                                show_image: showimage,
                                                                value: item.product_id,
                                                            }
                                                        }));
                                                    }
                                                });
                                            }
                                        },
                                    });
                                });

                            </script>
                        </div>
                        <div class="header_custom_link hidden-xs">
                            <ul>
                                <li><a href="<c:url value="/customer/login"/>"><i
                                            class="fa fa-user"></i> ĐĂNG NHẬP</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- Navbar switcher -->
    <div class="navbar-switcher-container">
        <div class="navbar-switcher">
            <span class="i-inactive">
                <i class="fa fa-caret-down"></i>
            </span>
            <span class="i-active fa fa-times"></span>
        </div>
    </div>
    <!-- //end Navbar switcher -->
</div>