<% request.setCharacterEncoding("utf-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:template-website title="Index">
    <jsp:attribute name="content">
        <div class="so-slider">
            <div class="container">
                
                <div id="so-slideshow" class="col-md-offset-3 col-md-12 col-xs-12 module sohomepage-slider ">
                    <div class="modcontent">
                        <div id="sohomepage-slider1">
                            <div class="so-homeslider sohomeslider-inner-1">
                                <div class="item ">
                                    <a href="#" title="Slider 1-1" target="_blank">
                                        <img class="responsive"
                                             src="<c:url value="/resources/images/common/slide/1-870x433.jpg" />"
                                             alt="Slider 1-1" />
                                    </a>
                                    <div class="sohomeslider-description">
                                        <div class="text pos-right text-sl11">
                                            <h3 class="tilte modtitle-sl11 ">Nikon D7100</h3>
                                            <p class="des des-sl11">Ultimate image quality. Create without
                                                limination
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="item ">
                                    <a href="#" title="Slider 1-2" target="_blank">
                                        <img class="responsive"
                                             src="<c:url value="/resources/images/common/slide/1-870x433_1.jpg" />"
                                             alt="Slider 1-2" />
                                    </a>
                                    <div class="sohomeslider-description">
                                        <div class="text pos-right text-sl12">
                                            <h3 class="tilte modtitle-sl12">OUR NEW RANGE OF</h3>
                                            <h4 class="titleh4">TABLET</h4>
                                            <p class="des des-sl11">FOR LESS THAN $99.00</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="item ">
                                    <a href="#" title="Slider 1-3" target="_blank">
                                        <img class="responsive"
                                             src="<c:url value="/resources/images/common/slide/1-870x433_2.jpg" />"
                                             alt="Slider 1-3" />
                                    </a>
                                    <div class="sohomeslider-description">
                                        <div class="text pos-left text-sl13">
                                            <h3 class="tilte modtitle-sl13">OUR NEW RANGE OF</h3>
                                            <h4 class="titleh4">IMACS</h4>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <script type="text/javascript">
                                var owl = $(".sohomeslider-inner-1");
                                var total_item = 3;
                                function customCenter() {
                                    $(".owl2-item.active .item .sohomeslider-description .image ").addClass("img-active");
                                    $(".owl2-item.active .item .sohomeslider-description .text .tilte ").addClass("title-active");
                                    $(".owl2-item.active .item .sohomeslider-description .text h4 ").addClass("h4-active");
                                    $(".owl2-item.active .item .sohomeslider-description .text .des").addClass("des-active");
                                }
                                function customPager() {
                                    $(".owl2-item.active .item .sohomeslider-description .image ").addClass("img-active");
                                    $(".owl2-item.active .item .sohomeslider-description .text .tilte ").addClass("title-active");
                                    $(".owl2-item.active .item .sohomeslider-description .text h4 ").addClass("h4-active");
                                    $(".owl2-item.active .item .sohomeslider-description .text .des").addClass("des-active");
                                }
                                $(".sohomeslider-inner-1").owlCarousel2({
                                    animateOut: 'slideOutDown',
                                    animateIn: 'slideInDown',
                                    autoplay: false,
                                    autoplayTimeout: 5000,
                                    autoplaySpeed: 1000,
                                    smartSpeed: 500,
                                    autoplayHoverPause: true,
                                    startPosition: 0,
                                    mouseDrag: true,
                                    touchDrag: true,
                                    dots: true,
                                    autoWidth: false,
                                    dotClass: "owl2-dot",
                                    dotsClass: "owl2-dots",
                                    loop: true,
                                    navText: ["Next", "Prev"],
                                    navClass: ["owl2-prev", "owl2-next"],
                                    responsive: {
                                        0: {
                                            items: 1,
                                            nav: total_item <= 1 ? false : ((true) ? true : false),
                                        },
                                        480: {
                                            items: 1,
                                            nav: total_item <= 1 ? false : ((true) ? true : false),
                                        },
                                        768: {
                                            items: 1,
                                            nav: total_item <= 1 ? false : ((true) ? true : false),
                                        },
                                        992: {
                                            items: 1,
                                            nav: total_item <= 1 ? false : ((true) ? true : false),
                                        },
                                        1200: {
                                            items: 1,
                                            nav: total_item <= 1 ? false : ((true) ? true : false),
                                        }
                                    },
                                    onInitialized: customPager,
                                    onTranslated: customCenter,
                                });
                            </script>
                        </div>
                    </div>

                    <div class="loader-mod-box"></div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div id="content" class="col-md-9 col-sm-8 col-xs-12">
                    <div class="module so-deals">
                        <h3 class="modtitle"><span>Giới thiệu</span></h3>
                        <div class="modcontent">
                            <br>
                            Đây là phần thông tin giới thiệu về trang web do nhóm 
                            Đây là phần thông tin giới thiệu về trang web do nhóm
                            Đây là phần thông tin giới thiệu về trang web do nhóm 
                            Đây là phần thông tin giới thiệu về trang web do nhóm  
                            <br>
                            Đây là phần thông tin giới thiệu về trang web do nhóm 
                            Đây là phần thông tin giới thiệu về trang web do nhóm 
                            <br>
                            <br>
                            Đây là phần thông tin giới thiệu về trang web do nhóm 
                            Đây là phần thông tin giới thiệu về trang web do nhóm
                            Đây là phần thông tin giới thiệu về trang web do nhóm 
                            Đây là phần thông tin giới thiệu về trang web do nhóm  
                            <br>
                            Đây là phần thông tin giới thiệu về trang web do nhóm 
                            Đây là phần thông tin giới thiệu về trang web do nhóm 
                            <br>
                            Đây là phần thông tin giới thiệu về trang web do nhóm 
                            Đây là phần thông tin giới thiệu về trang web do nhóm 
                            <br>
                            <br>
                            Đây là phần thông tin giới thiệu về trang web do nhóm 
                            Đây là phần thông tin giới thiệu về trang web do nhóm
                            Đây là phần thông tin giới thiệu về trang web do nhóm 
                            Đây là phần thông tin giới thiệu về trang web do nhóm  
                            <br>
                            Đây là phần thông tin giới thiệu về trang web do nhóm 
                            Đây là phần thông tin giới thiệu về trang web do nhóm 
                            <br>
                            Đây là phần thông tin giới thiệu về trang web do nhóm 
                            Đây là phần thông tin giới thiệu về trang web do nhóm 
                            <br>
                            <br>
                            Đây là phần thông tin giới thiệu về trang web do nhóm 
                            Đây là phần thông tin giới thiệu về trang web do nhóm
                            Đây là phần thông tin giới thiệu về trang web do nhóm 
                            Đây là phần thông tin giới thiệu về trang web do nhóm  
                        </div>
                    </div>
                    <div class="loader-mod-box"></div>

                </div>
                <aside class="col-md-3 col-sm-4  content-aside right_column">
                    <div class="moduletable module best-seller">
                        <h3 class="modtitle"><span>SIÊU KHUYẾN MẠI</span></h3>
                        <div id="sp_extra_slider_4020127831575645790" class="so-extraslider buttom-type1 preset00-1 preset01-1 preset02-1 preset03-1 preset04-1 button-type1 ">
                            <div class="extraslider-inner owl2-carousel owl2-theme owl2-loaded" data-effect="none">
                                <div class="owl2-stage-outer">
                                    <div class="owl2-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 669px;">
                                        <div class="owl2-item active" style="width: 218px; margin-right: 5px; opacity: 1;"><div class="item ">
                                                <div class="item-wrap style1">
                                                    <div class="item-wrap-inner media">
                                                        <div class="media-left">
                                                            <div class="item-image">
                                                                <div class="item-img-info">

                                                                    <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=42" class="lt-image" target="_self" title="Bikum masen dumas">
                                                                        <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/36-85x85.jpg" class="img-1" alt="Bikum masen dumas">
                                                                        <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/37-85x85.jpg" class="img-2" alt="Bikum masen dumas">
                                                                    </a>

                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="media-body">
                                                            <div class="item-info">
                                                                <div class="rating">
                                                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                </div>
                                                                <div class="item-title">
                                                                    <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=42" target="_self" title="Bikum masen dumas">
                                                                        Bikum masen dum..												</a>
                                                                </div>


                                                                <!-- Begin item-content -->
                                                                <div class="item-content">

                                                                    <div class="content_price">
                                                                        <span class="price product-price">
                                                                            122.000VNĐ														</span>

                                                                    </div>



                                                                </div>
                                                                <!-- End item-content -->
                                                            </div>
                                                        </div><!-- End item-info -->

                                                    </div>
                                                    <!-- End item-wrap-inner -->
                                                </div>
                                                <!-- End item-wrap -->
                                                <div class="item-wrap style1">
                                                    <div class="item-wrap-inner media">
                                                        <div class="media-left">
                                                            <div class="item-image">
                                                                <div class="item-img-info">

                                                                    <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=88" class="lt-image" target="_self" title="Pounds drumstick">
                                                                        <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/f13-85x85.jpg" class="img-1" alt="Pounds drumstick">
                                                                        <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/f19-85x85.jpg" class="img-2" alt="Pounds drumstick">
                                                                    </a>

                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="media-body">
                                                            <div class="item-info">
                                                                <div class="rating">
                                                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                    <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                </div>
                                                                <div class="item-title">
                                                                    <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=88" target="_self" title="Pounds drumstick">
                                                                        Pounds drumstic..												</a>
                                                                </div>


                                                                <!-- Begin item-content -->
                                                                <div class="item-content">

                                                                    <div class="content_price">
                                                                        <span class="price product-price">
                                                                            33.000VNĐ														</span>

                                                                    </div>



                                                                </div>
                                                                <!-- End item-content -->
                                                            </div>
                                                        </div><!-- End item-info -->

                                                    </div>
                                                    <!-- End item-wrap-inner -->
                                                </div>
                                                <!-- End item-wrap -->
                                                <div class="item-wrap style1">
                                                    <div class="item-wrap-inner media">
                                                        <div class="media-left">
                                                            <div class="item-image">
                                                                <div class="item-img-info">

                                                                    <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=79" class="lt-image" target="_self" title="Deserunt bresaola">
                                                                        <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/f4-85x85.jpg" class="img-1" alt="Deserunt bresaola">
                                                                        <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/f8-85x85.jpg" class="img-2" alt="Deserunt bresaola">
                                                                    </a>

                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="media-body">
                                                            <div class="item-info">
       
                                                                <div class="item-title">
                                                                    <a href="#" title="Deserunt bresaola">
                                                                        Deserunt bresao..												</a>
                                                                </div>


                                                                <!-- Begin item-content -->
                                                                <div class="item-content">

                                                                    <div class="content_price">
                                                                        <span class="old-price product-price">45.000VNĐ</span>&nbsp;&nbsp;
                                                                        <span class="price-old">89.000VNĐ</span>&nbsp;

                                                                    </div>



                                                                </div>
                                                                <!-- End item-content -->
                                                            </div>
                                                        </div><!-- End item-info -->

                                                    </div>
                                                    <!-- End item-wrap-inner -->
                                                </div>
                                                <!-- End item-wrap -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </aside>
            </div>
        </div>
        <div class="so-spotlight1">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="module cus-style-supper-cate  ">
                            <div class="header">
                                <h3 class="modtitle">
                                    <span class="icon-color" style="background-color: #009688; ">
                                        <i class="fa fa-empire #009688"></i>
                                        Electronics				<small class="arow-after" style="border-color: transparent transparent  #009688 transparent">
                                        </small>
                                    </span>
                                    <strong class="line-color" style="background-color: #009688"></strong>
                                </h3>

                            </div>

                            <div id="so_super_category_154" class="so-sp-cat first-load">
                                <div class="spcat-wrap ">
                                    <div class="spcat-tabs-container" data-delay="300" data-duration="600" data-effect="none" data-ajaxurl="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=common/home" data-modid="154">
                                        <!--Begin Tabs-->
                                        <div class="spcat-tabs-wrap">
                                            <span class="spcat-tab-selected">
                                                Giảm giá					
                                            </span>
                                            <span class="spcat-tab-arrow">▼</span>
                                            <ul class="spcat-tabs cf">
                                                <li class="spcat-tab tab-sel" data-active-content=".items-category-sales" data-field_order="sales">
                                                    <span class="spcat-tab-label">
                                                        Giảm giá					
                                                    </span>
                                                </li>
                                                <li class="spcat-tab" data-active-content=".items-category-p_sort_order" data-field_order="p_sort_order">
                                                    <span class="spcat-tab-label">
                                                        Mới nhất					
                                                    </span>
                                                </li>
                                                <li class="spcat-tab" data-active-content=".items-category-p_price" data-field_order="p_price">
                                                    <span class="spcat-tab-label">
                                                        Giá					
                                                    </span>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="main-left">
                                        <div class="banner-post-text">
                                            <a href="#" title="banner">   <img src="<c:url value="/resources/images/common/jpg/s22.jpg"/>" alt="banner">   </a>                				</div>
                                        <div class="hot-category">
                                            <div class="category-wrap-cat">
                                                <div class="title-imageslider  sp-cat-title-parent">
                                                    Danh mục       
                                                </div>

                                                <div id="cat_slider_893192261575645790" class="slider">
                                                    <div class="cat_slider_inner so_category_type_default">
                                                        <div class="item">
                                                            <div class="item-inner">
                                                                <div class="cat_slider_title">

                                                                    <a  href="<c:url value="/product/single" />" title="Egante mangetes" target="_blank">
                                                                        <i class="fa fa-caret-right"></i> Egante mangetes                                    </a>
                                                                </div>

                                                            </div>
                                                        </div>
                                                        <div class="item">
                                                            <div class="item-inner">
                                                                <div class="cat_slider_title">

                                                                    <a href="<c:url value="/product/single" />" title="Guntes magesg" target="_blank">
                                                                        <i class="fa fa-caret-right"></i> Guntes magesg                                    </a>
                                                                </div>

                                                            </div>
                                                        </div>
                                                        <div class="item">
                                                            <div class="item-inner">
                                                                <div class="cat_slider_title">

                                                                    <a href="<c:url value="/product/single" />" title="Gante extensg" target="_blank">
                                                                        <i class="fa fa-caret-right"></i> Gante extensg                                    </a>
                                                                </div>

                                                            </div>
                                                        </div>
                                                        <div class="item">
                                                            <div class="item-inner">
                                                                <div class="cat_slider_title">

                                                                    <a href="<c:url value="/product/single" />" title="Sine engain" target="_blank">
                                                                        <i class="fa fa-caret-right"></i> Sine engain                                    </a>
                                                                </div>

                                                            </div>
                                                        </div>
                                                        <div class="item">
                                                            <div class="item-inner">
                                                                <div class="cat_slider_title">

                                                                    <a href="<c:url value="/product/single" />" title="Angene mafin" target="_blank">
                                                                        <i class="fa fa-caret-right"></i> Angene mafin                                    </a>
                                                                </div>

                                                            </div>
                                                        </div>
                                                        <div class="item">
                                                            <div class="item-inner">
                                                                <div class="cat_slider_title">

                                                                    <a href="<c:url value="/product/single" />" title="Rengae manges" target="_blank">
                                                                        <i class="fa fa-caret-right"></i> Rengae manges                                    </a>
                                                                </div>

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                    <div class="main-right">
                                        <div class="banner-pre-text">
                                            <a href="#" title="banner">   
                                                <img src="<c:url value="/resources/images/common/jpg/t22.jpg"/>" alt="banner">            
                                            </a>           				
                                        </div>
                                        <div class="spcat-items-container products-list grid show-pre show-row"><!--Begin Items-->
                                            <div class="spcat-items  spcat-items-loaded items-category-sales product-layout spcat-items-selected" data-total="13">
                                                <div class="spcat-items-inner spcat00-4 spcat01-4 spcat02-3 spcat03-2 spcat04-1 none">
                                                    <div class="ltabs-items-inner owl2-carousel ltabs-slider ">				<div class="ltabs-item ">
                                                            <div class="item-inner product-thumb product-item-container transition ">
                                                                <div class="left-block">
                                                                    <div class="product-image-container">
                                                                        <div class="image">
                                                                            <a class="lt-image" href="<c:url value="/product/single" />" target="_blank" title="Kenle masen itc..">
                                                                                <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/el5-183x183.jpg" class="img-1" alt="Kenle masen itcute">
                                                                                <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/el6-183x183.jpg" class="img-2" alt="Kenle masen itcute">
                                                                            </a>
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                                <div class="right-block">
                                                                    <div class="caption">
                                                                        <h4>
                                                                            <a href="<c:url value="/product/single" />" title="Kenle masen itc..">
                                                                                Kenle masen itc								
                                                                            </a>
                                                                        </h4>
                                                                        <p class="price">
                                                                            800.000VNĐ							  							  
                                                                            <span class="price-old">Ex Tax: 900.000VNĐ</span>
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="ltabs-item ">

                                                            <div class="item-inner product-thumb product-item-container transition ">
                                                                <div class="left-block">
                                                                    <div class="product-image-container">
                                                                        <div class="image">
                                                                            <a class="lt-image" href="<c:url value="/product/single" />" target="_blank" title="Duidem rerum fa..">
                                                                                <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/3-183x183.PNG" class="img-1" alt="Duidem rerum facilis">
                                                                                <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/38-183x183.jpg" class="img-2" alt="Duidem rerum facilis">
                                                                            </a>
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                                <div class="right-block">
                                                                    <div class="caption">

                                                                        <h4>
                                                                            <a href="<c:url value="/product/single" />" title="Duidem rerum fa.." >
                                                                                Duidem rerum fa								
                                                                            </a>
                                                                        </h4>

                                                                        <p class="price">
                                                                            123.200VNĐ							  							  
                                                                            <span class="price-old">Ex Tax: 201.000VNĐ</span>
                                                                        </p>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>

                                                        <div class="ltabs-item ">

                                                            <div class="item-inner product-thumb product-item-container transition ">
                                                                <div class="left-block">
                                                                    <div class="product-image-container">
                                                                        <div class="image">
                                                                            <a class="lt-image" href="<c:url value="/product/single" />" target="_blank" title="Dail miren tuka..">
                                                                                <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/38-183x183.jpg" class="img-1" alt="Dail miren tukan potrem">
                                                                                <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/36-183x183.jpg" class="img-2" alt="Dail miren tukan potrem">
                                                                            </a>
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                                <div class="right-block">
                                                                    <div class="caption">

                                                                        <h4>
                                                                            <a href="<c:url value="/product/single" />" title="Dail miren tuka..">
                                                                                Dail miren tuka								
                                                                            </a>
                                                                        </h4>

                                                                        <p class="price">
                                                                            122.000VNĐ							  							  
                                                                            <span class="price-old">Ex Tax: 100.000VNĐ</span>
                                                                        </p>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>

                                                        <div class="ltabs-item ">

                                                            <div class="item-inner product-thumb product-item-container transition ">
                                                                <div class="left-block">
                                                                    <div class="product-image-container">
                                                                        <div class="image">
                                                                            <a class="lt-image" href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=89" target="_blank" title="Cornedbeef turk..">
                                                                                <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/f14-183x183.jpg" class="img-1" alt="Cornedbeef turkeysed">
                                                                                <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/f7-183x183.jpg" class="img-2" alt="Cornedbeef turkeysed">
                                                                            </a>
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                                <div class="right-block">
                                                                    <div class="caption">
                                                                        <h4>
                                                                            <a href="<c:url value="/product/single" />" title="Cornedbeef turk.." >
                                                                                Cornedbeef turk								</a>
                                                                        </h4>

                                                                        <p class="price">
                                                                            99.000VNĐ							  							  
                                                                            <span class="price-tax">Ex Tax: 99.000VNĐ</span>
                                                                        </p>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>

                                                        <div class="ltabs-item ">

                                                            <div class="item-inner product-thumb product-item-container transition ">
                                                                <div class="left-block">
                                                                    <div class="product-image-container">
                                                                        <div class="image">
                                                                            <a class="lt-image" href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=55" target="_blank" title="Cuid dens inteu">
                                                                                <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/33-183x183.jpg" class="img-1" alt="Cuid dens inteu">
                                                                                <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/e27-183x183.jpg" class="img-2" alt="Cuid dens inteu">
                                                                            </a>
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                                <div class="right-block">
                                                                    <div class="caption">
                                                                        <h4>
                                                                            <a href="<c:url value="/product/single" />" >
                                                                                Cuid dens inteu								</a>
                                                                        </h4>

                                                                        <p class="price">
                                                                            70.000VNĐ							  							  
                                                                            <span class="price-tax">Ex Tax: 70.000VNĐ</span>
                                                                        </p>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>

                                                        <div class="ltabs-item ">

                                                            <div class="item-inner product-thumb product-item-container transition last-product">
                                                                <div class="left-block">
                                                                    <div class="product-image-container">
                                                                        <div class="image">
                                                                            <a class="lt-image" href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=59" target="_blank" title="Sende cuisei in..">
                                                                                <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/el3-183x183.jpg" class="img-1" alt="Sende cuisei inges">
                                                                                <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/35-183x183.jpg" class="img-2" alt="Sende cuisei inges">
                                                                            </a>
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                                <div class="right-block">
                                                                    <div class="caption">


                                                                        <h4>
                                                                            <a href="<c:url value="/product/single" />" title="Sende cuisei in.." >
                                                                                Sende cuisei in								</a>
                                                                        </h4>

                                                                        <p class="price">90.000 
                                                                            <span class="price-tax">Ex Tax: 70.000VNĐ</span>
                                                                        </p>
                                                                    </div>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!--End Items-->
                                    </div>
                                </div>
                                <script type="text/javascript">
                                    //<![CDATA[
                                    jQuery(document).ready(function ($) {
                                        (function (element) {
                                            var type_show = 'slider';
                                            var rows = '1';
                                            var $element = $(element),
                                                    $tab = $('.spcat-tab', $element),
                                                    $tab_label = $('.spcat-tab-label', $tab),
                                                    $tabs = $('.spcat-tabs', $element),
                                                    ajax_url = $tabs.parents('.spcat-tabs-container').attr('data-ajaxurl'),
                                                    effect = $tabs.parents('.spcat-tabs-container').attr('data-effect'),
                                                    delay = $tabs.parents('.spcat-tabs-container').attr('data-delay'),
                                                    duration = $tabs.parents('.spcat-tabs-container').attr('data-duration'),
                                                    rl_moduleid = $tabs.parents('.spcat-tabs-container').attr('data-modid'),
                                                    $items_content = $('.spcat-items', $element),
                                                    $items_inner = $('.spcat-items-inner', $items_content),
                                                    $items_first_active = $('.spcat-items-selected', $element),
                                                    $load_more = $('.spcat-loadmore', $element),
                                                    $btn_loadmore = $('.spcat-loadmore-btn', $load_more),
                                                    $select_box = $('.spcat-selectbox', $element),
                                                    $id_cate = $('.spcat-tab', $element).attr('data-id-cate'),
                                                    $tab_label_select = $('.spcat-tab-selected', $element),
                                                    setting = 'a:80:{s:6:"action";s:9:"save_edit";s:4:"name";s:27:"Electronics - Home Layout 1";s:18:"module_description";a:2:{i:1;a:1:{s:9:"head_name";s:11:"Electronics";}i:2;a:1:{s:9:"head_name";s:11:"Electronics";}}s:9:"head_name";s:11:"Electronics";s:17:"disp_title_module";s:1:"1";s:6:"status";s:1:"1";s:25:"advanced_mod_class_suffix";s:40:"cus-style-supper-cate  fa-empire #009688";s:16:"item_link_target";s:6:"_blank";s:8:"category";s:2:"17";s:14:"category_depth";s:1:"1";s:17:"field_product_tab";a:5:{i:0;s:7:"p_price";i:1;s:10:"p_quantity";i:2;s:6:"rating";i:3;s:12:"p_sort_order";i:4;s:5:"sales";}s:13:"field_preload";s:5:"sales";s:10:"limitation";s:1:"6";s:16:"product_ordering";s:4:"DESC";s:16:"category_column0";s:1:"4";s:16:"category_column1";s:1:"4";s:16:"category_column2";s:1:"3";s:16:"category_column3";s:1:"2";s:16:"category_column4";s:1:"1";s:24:"category_title_maxlength";s:2:"25";s:26:"display_title_sub_category";s:1:"1";s:22:"display_slide_category";s:1:"1";s:18:"show_category_type";s:1:"0";s:28:"sub_category_title_maxlength";s:2:"25";s:14:"category_width";s:3:"200";s:15:"category_height";s:3:"100";s:25:"category_placeholder_path";s:11:"nophoto.png";s:15:"product_column0";s:1:"4";s:15:"product_column1";s:1:"4";s:15:"product_column2";s:1:"3";s:15:"product_column3";s:1:"2";s:15:"product_column4";s:1:"1";s:9:"type_show";s:6:"slider";s:4:"rows";s:1:"1";s:21:"product_display_title";s:1:"1";s:23:"product_title_maxlength";s:2:"15";s:27:"product_display_description";s:1:"1";s:29:"product_description_maxlength";s:3:"200";s:21:"product_display_price";s:1:"1";s:27:"product_display_add_to_cart";s:1:"1";s:16:"display_wishlist";s:1:"1";s:15:"display_compare";s:1:"1";s:14:"display_rating";s:1:"1";s:12:"display_sale";s:1:"1";s:11:"display_new";s:1:"1";s:8:"date_day";s:1:"7";s:17:"product_image_num";s:1:"2";s:13:"product_image";s:1:"1";s:22:"product_get_image_data";s:1:"1";s:23:"product_get_image_image";s:1:"1";s:13:"product_width";s:3:"183";s:14:"product_height";s:3:"183";s:24:"product_placeholder_path";s:11:"nophoto.png";s:6:"effect";s:4:"none";s:16:"product_duration";s:3:"600";s:13:"product_delay";s:3:"300";s:18:"subcategory_center";s:1:"0";s:30:"subcategory_display_navigation";s:1:"1";s:24:"subcategory_display_loop";s:1:"1";s:24:"subcategory_margin_right";s:1:"5";s:19:"subcategory_slideby";s:1:"1";s:21:"subcategory_auto_play";s:1:"0";s:33:"subcategory_auto_interval_timeout";s:3:"300";s:28:"subcategory_auto_hover_pause";s:1:"1";s:27:"subcategory_auto_play_speed";s:3:"300";s:28:"subcategory_navigation_speed";s:4:"3000";s:26:"subcategory_start_position";s:1:"0";s:22:"subcategory_mouse_drag";s:1:"1";s:22:"subcategory_touch_drag";s:1:"1";s:16:"slider_auto_play";s:1:"1";s:25:"slider_display_navigation";s:1:"0";s:19:"slider_display_loop";s:1:"1";s:17:"slider_mouse_drag";s:1:"1";s:17:"slider_touch_drag";s:1:"1";s:23:"slider_auto_hover_pause";s:1:"1";s:28:"slider_auto_interval_timeout";s:4:"5000";s:22:"slider_auto_play_speed";s:4:"2000";s:8:"pre_text";s:170:"  &lt;a href=&quot;#&quot; title=&quot;banner&quot;&gt;   &lt;img src=&quot;image/catalog/banner/t22.jpg&quot; alt=&quot;banner&quot;&gt;            &lt;/a&gt;           ";s:9:"post_text";s:167:"   &lt;a href=&quot;#&quot; title=&quot;banner&quot;&gt;   &lt;img src=&quot;image/catalog/banner/s22.jpg&quot; alt=&quot;banner&quot;&gt;   &lt;/a&gt;                ";s:8:"moduleid";s:3:"154";}'
                                            category_id = $('.sp-cat-title-parent', $element).attr('data-catids');


                                            enableSelectBoxes();
                                            function enableSelectBoxes() {
                                                $tab_wrap = $('.spcat-tabs-wrap', $element);
                                                $tab_label_select.html($('.spcat-tab', $element).filter('.tab-sel').children('.spcat-tab-label').html());
                                                if ($(window).innerWidth() <= 479) {
                                                    $tab_wrap.addClass('spcat-selectbox');
                                                } else {
                                                    $tab_wrap.removeClass('spcat-selectbox');
                                                }
                                            }

                                            $('span.spcat-tab-selected, span.spcat-tab-arrow', $element).click(function () {
                                                if ($('.spcat-tabs', $element).hasClass('spcat-open')) {
                                                    $('.spcat-tabs', $element).removeClass('spcat-open');
                                                } else {
                                                    $('.spcat-tabs', $element).addClass('spcat-open');
                                                }
                                            });

                                            $(window).resize(function () {
                                                if ($(window).innerWidth() <= 479) {
                                                    $('.spcat-tabs-wrap', $element).addClass('spcat-selectbox');
                                                } else {
                                                    $('.spcat-tabs-wrap', $element).removeClass('spcat-selectbox');
                                                }
                                            });

                                            function showAnimateItems(el) {
                                                var $_items = $('.new-spcat-item', el), nub = 0;
                                                $('.spcat-loadmore-btn', el).fadeOut('fast');
                                                $_items.each(function (i) {
                                                    nub++;
                                                    switch (effect) {
                                                        case 'none' :
                                                            $(this).css({'opacity': '1', 'filter': 'alpha(opacity = 100)'});
                                                            break;
                                                        default:
                                                            animatesItems($(this), nub * delay, i, el);
                                                    }
                                                    if (i == $_items.length - 1) {
                                                        $('.spcat-loadmore-btn', el).fadeIn(delay);
                                                    }
                                                    $(this).removeClass('new-spcat-item');
                                                });
                                            }

                                            function animatesItems($this, fdelay, i, el) {
                                                var $_items = $('.spcat-item', el);
                                                $this.attr("style",
                                                        "-webkit-animation:" + effect + " " + duration + "ms;"
                                                        + "-moz-animation:" + effect + " " + duration + "ms;"
                                                        + "-o-animation:" + effect + " " + duration + "ms;"
                                                        + "-moz-animation-delay:" + fdelay + "ms;"
                                                        + "-webkit-animation-delay:" + fdelay + "ms;"
                                                        + "-o-animation-delay:" + fdelay + "ms;"
                                                        + "animation-delay:" + fdelay + "ms;").delay(fdelay).animate({
                                                    opacity: 1,
                                                    filter: 'alpha(opacity = 100)'
                                                }, {
                                                    delay: 100
                                                });
                                                if (i == ($_items.length - 1)) {
                                                    $(".spcat-items-inner").addClass("play");
                                                }
                                            }

                                            showAnimateItems($items_first_active);
                                            $tab.on('click.spcat-tab', function () {
                                                var $this = $(this);
                                                if ($this.hasClass('tab-sel'))
                                                    return false;
                                                if ($this.parents('.spcat-tabs').hasClass('spcat-open')) {
                                                    $this.parents('.spcat-tabs').removeClass('spcat-open');
                                                }
                                                $tab.removeClass('tab-sel');
                                                $this.addClass('tab-sel');
                                                var items_active = $this.attr('data-active-content');

                                                var _items_active = $(items_active, $element);
                                                $items_content.removeClass('spcat-items-selected');
                                                _items_active.addClass('spcat-items-selected');
                                                $tab_label_select.html($tab.filter('.tab-sel').children('.spcat-tab-label').html());
                                                var $loading = $('.spcat-loading', _items_active);
                                                var loaded = _items_active.hasClass('spcat-items-loaded');
                                                if (!loaded && !_items_active.hasClass('spcat-process')) {
                                                    _items_active.addClass('spcat-process');
                                                    var field_order = $this.attr('data-field_order');
                                                    $loading.show();
                                                    $.ajax({
                                                        type: 'POST',
                                                        url: ajax_url,
                                                        data: {
                                                            spcat_module_id: rl_moduleid,
                                                            is_ajax_super_category: 1,
                                                            ajax_limit_start: 0,
                                                            categoryid: category_id,
                                                            fieldorder: field_order,
                                                            setting: setting,
                                                            ajax_reslisting_start: 0,
                                                            lbmoduleid: '154'
                                                        },
                                                        success: function (data) {
                                                            if (data.items_markup != '') {
                                                                $('.spcat-items-inner', _items_active).html(data.items_markup);
                                                                _items_active.addClass('spcat-items-loaded').removeClass('spcat-process');
                                                                $loading.remove();
                                                                showAnimateItems(_items_active);
                                                                updateStatus(_items_active);
                                                                $('.iframe-link').magnificPopup({
                                                                    type: 'iframe',
                                                                    fixedContentPos: false,
                                                                    fixedBgPos: true,
                                                                    overflowY: 'auto',
                                                                    closeBtnInside: true,
                                                                    preloader: false,
                                                                    midClick: true,
                                                                    removalDelay: 300,
                                                                    mainClass: 'my-mfp-zoom-in',
                                                                    callbacks: {
                                                                        markupParse: function (template, values, item) {
                                                                            template.find('iframe').addClass('zoom-anim-dialog ');
                                                                        }
                                                                    }
                                                                });
                                                                $('[data-toggle=\'tooltip\']').tooltip({container: 'body'});
                                                                if (type_show == 'slider' && rows != 1) {
                                                                    var $tag_id = $('#so_super_category_154'),
                                                                            parent_active = $('.spcat-items-selected', $tag_id),
                                                                            total_product = parent_active.data('total'),
                                                                            tab_active = $('.ltabs-items-inner', parent_active),
                                                                            nb_column0 = 4,
                                                                            nb_column1 = 4,
                                                                            nb_column2 = 3,
                                                                            nb_column3 = 2,
                                                                            nb_column4 = 1;
                                                                    tab_active.owlCarousel2({
                                                                        nav: false,
                                                                        dots: false,
                                                                        margin: 10,
                                                                        loop: true,
                                                                        autoplay: true,
                                                                        autoplayHoverPause: true,
                                                                        autoplayTimeout: 5000,
                                                                        autoplaySpeed: 2000,
                                                                        mouseDrag: true,
                                                                        touchDrag: true,
                                                                        navRewind: true,
                                                                        navText: ['', ''],
                                                                        responsive: {
                                                                            0: {
                                                                                items: nb_column4,
                                                                                nav: (total_product / 1) >= nb_column4 ? true : false,
                                                                            },
                                                                            480: {
                                                                                items: nb_column3,
                                                                                nav: (total_product / 1) >= nb_column3 ? false : ((false) ? true : false),
                                                                            },
                                                                            768: {
                                                                                items: nb_column2,
                                                                                nav: (total_product / 1) >= nb_column2 ? false : ((false) ? true : false),
                                                                            },
                                                                            992: {
                                                                                items: nb_column1,
                                                                                nav: (total_product / 1) >= nb_column1 ? false : ((false) ? true : false),
                                                                            },
                                                                            1200: {
                                                                                items: nb_column0,
                                                                                nav: (total_product / 1) >= nb_column0 ? true : false,
                                                                            },
                                                                        }
                                                                    });
                                                                }
                                                            }
                                                        },
                                                        dataType: 'json'
                                                    });

                                                } else {
                                                    $('.spcat-item', $items_content).removeAttr('style').addClass('new-spcat-item').css('opacity', 0);
                                                    showAnimateItems(_items_active);
                                                }
                                            });

                                            function updateStatus($el) {
                                                $('.spcat-loadmore-btn', $el).removeClass('loading');
                                                var countitem = $('.spcat-item', $el).length;
                                                $('.spcat-image-loading', $el).css({display: 'none'});
                                                $('.spcat-loadmore-btn', $el).parent().attr('data-rl_start', countitem);
                                                var rl_total = $('.spcat-loadmore-btn', $el).parent().attr('data-rl_total');
                                                var rl_load = $('.spcat-loadmore-btn', $el).parent().attr('data-rl_load');
                                                var rl_allready = $('.spcat-loadmore-btn', $el).parent().attr('data-rl_allready');

                                                if (countitem >= rl_total) {
                                                    $('.spcat-loadmore-btn', $el).addClass('loaded');
                                                    $('.spcat-image-loading', $el).css({display: 'none'});
                                                    $('.spcat-loadmore-btn', $el).attr('data-label', rl_allready);
                                                    $('.spcat-loadmore-btn', $el).removeClass('loading');
                                                }
                                            }

                                            $btn_loadmore.on('click.loadmore', function () {
                                                var $this = $(this);
                                                if ($this.hasClass('loaded') || $this.hasClass('loading')) {
                                                    return false;
                                                } else {
                                                    $this.addClass('loading');
                                                    $('.spcat-image-loading', $this).css({display: 'inline-block'});
                                                    var rl_start = $this.parent().attr('data-rl_start'),
                                                            rl_moduleid = $this.parent().attr('data-modid'),
                                                            rl_ajaxurl = $this.parent().attr('data-ajaxurl'),
                                                            effect = $this.parent().attr('data-effect'),
                                                            field_order = $this.parent().attr('data-field_order'),
                                                            items_active = $this.parent().attr('data-active-content');
                                                    var _items_active = $(items_active, $element);
                                                    $.ajax({
                                                        type: 'POST',
                                                        url: rl_ajaxurl,
                                                        data: {
                                                            spcat_module_id: rl_moduleid,
                                                            is_ajax_super_category: 1,
                                                            ajax_reslisting_start: rl_start,
                                                            categoryid: category_id,
                                                            fieldorder: field_order,
                                                            setting: setting,
                                                            load_more: 1,
                                                            lbmoduleid: '154'
                                                        },
                                                        success: function (data) {
                                                            if (data.items_markup != '') {
                                                                $(data.items_markup).insertAfter($('.spcat-item', _items_active).nextAll().last());
                                                                $('.spcat-image-loading', $this).css({display: 'none'});
                                                                showAnimateItems(_items_active);
                                                                updateStatus(_items_active);
                                                            }
                                                        }, dataType: 'json'
                                                    });
                                                }
                                                return false;
                                            });
                                        })('#so_super_category_154');
                                    });
                                    //]]>
                                </script>	</div>
                            <div class="loader-mod-box" style="display: none;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="so-spotlight2">
            <div class="container">
                <div class="row">
                    <div class="module so-latest-blog latest-blog col-md-4 col-sm-6 col-xs-12">
                        <h3 class="modtitle"><span>CẬP NHẬT</span></h3>
                        <div id="so_latest_blog_180_10303509171575512144"
                             class="so-blog-external button-type2 button-type2">
                            <div class="blog-external-simple">
                                <div class="media">
                                    <div class="item">
                                        <div class="media-body">

                                            <div class="media-date-added">28<br />
                                                <span>Mar</span></div>
                                            <div class="media-content">
                                                <h4 class="media-heading">
                                                    <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=simple_blog/article/view&amp;simple_blog_article_id=8"
                                                       title="Ac tincidunt Suspendisse malesuada" target="_blank">Ac
                                                        tincidunt Suspendisse malesuada</a>
                                                </h4>
                                                <div class="description">

                                                    Commodo laoreet semper tincidunt lorem Vestibulum nunc
                                                    at In
                                                    Curabitur magna.....
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="media">
                                    <div class="item">
                                        <div class="media-body">

                                            <div class="media-date-added">01<br />
                                                <span>Sep</span></div>
                                            <div class="media-content">
                                                <h4 class="media-heading">
                                                    <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=simple_blog/article/view&amp;simple_blog_article_id=2"
                                                       title="Biten demonstraverunt lector legere legunt saepius"
                                                       target="_blank">Biten demonstraverunt lector legere
                                                        legunt
                                                        saepius</a>
                                                </h4>
                                                <div class="description">
                                                    Commodo laoreet semper tincidunt lorem Vestibulum nunc
                                                    at In
                                                    Curabitur magna. Eu.....
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="bestseller col-md-4 col-sm-6 col-xs-12">
                        <div class="bestseller-inner">
                            <div>
                                <h3>MẶT HÀNG CHẠY NHẤT</h3>
                                <div class="product-layout ">
                                    <div class="product-thumb transition">
                                        <div class="image">
                                            <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=58"><img
                                                    src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/el5-84x84.jpg"
                                                    alt="Kenle masen itcute" title="Kenle masen itcute"
                                                    class="img-responsive" />
                                            </a>
                                        </div>
                                        <div class="caption">
                                            <h4>
                                                <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=58">Kenle
                                                    masen itcute</a>
                                            </h4>
                                            <div class="description">The 30-inch Apple Cinema HD Display
                                                delivers an
                                                amazing 2560 x 1600
                                                pixel resolution. Designed specifically for the creative
                                                professional,
                                                this display provides more space for easier access to all..
                                            </div>

                                            <p class="price">
                                                <span class="price-new"> 700.000VNĐ</span>
                                                <span class="price-tax">Ex Tax: 700.000VNĐ</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-layout ">
                                    <div class="product-thumb transition">
                                        <div class="image"><a
                                                href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=40"><img
                                                    src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/3-84x84.PNG"
                                                    alt="Duidem rerum facilis" title="Duidem rerum facilis"
                                                    class="img-responsive" /></a></div>
                                        <div class="caption">
                                            <div class="rating">
                                                <span class="fa fa-stack"><i
                                                        class="fa fa-star-o fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i
                                                        class="fa fa-star-o fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i
                                                        class="fa fa-star-o fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i
                                                        class="fa fa-star-o fa-stack-2x"></i></span>
                                                <span class="fa fa-stack"><i
                                                        class="fa fa-star-o fa-stack-2x"></i></span>
                                            </div>
                                            <h4><a
                                                    href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=40">Duidem
                                                    rerum facilis</a></h4>
                                            <div class="description">
                                                iPhone is a revolutionary new mobile phone that allows you
                                                to make a
                                                call by simply tapping a name or number in your address
                                                book, a
                                                favorites list, or a call log. It also automatically syncs
                                                all y..</div>

                                            <p class="price">
                                                <span class="price-new"> 123.200VNĐ</span>
                                                <span class="price-tax">Ex Tax: 101.000VNĐ</span>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="module testimonial col-md-4 col-sm-12">
                        <div class="clients_say">
                            <div class="block-title">
                                <h3>Ý KIẾN KHÁCH HÀNG</h3>
                            </div>
                            <div class="owl-carousel slider-clients-say">
                                <div class="block_content">
                                    <div class="image"><img src="image/catalog/cms/clients_say.png" alt="">
                                    </div>
                                    <div class="block-info">
                                        <div class="text">"Aliquam1 ut tellus dignissim, cursus erat
                                            ultricies tellus
                                            cursus erat ultricies tellus.. Nulla tempus sollicitudin mauris
                                            cursus
                                            dictum. Commodo laoreet semper tincidunt lorem. Etiam id diam
                                            diam."</div>
                                        <div class="info">
                                            <div class="author">Aliquam Tellus</div>

                                        </div>
                                    </div>
                                </div>

                                <div class="block_content">
                                    <div class="image"><img src="image/catalog/cms/clients_say.png" alt="">
                                    </div>
                                    <div class="block-info">
                                        <div class="text">"Aliquam1 ut tellus dignissim, cursus erat
                                            ultricies tellus
                                            cursus erat ultricies tellus.. Nulla tempus sollicitudin mauris
                                            cursus
                                            dictum. Commodo laoreet semper tincidunt lorem. Etiam id diam
                                            diam."</div>
                                        <div class="info">
                                            <div class="author">Aliquam Tellus</div>
                                        </div>
                                    </div>
                                </div>

                                <div class="block_content">
                                    <div class="image"><img src="image/catalog/cms/clients_say.png" alt="">
                                    </div>
                                    <div class="block-info">
                                        <div class="text">"Aliquam1 ut tellus dignissim, cursus erat
                                            ultricies tellus
                                            cursus erat ultricies tellus.. Nulla tempus sollicitudin mauris
                                            cursus
                                            dictum. Commodo laoreet semper tincidunt lorem. Etiam id diam
                                            diam."</div>
                                        <div class="info">
                                            <div class="author">Aliquam Tellus</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="module manufacturer">
                        <div class="main">
                            <div id="ytcs5de86850d352610454418091575512144"
                                 class="yt-content-slider owl-theme yt-content-slider-style-1 arrow-default"
                                 data-autoplay="no" data-autoheight="no" data-delay="4" data-speed="0.6" data-margin="30"
                                 data-item_lg="5" data-item_sm="4" data-item_xs="2" data-arrows="yes"
                                 data-pagination="no" data-lazyload="no" data-loop="no" data-hoverpause="no">
                                <div class="yt-content-slide yt-clearfix yt-content-wrap">
                                    <div class="item-manu">
                                        <a href="#" title="Link">
                                            <img src="<c:url value="/resources/images/common/jpg/7.jpg"/>" alt="img">
                                        </a>
                                    </div>
                                </div>
                                <div class="yt-content-slide yt-clearfix yt-content-wrap">
                                    <div class="item-manu">
                                        <a href="#" title="Link">
                                            <img src="<c:url value="/resources/images/common/jpg/8.jpg"/>" alt="img">
                                        </a>
                                    </div>
                                </div>
                                <div class="yt-content-slide yt-clearfix yt-content-wrap">
                                    <div class="item-manu">
                                        <a href="#" title="Link">
                                            <img src="<c:url value="/resources/images/common/jpg/9.jpg"/>" alt="img">
                                        </a>
                                    </div>
                                </div>
                                <div class="yt-content-slide yt-clearfix yt-content-wrap">
                                    <div class="item-manu">
                                        <a href="#" title="Link">
                                            <img src="<c:url value="/resources/images/common/jpg/2.jpg"/>" alt="img">
                                        </a>
                                    </div>
                                </div>
                                <div class="yt-content-slide yt-clearfix yt-content-wrap">
                                    <div class="item-manu">
                                        <a href="#" title="Link">
                                            <img src="<c:url value="/resources/images/common/jpg/4.jpg"/>" alt="img">
                                        </a>
                                    </div>
                                </div>
                                <div class="yt-content-slide yt-clearfix yt-content-wrap"> </div>
                            </div>
                            <script type='text/javascript'>
                                $(document).ready(function () {
                                    $('#ytcs5de86850d352610454418091575512144').each(function () {
                                        var slider = $(this),
                                                panels = slider.children('div'),
                                                data = slider.data();

                                        // Remove unwanted br's
                                        slider.children(':not(.yt-content-slide)').remove();
                                        // Apply Owl Carousel
                                        slider.owlCarousel2({
                                            mouseDrag: true,
                                            video: true,
                                            lazyLoad: (data.lazyload == 'yes') ? true : false,
                                            autoplay: (data.autoplay == 'yes') ? true : false,
                                            autoHeight: (data.autoheight == 'yes') ? true : false,
                                            autoplayTimeout: data.delay * 1000,
                                            smartSpeed: data.speed * 1000,
                                            autoplayHoverPause: (data.hoverpause == 'yes') ? true : false,
                                            center: (data.center == 'yes') ? true : false,
                                            loop: (data.loop == 'yes') ? true : false,
                                            dots: (data.pagination == 'yes') ? true : false,
                                            nav: (data.arrows == 'yes') ? true : false,
                                            margin: data.margin,
                                            navText: ['', ''],
                                            responsive: {
                                                0: {items: data.item_xs},
                                                768: {items: data.item_sm},
                                                992: {items: data.item_lg}
                                            },
                                        });

                                    });
                                });
                            </script>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </jsp:attribute>
</t:template-website>
