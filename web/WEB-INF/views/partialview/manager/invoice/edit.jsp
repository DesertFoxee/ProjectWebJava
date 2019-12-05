<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<div class="col-lg-12">
    <div class="table-responsive">
        <table id="dataTables-example" class="table table-striped table-bordered table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Tên giày</th>
                    <th>Số lượng</th>
                    <th>Đơn giá </th>
                    <th>Thành tiền</th>
                </tr>
            </thead>
            <tbody>
                <c:set  var="count" value ="0" ></c:set>
                <c:forEach  items="${detail_invoice}" var="item">
                    <tr class="even gradeC">
                        <td align="center">${count = count+1}</td>
                        <td>${item.giay.getTenGiay()}</td>
                        <td class="center">${item.soLuong}</td>
                        <td class="center">${item.gia}</td>
                        <td class="center">${item.thanhTien}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>