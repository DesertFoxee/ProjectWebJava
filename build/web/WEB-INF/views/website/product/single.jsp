<%@page import="models.database.Giay"%>
<%@page import="process.Product"%>
<% request.setCharacterEncoding("utf-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>


<%
    Giay shoes = (Giay) pageContext.getAttribute("shoes", PageContext.REQUEST_SCOPE);
    int count_shoes = Product.getCountShoes(shoes);
%>
<c:set value="<%=count_shoes%>" var="count_shoes" />
<t:template-website title="Single">
    <jsp:attribute name="content">
        <div class="container ">
            <ul class="breadcrumb">
                <li>
                    <a href="<c:url value ="/"/>">
                        <i class="fa fa-home"></i>
                    </a>
                </li>
                <li>
                    <a href="<c:url value ="/product"/>">Sản phẩm</a>
                </li>
            </ul>
        </div>
        <div class="container product-detail">

            <div class="row">
                <div id="content" class="col-sm-12">

                    <div class="row product-view clearfix">
                        <div class="left-content-product col-xs-12">
                            <div class="row">

                                <div class="content-product-left  col-md-6 col-xs-12 ">
                                    <div id="thumb-slider" class="thumb-vertical-outer">
                                        <div id="thumb-slider-next" class="slider-btn lSNext"><i class="fa fa-chevron-up"></i></div>
                                        <div class="lSSlideOuter  vertical">
                                            <div class="lSSlideWrapper usingCss" style="height: 500px;">

                                                <ul class="thumb-vertical previews-list  lightSlider lsGrab lSSlide" style="height: 750px; transform: translate3d(0px, 0px, 0px);">
                                                    <div class="inner-box-desc">
                                                        <c:set var = "images" value = "${shoes.hinhAnhs.toArray()}"/>
                                                        <c:forEach var= "i" begin="0" end = "5" >
                                                            <c:choose>
                                                                <c:when test="${i ==0}">
                                                                    <li class="owl2-item lslide active" style="height: 125px; margin-bottom: 0px">
                                                                        <a class="img thumbnail active" title="${shoes.tenGiay}">
                                                                        </c:when>    
                                                                        <c:otherwise>
                                                                            <li class="owl2-item lslide" style="height: 125px; margin-bottom: 0px">
                                                                                <a class="img thumbnail" title="${shoes.tenGiay}">
                                                                                </c:otherwise>
                                                                            </c:choose>


                                                                            <c:choose>
                                                                                <c:when test="${not empty images[i]}">

                                                                                    <img src="<c:url value ="/resources/images/shoes/${images[i].getLink()}"/>" />
                                                                                </c:when>    
                                                                                <c:otherwise>
                                                                                    <img src="<c:url value ="/resources/images/shoes/${path_default}"/>" />
                                                                                </c:otherwise>
                                                                            </c:choose>
                                                                        </a>
                                                                    </li>
                                                                </c:forEach>

                                                                </ul>
                                                    </div>
                                            </div>
                                            <div id="thumb-slider-prev" class="slider-btn lSPrev"><i class="fa fa-chevron-down"></i></div>
                                        </div>

                                        <div class="large-image  vertical  ">
                                            <c:choose>
                                                <c:when test="${not empty images[0]}">
                                                    <img itemprop="image" class="product-image-zoom" src="<c:url value ="/resources/images/shoes/${images[0].getLink()}"/>" alt="Cornedbeef turkeysed">
                                                </c:when>    
                                                <c:otherwise>
                                                    <img itemprop="image" class="product-image-zoom" src="<c:url value ="/resources/images/shoes/${path_default}"/>"  alt="Cornedbeef turkeysed">
                                                </c:otherwise>
                                            </c:choose>

                                        </div>

                                    </div>
                                    <div class="content-product-right col-md-6 col-xs-12">
                                        <div class="title-product">
                                            <h1>${shoes.tenGiay}</h1>
                                        </div>
                                        <div class="box-review">
                                            <a class="reviews_button" href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;">0 review (s)</a> | <a class="write_review_button" href="" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;">Write a review</a>
                                        </div>
                                        <div class="product-label">
                                            <div class="stock">
                                                <span>Trạng thái : </span> 
                                                <c:choose> 
                                                    <c:when test="${count_shoes > 0}">
                                                        <span class="status-stock">
                                                            Trong kho
                                                        </span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <span class="status-stock" style="color: red;">
                                                            Hết hàng
                                                        </span>
                                                    </c:otherwise>
                                                </c:choose>
                                            </div>
                                            <div class="product_page_price price" itemprop="offerDetails" itemscope="" itemtype="http://data-vocabulary.org/Offer">
                                                <span class="price" itemprop="price">
                                                    <fmt:formatNumber pattern="###,###" value ="${shoes.gia - (shoes.gia* shoes.giamGia /100)}"/> VNĐ
                                                </span>																							
                                            </div>
                                        </div>
                                        <div class="product-box-desc">
                                            <div class="inner-box-desc">
                                                <div class="price-old" style="padding: 0px"><span>Giá cũ:</span>
                                                    <fmt:formatNumber pattern="###,###" value ="${shoes.gia}"/> VNĐ
                                                </div>
                                                <div class="model"><span>Hãng:</span><a href="<c:url value="/product/filter?manu=${shoes.hangGiay.tenHangGiay}&first" />"> ${shoes.hangGiay.tenHangGiay}</a> </div>
                                                <div class="model"><span>Thể loại:</span> <a href="<c:url value="/product/filter?type=${shoes.loaiGiay.tenLoaiGiay}&first" />"> ${shoes.loaiGiay.tenLoaiGiay}</a></div>
                                            </div>
                                        </div>
                                        <div class="short_description">
                                            <h3>Tổng quan</h3>
                                            ${shoes.moTa}</div>

                                        <div id="product">
                                            <div class="form-group box-info-product">
                                                <form action="<c:url value="/customer/dashboard/cart/add"/>" id="add-to-cart">
                                                    <div class="image_option_type form-group required">
                                                        <label class="control-label">Kích cỡ và số lượng hỗ trợ</label>
                                                        <ul class="product-options clearfix" id="input-option229">
                                                            <input class="kichCo" type="hidden" name="kichCo" value="">
                                                            <input type="hidden" name="maGiay" value="${shoes.maGiay}">
                                                            <c:forEach var= "size" items="${shoes.kichCos.toArray()}" >
                                                                <li class="radio">
                                                                    <label>
                                                                        <p class="size-quantity" style="margin:  0px ; text-align: center;">${size.soLuong}</p>
                                                                        <p data-original-title="Red" class="img-thumbnail icon icon-color size-shoes" style="text-align: center ;">${size.kichCo}</p>
                                                                        <i class="fa fa-check" ></i>
                                                                    </label>
                                                                </li>
                                                            </c:forEach>
                                                            <li class="radio selected-option"><span class="label label-success size-c" ></span></li>
                                                        </ul>
                                                    </div>
                                                    <div class="option quantity">
                                                        <div class="input-group quantity-control" unselectable="on" style="user-select: none;">
                                                            <label>Số lượng</label>
                                                            <input class="form-control" type="text" name="soLuong" value="1">
                                                            <span class="input-group-addon product_quantity_down">−</span>
                                                            <span class="input-group-addon product_quantity_up">+</span>
                                                        </div>
                                                    </div>
                                                    <div class="cart">
                                                        <input type="submit" data-toggle="tooltip" title="" value="Thêm vào giỏ hàng" data-loading-text="Loading..." id="button-cart" class="btn btn-mega btn-lg" data-original-title="Thêm vào giỏ hàng">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="bototm-detail col-xs-12">
                            <div class="row">
                                <div class="col-lg-3 col-md-4  col-xs-12">

                                    <!-- Products widgets desktop-->
                                    <div class="module related products-list grid">
                                        <h3 class="modtitle">
                                            <span>Sản phẩm</span>
                                        </h3>
                                        <div class="releate-products ">
                                            <!-- Products list -->
                                            <div class="product-item-container">


                                                <div class="product-item">
                                                    <div class="media">
                                                        <div class="media-left product-image-container  ">
                                                            <img src="http://opencart2.opencartworks.com/themes/so_maxshop/image/cache/catalog/product/36-270x270.jpg"
                                                                 alt="Bikum masen dumas" title="Bikum masen dumas"
                                                                 class="img-responsive" />
                                                        </div>

                                                        <div class="media-body">
                                                            <div class="caption">
                                                                <h4><a class="preview-image"
                                                                       href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/product&amp;product_id=42">Bikum
                                                                        masen dumas</a></h4>
                                                                <div class="price">
                                                                    <span class="price-new">122.000VNĐ</span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="line-divider"></div>


                                </div> <!-- End related -->


                                <div class="col-lg-9 col-md-8  col-xs-12">
                                    <div class="producttab ">
                                        <div class="tabsslider  vertical-tabs col-xs-12">

                                            <ul class="nav nav-tabs col-lg-3 col-md-4 col-sm-3">
                                                <li class="active"><a data-toggle="tab" href="#tab-1">MÔ TẢ</a>
                                                </li>


                                                <li class="item_nonactive"><a data-toggle="tab" href="#tab-review">ĐÁNH GIÁ
                                                        (0)</a></li>


                                            </ul>

                                            <div class="tab-content col-lg-9 col-md-8 col-sm-9 col-xs-12">
                                                <div id="tab-1" class="tab-pane fade active in">
                                                    <p class="intro">
                                                        ${shoes.moTa}</p>
                                                </div>
                                                <div id="tab-review" class="tab-pane fade">
                                                    <form>
                                                        <div id="review"></div>
                                                        <h2 id="review-title">Write a review</h2>
                                                        Please <a
                                                            href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=account/login">login</a>
                                                        or <a
                                                            href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=account/register">register</a>
                                                        to review
                                                    </form>
                                                </div>
                                            </div>
                                        </div><!-- End Tabs Slider -->

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </jsp:attribute>
    </t:template-website>
