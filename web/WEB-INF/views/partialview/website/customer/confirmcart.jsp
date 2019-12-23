<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>


<div class="col-lg-12">
    <div class="panel-body" style="padding: 0px 0px 0px 0px;">
        <div class="table-responsive">
            <table
                class="table table-striped table-bordered table-hover">
                <thead>
                    <tr>
                        <th align="left">STT</th>
                        <th>Thời gian</th>
                        <th>Tên giày</th>
                        <th>Cỡ giày</th>
                        <th>Số lượng</th>
                        <th>Đơn giá</th>
                        <th>Giảm giá</th>
                        <th>Thành tiền</th>
                        <th>Chọn</th>
                    </tr>
                </thead>
                <tbody>
                    <c:set var="count" value="0" />
                    <c:set var="amount" value="0" />
                    <c:forEach var="item" items="${items}">
                        <tr>
                            <td align="center">${count+1}</td>
                            <td>${item.giay.thoiGian}</td>
                            <td>${item.giay.tenGiay}</td>
                            <td>${item.giay.kichCo}</td>
                            <td>${item.soLuong}</td>
                            <td>
                                <fmt:formatNumber pattern="###,###" value ="${item.giaThanh}"/> VNĐ
                            </td>
                            <td>
                                ${item.giamGia} %
                            </td>
                            <td>
                                <fmt:formatNumber pattern="###,###" value ="${item.giaThanh - (item.giaThanh* item.giamGia /100)}"/> VNĐ
                                ${amount += item.giaThanh - (item.giaThanh* item.giamGia /100)}
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
<div class="col-lg-12">
    <p id="tongtien" style="float: right; padding: 5px; ">
        <fmt:formatNumber pattern="###,###" value ="${item.giaThanh}"/> VNĐ
    </p>
    <label style="float: right;padding: 5px;  ">Tông tiên
        :</label>
</div>