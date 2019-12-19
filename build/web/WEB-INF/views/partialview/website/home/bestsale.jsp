<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>

<aside class="col-md-3 col-sm-4  content-aside right_column">
    <div class="moduletable module best-seller">
        <h3 class="modtitle"><span>SIÊU KHUYẾN MẠI</span></h3>
        <div id="sp_extra_slider_4020127831575645790" class="so-extraslider buttom-type1 preset00-1 preset01-1 preset02-1 preset03-1 preset04-1 button-type1 ">
            <div class="extraslider-inner owl2-carousel owl2-theme owl2-loaded" data-effect="none">
                <div class="owl2-stage-outer">
                    <div class="owl2-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 669px;">
                        <div class="owl2-item active" style="width: 218px; margin-right: 5px; opacity: 1;">
                            <div class="item ">
                                <c:forEach  var="shoes" items="${best_sale_shoes}" >
                                    <div class="item-wrap style1">
                                        <div class="item-wrap-inner media">
                                            <div class="media-left">
                                                <div class="item-image">
                                                    <div class="item-img-info">
                                                        <a href="" class="lt-image" target="_self" title="${shoes.tenGiay}">
                                                            <c:set var = "images" value = "${shoes.hinhAnhs.toArray()}"/>
                                                            <c:forEach var= "i" begin="0" end = "1" >
                                                                <c:choose>
                                                                    <c:when test="${not empty images[i]}">
                                                                        <img src="<c:url value ="/resources/images/shoes/${images[i].getLink()}"/>" style="width:84px ; height: 84px; " class="img-${i+1}" alt="${shoes.tenGiay}">
                                                                    </c:when>    
                                                                    <c:otherwise>
                                                                        <img src="<c:url value ="/resources/images/shoes/${path_default}"/>" style="width:84px ; height: 84px; "  class="img-${i+1}" alt="${shoes.tenGiay}">
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </c:forEach>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="media-body">
                                                <div class="item-info">
                                                    <div class="item-title">
                                                        <a href="<c:url value ="/product/single?id=${shoes.maGiay}" />" title="${shoes.tenGiay}">
                                                            ${shoes.tenGiay}											
                                                        </a>
                                                    </div>
                                                    <div class="item-content">

                                                        <div class="content_price">
                                                            <span class="price product-price">
                                                                <fmt:formatNumber type ="currency" value="${shoes.gia - (shoes.gia* shoes.giamGia /100)}"/> VND							  							  
                                                                <span class="price-old" style="padding: 0px"><b>Giá :</b>${shoes.gia} VND</span>				
                                                            </span>
                                                        </div>
                                                    </div>
                                                </div>
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
</aside>