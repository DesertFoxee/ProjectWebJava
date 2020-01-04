<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<div class="so-spotlight${param.position}">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="module cus-style-supper-cate  ">
                    <div class="header">
                        <h3 class="modtitle">
                            <span class="icon-color" style="background-color: #ea3a3c; ">
                                <i class="fa fa-empire #009688"></i>
                                ${param.title}<small class="arow-after"
                                                style="border-color: transparent transparent  #ea3a3c transparent">
                                </small>
                            </span>
                            <strong class="line-color" style="background-color: #ea3a3c"></strong>
                        </h3>
                    </div>
                    <div id="so_super_category_154" class="so-sp-cat first-load">
                        <div class="module so-latest-blog latest-blog col-md-12 col-sm-12 col-xs-12" style="padding:0px;">
                            <div class="panel panel-primary" style="border-color: #d5d8da;">
                                <div class="panel-heading" style="background-color: #736e70;">
                                    <h3 class="panel-title">&nbsp;</h3>
                                    <span class="pull-right">
                                   
                                        <ul class="nav panel-tabs">
                                            <li class="active"><a href="#tab1${param.position}" data-toggle="tab">Giá</a></li>
                                            <li><a href="#tab2${param.position}" data-toggle="tab">Khuyến mại</a></li>
                                        </ul>
                                    </span>
                                </div>
                                <div class="panel-body">
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="tab1${param.position}">
                                            <h3 class="h3">Giá tăng dần</h3>
                                            <div class="row">
                                                <c:forEach var="shoes" items="${first_shoes_price}">   
                                                    <div class="col-md-3 col-sm-6">
                                                        <div class="product-grid5">
                                                            <div class="product-image5">
                                                                <a href="<c:url value ="/product/single?id=${shoes.maGiay}"/>">
                                                                    <c:set var="images"
                                                                           value="${shoes.hinhAnhs.toArray()}" />
                                                                    <c:forEach var="i" begin="0" end="1">
                                                                        <c:choose>
                                                                            <c:when test="${not empty images[i]}">
                                                                                <img src="<c:url value ="/resources/images/shoes/${images[i].getLink()}"/>"
                                                                                     class="pic-${i+1}"
                                                                                     alt="${shoes.tenGiay}">
                                                                            </c:when>
                                                                            <c:otherwise>
                                                                                <img src="<c:url value ="/resources/images/shoes/${path_default}"/>"
                                                                                     class="pic-${i+1}"
                                                                                     alt="${shoes.tenGiay}">
                                                                            </c:otherwise>
                                                                        </c:choose>
                                                                    </c:forEach>                                                       
                                                                </a>
                                                                <ul class="social">
                                                                    <li><a href="" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
                                                                    <li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
                                                                    <li><a href="" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
                                                                </ul>
                                                                <c:if test="${shoes.giamGia > 0}"> 
                                                                    <span class="product-new-label">-${shoes.giamGia}%</span>
                                                                </c:if>
                                                                <a href="<c:url value ="/product/single?id=${shoes.maGiay}"/>" class="select-options"><i class="fa fa-arrow-right"></i> Chi tiết</a>
                                                            </div>
                                                            <div class="product-content">
                                                                <h3 class="title"><a href="<c:url value ="/product/single?id=${shoes.maGiay}"/>">${shoes.tenGiay}</a></h3>
                                                                <p class="price">
                                                                    <fmt:formatNumber pattern="###,###"
                                                                                      value="${shoes.gia - (shoes.gia* shoes.giamGia /100)}" />
                                                                    VNĐ
                                                                    <span class="price-old"
                                                                          style="padding: 0px"><b>Giá:</b>
                                                                        <fmt:formatNumber pattern="###,###"
                                                                                          value="${shoes.gia}" /> VNĐ
                                                                    </span>
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="tab2${param.position}">
                                            <h3 class="h3">Khuyến mại</h3>
                                            <div class="row">
                                                <c:forEach var="shoes" items="${first_shoes_sale}">   
                                                    <div class="col-md-3 col-sm-6">
                                                        <div class="product-grid5">
                                                            <div class="product-image5">
                                                                <a href="<c:url value ="/product/single?id=${shoes.maGiay}"/>">
                                                                    <c:set var="images"
                                                                           value="${shoes.hinhAnhs.toArray()}" />
                                                                    <c:forEach var="i" begin="0" end="1">
                                                                        <c:choose>
                                                                            <c:when test="${not empty images[i]}">
                                                                                <img src="<c:url value ="/resources/images/shoes/${images[i].getLink()}"/>"
                                                                                     class="pic-${i+1}"
                                                                                     alt="${shoes.tenGiay}">
                                                                            </c:when>
                                                                            <c:otherwise>
                                                                                <img src="<c:url value ="/resources/images/shoes/${path_default}"/>"
                                                                                     class="pic-${i+1}"
                                                                                     alt="${shoes.tenGiay}">
                                                                            </c:otherwise>
                                                                        </c:choose>
                                                                    </c:forEach>                                                       
                                                                </a>
                                                                <ul class="social">
                                                                    <li><a href="" data-tip="Quick View"><i class="fa fa-search"></i></a></li>
                                                                    <li><a href="" data-tip="Add to Wishlist"><i class="fa fa-shopping-bag"></i></a></li>
                                                                    <li><a href="" data-tip="Add to Cart"><i class="fa fa-shopping-cart"></i></a></li>
                                                                </ul>
                                                                <c:if test="${shoes.giamGia > 0}"> 
                                                                    <span class="product-new-label">-${shoes.giamGia}%</span>
                                                                </c:if>
                                                                <a href="<c:url value ="/product/single?id=${shoes.maGiay}"/>" class="select-options"><i class="fa fa-arrow-right"></i> Chi tiết</a>
                                                            </div>
                                                            <div class="product-content">
                                                                <h3 class="title"><a href="<c:url value ="/product/single?id=${shoes.maGiay}"/>">${shoes.tenGiay}</a></h3>
                                                                <p class="price">
                                                                    <fmt:formatNumber pattern="###,###"
                                                                                      value="${shoes.gia - (shoes.gia* shoes.giamGia /100)}" />
                                                                    VNĐ
                                                                    <span class="price-old"
                                                                          style="padding: 0px"><b>Giá:</b>
                                                                        <fmt:formatNumber pattern="###,###"
                                                                                          value="${shoes.gia}" /> VNĐ
                                                                    </span>
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
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
    </div>
</div>

