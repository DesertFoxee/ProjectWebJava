<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="header" class=" variant">
    <!-- HEADER TOP -->
    <div class="header-top compact-hidden">
        <div class="container">
            <div class="row">
                <div class="header-top-left form-inline col-lg-4 col-md-5 hidden-sm hidden-xs compact-hidden">
                    <div class="form-group navbar-welcome hidden-xs">
                        <div class="welcome-msg">
                            <ul class="list-msg">
                                <li><label class="label-msg">This week</label> <a href="#">Sale special too good
                                        to miss in every gear category</a></li>
                                <li><label class="label-msg">Tomorrow</label> <a href="#">Laten ipsum dolor sit
                                        amet. In gravida pellentesque</a></li>
                            </ul>
                        </div>
                    </div>
                    <!-- END -->
                </div>
                <div class="header-top-right collapsed-block col-lg-8 col-md-7 col-xs-12 ">
                    <h5 class="tabBlockTitle visible-sm visible-xs">More<a class="expander " href="#TabBlock-1"><i
                                class="fa fa-angle-down"></i></a></h5>
                    <div class="tabBlock" id="TabBlock-1">

                        <ul class="top-link list-inline">
                            <li class="account" id="my_account"><a
                                    href="#"
                                    title="My Account" class="btn btn-xs dropdown-toggle" data-toggle="dropdown">
                                    <span>Tài khoản</span> <span class="fa fa-angle-down"></span></a>
                                <ul class="dropdown-menu ">
                                    <li><a href="<c:url value="/customer/register"/>"
                                           <i class="fa fa-user"></i> Đăng ký</a></li>
                                    <li><a href="<c:url value="/customer/login"/>"><i class="fa fa-pencil-square-o"></i> Đăng nhập</a></li>
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
                    <a href="#"><img
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
                                    <div class="navbar-header">
                                        <button type="button" id="show-megamenu" data-toggle="collapse"
                                                class="navbar-toggle">
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                            <span class="icon-bar"></span>
                                        </button>
                                    </div>

                                    <div class="megamenu-wrapper">

                                        <span id="remove-megamenu" class="fa fa-times"></span>

                                        <div class="megamenu-pattern">
                                            <div class="container" style="float: right;">
                                                <ul class="megamenu">
                                                    <li class="home">
                                                        <a
                                                            href="<c:url value="/" />">
                                                            <span><strong>Home</strong></span> </a>
                                                    </li>

                                                    <li class='full-width'>
                                                        <a href= "<c:url value="/product" />"
                                                           class='clearfix'>
                                                            <strong>
                                                                SẢN PHẨM
                                                            </strong>
                                                            <b class='caret'></b>
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
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=6">FAQ</a>
                                                                                </li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=3">Pricing
                                                                                        Tables</a></li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=11">Gallery</a>
                                                                                </li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/contact">Contact
                                                                                        us</a></li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <div class="html ">
                                                                            <ul class="row-list">
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=4">About
                                                                                        Us 1</a></li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=7">About
                                                                                        Us 2</a></li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=8">About
                                                                                        Us 3</a></li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=9">About
                                                                                        Us 4</a></li>
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
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=6">FAQ</a>
                                                                                </li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=3">Pricing
                                                                                        Tables</a></li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=11">Gallery</a>
                                                                                </li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/contact">Contact
                                                                                        us</a></li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <div class="html ">
                                                                            <ul class="row-list">
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=4">About
                                                                                        Us 1</a></li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=7">About
                                                                                        Us 2</a></li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=8">About
                                                                                        Us 3</a></li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=9">About
                                                                                        Us 4</a></li>
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
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=6">FAQ</a>
                                                                                </li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=3">Pricing
                                                                                        Tables</a></li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=11">Gallery</a>
                                                                                </li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/contact">Contact
                                                                                        us</a></li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-sm-6">
                                                                        <div class="html ">
                                                                            <ul class="row-list">
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=4">About
                                                                                        Us 1</a></li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=7">About
                                                                                        Us 2</a></li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=8">About
                                                                                        Us 3</a></li>
                                                                                <li><a class="subcategory_item"
                                                                                       href="index.php?route=information/information&amp;information_id=9">About
                                                                                        Us 4</a></li>
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

                                        <div class="vertical-wrapper">

                                            <span id="remove-verticalmenu" class="fa fa-times"></span>

                                            <div class="megamenu-pattern">
                                                <div class="container">
                                                    <ul class="megamenu">
                                                        <li class='item-vertical style1 with-sub-menu hover'>
                                                            <p class='close-menu'></p><a
                                                                href='http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=33'
                                                                class='clearfix'>
                                                                <span><strong>
                                                                        <i class='icon icon1'></i>ADIDAS
                                                                    </strong></span>
                                                                <span class='label'> </span>
                                                            </a>
                                                        </li>
                                                        <li class='item-vertical style1 with-sub-menu hover'>
                                                            <p class='close-menu'></p><a
                                                                href='http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=33'
                                                                class='clearfix'>
                                                                <span><strong>
                                                                        <i class='icon icon1'></i>NIKE
                                                                    </strong></span>
                                                                <span class='label'> </span>
                                                            </a>
                                                        </li>
                                                        <li class='item-vertical style1 with-sub-menu hover'>
                                                            <p class='close-menu'></p><a
                                                                href='http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=33'
                                                                class='clearfix'>
                                                                <span><strong>
                                                                        <i class='icon icon1'></i>PRADA
                                                                    </strong></span>
                                                                <span class='label'> </span>
                                                            </a>
                                                        </li>
                                                        <li class='item-vertical style1 with-sub-menu hover'>
                                                            <p class='close-menu'></p><a
                                                                href='http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=33'
                                                                class='clearfix'>
                                                                <span><strong>
                                                                        <i class='icon icon1'></i>ADIDAS
                                                                    </strong></span>
                                                                <span class='label'> </span>
                                                            </a>
                                                        </li>
                                                        <li class='item-vertical style1 with-sub-menu hover'>
                                                            <p class='close-menu'></p><a
                                                                href='http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=33'
                                                                class='clearfix'>
                                                                <span><strong>
                                                                        <i class='icon icon1'></i>ADIDAS
                                                                    </strong></span>
                                                                <span class='label'> </span>
                                                            </a>
                                                        </li>
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