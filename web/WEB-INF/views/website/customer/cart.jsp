<% request.setCharacterEncoding("utf-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<t:template-website title="Cart">
    <jsp:attribute name="content">
        <div class="container">
            <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
            <ul class="breadcrumb">
                <li>
                    <a  href="${contextPath}">
                        <i class="fa fa-home"></i>
                    </a>
                </li>
                <li><a href="<c:url value ="/customer/dashboard"/>">Khách hàng</a>
                </li>
                <li><a href="<c:url value="/customer/dashboard/cart"/>">Giỏ hàng</a>
                </li>
            </ul>
            <div class="row">
                <div class="col-lg-12" style="margin-bottom: 30px;">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Danh sách giỏ hàng
                            <div class="pull-right">
                                <div class="btn-group" style="top: -5px;">
                                    <button type="button right" class="btn btn-info btn-sm" data-toggle="modal"
                                            data-target="#confirm-cart">Thanh toán</button>
                                </div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th align="left">STT</th>
                                            <th>Thời gian</th>
                                            <th>Tên giày</th>
                                            <th>Cỡ giày</th>
                                            <th>Số lượng</th>
                                            <th>Giá gốc</th>
                                            <th>Giảm giá</th>
                                            <th>Thành tiền</th>
                                            <th>Chọn</th>
                                            <th style="width: 120px;">Chức năng</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:set var="count" value="0" />
                                        <c:forEach var="item" items="${list_cart}">
                                            <tr class="odd gradeX">
                                                <td align="center">${count+1}</td>
                                                <td class="timeline-badge">${item.thoiGian}</td>
                                                <td>${item.giay.tenGiay}</td>
                                                <td>${item.kichCo}</td>
                                                <td>${item.soLuong}</td>
                                                <td class="center">
                                                    <fmt:formatNumber pattern="###,###" value ="${item.giaThanh}"/> VNĐ
                                                </td>
                                                <td class="center">
                                                    ${item.giamGia} %
                                                </td>
                                                <td class="center">
                                                    <fmt:formatNumber pattern="###,###" value ="${item.giaThanh - (item.giaThanh* item.giamGia /100)}"/> VNĐ
                                                </td>
                                                <td align="center">
                                                    <input type="checkbox">
                                                </td>
                                                <td class="center">
                                                    <a href="<c:url value ="/product/single?id=${item.giay.maGiay}"/>" 
                                                       class="btn btn-warning btn-edit btn-detail">Chi tiết sản phẩm</a>
                                                    <button type="button" class="btn btn-danger btn-edit btn-delete-cart"
                                                            data-toggle="modal" data-target="#delete-cart">Xóa</button>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <!-- Form show detail shoes and edit -->
                        <jsp:include page="/WEB-INF/views/partialview/common/confirm.jsp" flush="true">
                            <jsp:param name="id_modal" value="confirm-cart"/>
                            <jsp:param name="id_lable" value="notify-confirm-cart"/>
                            <jsp:param name="title" value="Xác nhận thanh toán" />
                            <jsp:param name="url" value="/customer/dashboard/cart/confirm" />
                        </jsp:include>
                        
                        <jsp:include page="/WEB-INF/views/partialview/common/delete.jsp" flush="true">
                            <jsp:param name="id_modal" value="delete-cart"/>
                            <jsp:param name="id_lable" value="notify-delete-cart"/>
                            <jsp:param name="url" value="/customer/dashboard/cart/delete" />
                        </jsp:include>

                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
</t:template-website>

