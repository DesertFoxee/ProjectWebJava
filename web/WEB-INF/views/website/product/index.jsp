<%@page import="models.database.HangGiay"%>
<%@page import="models.database.LoaiGiay"%>
<%@page import="dao.LoaiGiayDAO"%>
<%@page import="dao.HangGiayDAO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<% request.setCharacterEncoding("utf-8");%>
<%
    List<HangGiay> manus = HangGiayDAO.getAllManufacturer();
    List<LoaiGiay> types = LoaiGiayDAO.getAllType();
    String sort = (String) request.getAttribute("sort");
%>

<c:set var="list_manu">
    <option value="0" selected> Hãng giày</option>
    <% for (int i = 0; i < manus.size(); i++) {%>
    <c:set var="val" value="<%=manus.get(i).getTenHangGiay()%>"/>
    <c:choose> 
        <c:when test="${val == f_manu}">
            <option value="<%=manus.get(i).getTenHangGiay()%>" selected> <%=manus.get(i).getTenHangGiay()%></option>
        </c:when>
        <c:otherwise>
            <option value="<%=manus.get(i).getTenHangGiay()%>"> <%=manus.get(i).getTenHangGiay()%></option>
        </c:otherwise>
    </c:choose>
    <%}%>

</c:set>

<c:set var="list_type">
    <option value="0" selected> Loại giày</option>
    <% for (int i = 0; i < types.size(); i++) {%>
    <c:set var="val" value="<%=types.get(i).getTenLoaiGiay()%>"/>
    <c:choose> 
        <c:when test="${val == f_type}">
            <option value="<%=types.get(i).getTenLoaiGiay()%>" selected> <%=types.get(i).getTenLoaiGiay()%></option>
        </c:when>
        <c:otherwise>
            <option value="<%=types.get(i).getTenLoaiGiay()%>"> <%=types.get(i).getTenLoaiGiay()%></option>
        </c:otherwise>
    </c:choose>
    <%}%>
</c:set>

<c:set var="list_sort"> 
    <option
        value="DF" selected="selected">Sắp xếp</option>
    <option
        value="NAZ" <%=(sort == "NAZ") ? "selected" : ""%>> Tên (A - Z)</option>
    <option
        value="NZA" <%=(sort == "NZA") ? "selected" : ""%>>
        Tên (Z - A)</option>
    <option
        value="PLH" <%=(sort == "PLH") ? "selected" : ""%>>
        Giá (Low &gt; High)</option>
    <option
        value="PHL" <%=(sort == "PHL") ? "selected" : ""%>>
        Giá (High &gt; Low)</option>
    <option  value="DIS" <%=(sort == "DIS") ? "selected" : ""%>>
        Giảm giá
    </option>
</c:set>     


<t:template-website title="Product">
    <jsp:attribute name="content">

        <div class="container">
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
            <div class="row">
                <div class="col-xs-12">
                    <div class="module cus-style-supper-cate  ">
                        <div class="header">
                            <h3 class="modtitle">
                                <span class="icon-color" style="background-color: #ea3a3c; ">
                                    <i class="fa fa-empire #009688"></i>
                                    SẢN PHẨM <small class="arow-after"
                                                    style="border-color: transparent transparent  #ea3a3c transparent">
                                    </small>
                                </span>
                                <strong class="line-color" style="background-color: #ea3a3c"></strong>
                            </h3>
                        </div>
                        <div id="so_super_category_154" class="so-sp-cat first-load">

                            <div class="main-left">
                                <div class="banner-post-text">
                                    <a href="#" title="banner">  <img src="<c:url value="/resources/images/common/jpg/s22.jpg"/>" alt="banner">
                                    </a> </div>
                                <div class="hot-category">
                                    <div class="category-wrap-cat">
                                        <div class="title-imageslider  sp-cat-title-parent">
                                            Danh Mục </div>
                                        <div id="cat_slider_4069187071575549906" class="slider">
                                            <div class="cat_slider_inner so_category_type_default">
                                                <div class="item">
                                                    <div class="item-inner">
                                                        <div class="cat_slider_title">
                                                            <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=60"
                                                               title="Egante mangetes" target="_blank">
                                                                <i class="fa fa-caret-right"></i> Không biết</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="item">
                                                    <div class="item-inner">
                                                        <div class="cat_slider_title">
                                                            <a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=product/category&amp;path=61"
                                                               title="Guntes magesg" target="_blank">
                                                                <i class="fa fa-caret-right"></i> Không biết </a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="main-right">
                                <div id="content" class=" col-md-12 col-sm-12  col-xs-12" style="padding-right: 0px;">
                                    <div class="products-category">
                                        <div class="product-filter filters-panel">
                                            <div class="row">
                                                <div class="col-md-2 hidden-sm hidden-xs"style="width: 5%;">
                                                    <div class="view-mode" >
                                                        <div class="list-view">
                                                            <button class="btn btn-default grid active"
                                                                    data-toggle="tooltip" title=""
                                                                    data-original-title="Grid"><i
                                                                    class="fa fa-th-large"></i></button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="short-by-show form-inline text-left col-lg-7 col-sm-6 col-xs-12" style="width: 65%;">
                                                    <div class="form-group short-by filters-shoes">

                                                        <input name="key" value="${key}" type="hidden" />
                                                        <label class="control-label" for="input-sort">Lọc SP:</label>
                                                        <select name ="sort" id="input-sort" class="form-control">
                                                            ${list_sort}
                                                        </select>
                                                        <select name ="manu" id="input-sort" class="form-control" style="min-width: 130px;">
                                                            ${list_manu}
                                                        </select>
                                                        <select name ="type" id="input-sort" class="form-control" style="min-width: 130px;">
                                                            ${list_type}
                                                        </select>
                                                        <button href="<c:url value="/product/filter"/>" class="btn btn-primary btn-filter" style="font-size: 12px;">Tìm kiếm</button>
                                                    </div>
                                                </div>
                                                <div class="box-pagination col-lg-3 col-sm-4 col-xs-12 text-right" style="width: 30%; float: right;">
                                                    <ul class="pagination" id ="change-page-top">
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

                                        <c:set var="list_shoes_filter" value="${list_shoes_filter}" scope="request" />
                                        <c:set var="para_page" value="${para_page}" scope="request" />
                                        <c:set var="path_default" value="${path_default}" scope="request" />

                                        <jsp:include page="/WEB-INF/views/partialview/website/product/page.jsp"flush="true" />

                                        <script type="text/javascript">
                                            $('.view-mode .list-view button').bind("click", function () {
                                                if ($(this).is(".active")) {
                                                    return false;
                                                }
                                                $.cookie('listingType', $(this).is(".grid") ? 'grid' : 'list', {path: '/'});
                                                location.reload();
                                            });
                                        </script>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="loader-mod-box" style="display: none;"></div>
                    </div>
                </div>
            </div>
        </div>                           
    </jsp:attribute>
</t:template-website>
