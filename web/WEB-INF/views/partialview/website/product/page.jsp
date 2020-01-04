<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="products-list row grid so-filter-gird">

    <c:choose>
        <c:when test="${empty list_shoes_filter}">
            Không có sản phẩm nào !
        </c:when>    
        <c:otherwise>
            <c:forEach  var="shoes" items="${list_shoes_filter}" >
                <div class="product-layout col-md-3 col-sm-6 col-xs-6 ">
                    <div class="product-item-container">
                        <div class="left-block">
                            <div class="product-image-container lt-image  ">
                                <c:set var = "images" value = "${shoes.hinhAnhs.toArray()}"/>
                                <c:forEach var= "i" begin="0" end = "1" >
                                    <a href="<c:url value="/product/single?id=${shoes.maGiay}"/>">
                                        <c:choose>
                                            <c:when test="${not empty images[i]}">
                                                <img src="<c:url value ="/resources/images/shoes/${images[i].getLink()}"/>" class="img-${i+1} img-responsive" alt="${shoes.tenGiay}">
                                            </c:when>    
                                            <c:otherwise>
                                                <img src="<c:url value ="/resources/images/shoes/${path_default}"/>" class="img-${i+1} img-responsive" alt="${shoes.tenGiay}">
                                            </c:otherwise>
                                        </c:choose>
                                    </a>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="right-block">
                            <div class="caption">
                                <h4><a href="<c:url value="/product/single?id=${shoes.maGiay}"/>">${shoes.tenGiay}</a></h4>
                                <p class="price">
                                    <fmt:formatNumber pattern="###,###" value ="${shoes.gia - (shoes.gia* shoes.giamGia /100)}"/> VNĐ							  							  
                                    <span class="price-old" style="padding: 0px"><b>Giá:</b>
                                        <fmt:formatNumber pattern="###,###" value ="${shoes.gia}"/> VNĐ
                                    </span>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </c:otherwise>
    </c:choose>

</div>
<div class="product-filter product-filter-bottom filters-panel">
    <div class="row">
        <div class="col-md-2 hidden-sm hidden-xs">
            <div class="view-mode">
                <div class="list-view">
                    <button class="btn btn-default grid active"
                            data-toggle="tooltip" title=""
                            data-original-title="Grid"><i
                            class="fa fa-th-large"></i></button>
                </div>
            </div>
        </div>
        <div class="short-by-show text-center col-lg-7 col-sm-6 col-xs-12">
            <div class="form-group text-right-show" style="margin: 7px 10px">
                Hiển thị <b id="s-sp">${para_page.start}</b> 
                đến <b id="d-sp">${para_page.end}</b> 
                của <b id="c-sp">${para_page.total} </b>(<b id="c-p">${para_page.maxPage}</b> Trang)</div>
        </div>
        <div class="box-pagination col-lg-3 col-sm-4 col-xs-12 text-right" style="float: right;">
            <ul class="pagination" id ="change-page-bottom">
                <c:if test="${para_page.prevPage >0}">
                    <li><a class ="change-page page-previous" value="${para_page.prevPage}" id="l-p" href="<c:url value="/product/page"/>">|&lt;</a>
                    </li>
                </c:if>
                <c:if test="${para_page.nextPage >0}">
                    <li><a class ="change-page page-next" value ="${para_page.nextPage}" id="l-n" href="<c:url value="/product/page"/>">&gt;|</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</div>
