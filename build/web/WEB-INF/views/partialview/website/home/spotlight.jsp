<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<div class="so-spotlight${position}">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="module cus-style-supper-cate  ">
                    <div class="header">
                        <h3 class="modtitle">
                            <span class="icon-color" style="background-color: #ea3a3c; ">
                                <i class="fa fa-empire #ea3a3c"></i>
                                ${param.title}				
                                <small class="arow-after" style="border-color: transparent transparent  #ea3a3c transparent">
                                </small>
                            </span>
                            <strong class="line-color" style="background-color: #ea3a3c;"></strong>
                        </h3>

                    </div>
                    <div id="so_super_category_154" class="so-sp-cat first-load"><!--<![endif]-->
                        <div class="spcat-wrap ">
                            <div class="spcat-tabs-container" data-delay="300" data-duration="600" data-effect="none" data-ajaxurl="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=common/home" data-modid="154">
                                <!--Begin Tabs-->
                                <div class="spcat-tabs-wrap">
                                    <span class="spcat-tab-selected">
                                        Giá				
                                    </span>
                                    <span class="spcat-tab-arrow">▼</span>
                                    <ul class="spcat-tabs cf">
                                        <li class="spcat-tab tab-loaded tab-sel" data-active-content=".items-category-rating" data-field_order="rating">
                                            <span class="spcat-tab-label">
                                                Giá					
                                            </span>
                                        </li>
                                        <li class="spcat-tab" data-active-content=".items-category-sales" data-field_order="sales">
                                            <span class="spcat-tab-label">
                                                Khuyến mại					
                                            </span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="main-left">
                                <div class="banner-post-text">
                                    <a href="#" title="banner">   
                                        <img src= "<c:url value="/resources/images/common/jpg/s22.jpg" />" alt="banner">   
                                    </a>                				
                                </div>
                                <div class="hot-category">
                                    <div class="category-wrap-cat">
                                        <div class="title-imageslider  sp-cat-title-parent">
                                            Danh mục hot        </div>

                                        <div id="cat_slider_20148406371575692380" class="slider">
                                            <div class="cat_slider_inner so_category_type_default">
                                                <div class="item">
                                                    <div class="item-inner">
                                                        <div class="cat_slider_title">
                                                            <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=60" title="Egante mangetes" target="_blank">
                                                                <i class="fa fa-caret-right"></i> Egante mangetes                                    </a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="item-inner">
                                                        <div class="cat_slider_title">

                                                            <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=61" title="Guntes magesg" target="_blank">
                                                                <i class="fa fa-caret-right"></i> Guntes magesg                                    </a>
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
                                        <img src= "<c:url value="/resources/images/common/jpg/t22.jpg" />" alt="banner" />            
                                    </a>           				
                                </div>
                                <div class="spcat-items-container products-list grid show-pre show-row">
                                    <div class="spcat-items  spcat-items-loaded items-category-sales product-layout spcat-items-loaded" data-total="13">
                                        <div class="spcat-items-inner spcat00-4 spcat01-4 spcat02-3 spcat03-2 spcat04-1 none">
                                            <div class="ltabs-items-inner owl2-carousel ltabs-slider ">				
                                                <c:forEach  var="shoes" items="${first_shoes_price}" >
                                                    <div class="ltabs-item ">
                                                        <div class="item-inner product-thumb product-item-container transition ">
                                                            <div class="left-block">
                                                                <div class="product-image-container">
                                                                    <div class="image">
                                                                        <a class="lt-image">
                                                                            <c:set var = "images" value = "${shoes.hinhAnhs.toArray()}"/>
                                                                            <c:forEach var= "i" begin="0" end = "1" >
                                                                                <c:choose>
                                                                                    <c:when test="${not empty images[i]}">
                                                                                        <img src="<c:url value ="/resources/images/shoes/${images[i].getLink()}"/>" class="img-${i+1}" alt="${shoes.tenGiay}">
                                                                                    </c:when>    
                                                                                    <c:otherwise>
                                                                                        <img src="<c:url value ="/resources/images/shoes/${path_default}"/>" class="img-${i+1}" alt="${shoes.tenGiay}">
                                                                                    </c:otherwise>
                                                                                </c:choose>
                                                                            </c:forEach>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <c:if test="${shoes.giamGia > 0}" >
                                                                    <span class="label label-sale">Giảm giá</span>
                                                                </c:if>
                                                            </div>
                                                            <div class="right-block">
                                                                <div class="caption">
                                                                    <h4>
                                                                        <a href="<c:url value ="/product/single?id=${shoes.maGiay}"/>" title="${shoes.tenGiay}">
                                                                            ${shoes.tenGiay}								
                                                                        </a>
                                                                    </h4>
                                                                    <p class="price">
                                                                        <fmt:formatNumber type ="currency" value ="${shoes.gia - (shoes.gia* shoes.giamGia /100)}"/> VND							  							  
                                                                        <span class="price-old" style="padding: 0px"><b>Giá:</b> ${shoes.gia} VND</span>
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="spcat-items  items-category-rating product-layout spcat-items-selected" data-total="13">
                                        <div class="spcat-items-inner spcat00-4 spcat01-4 spcat02-3 spcat03-2 spcat04-1 none">
                                            <div class="ltabs-items-inner owl2-carousel ltabs-slider ">
                                                <c:forEach  var="shoes" items="${first_shoes_sale}" >
                                                    <div class="ltabs-item ">
                                                        <div class="item-inner product-thumb product-item-container transition ">
                                                            <div class="left-block">
                                                                <div class="product-image-container">
                                                                    <div class="image">
                                                                        <a class="lt-image">
                                                                            <c:set var = "images" value = "${shoes.hinhAnhs.toArray()}"/>
                                                                            <c:forEach var= "i" begin="0" end = "1" >
                                                                                <c:choose>
                                                                                    <c:when test="${not empty images[i]}">
                                                                                        <img src="<c:url value ="/resources/images/shoes/${images[i].getLink()}"/>" class="img-${i+1}" alt="${shoes.tenGiay}">
                                                                                    </c:when>    
                                                                                    <c:otherwise>
                                                                                        <img src="<c:url value ="/resources/images/shoes/${path_default}"/>" class="img-${i+1}" alt="${shoes.tenGiay}">
                                                                                    </c:otherwise>
                                                                                </c:choose>
                                                                            </c:forEach>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                                <c:if test="${shoes.giamGia > 0}" >
                                                                    <span class="label label-sale">Giảm giá</span>
                                                                </c:if>
                                                            </div>
                                                            <div class="right-block">
                                                                <div class="caption">
                                                                    <h4>
                                                                        <a href="<c:url value ="/product/single?id=${shoes.maGiay}" />" title="${shoes.tenGiay}">
                                                                            ${shoes.tenGiay}								
                                                                        </a>
                                                                    </h4>
                                                                    <p class="price">
                                                                        <fmt:formatNumber type ="currency" minFractionDigits="0"
                                                                                          value ="${shoes.gia - (shoes.gia* shoes.giamGia /100)}"/> VND							  							  
                                                                        <span class="price-old" style="padding: 0px;"><b>Giá:</b>${shoes.gia} VND</span>
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--End Items-->
                            </div>
                        </div>
                    </div>
                    <div class="loader-mod-box" style="display: none;">

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>