<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<c:forEach var="e_size" items ="${obj}">
    <tr state="old" data-id ="${e_size.maKichCo}">
        <td contenteditable="true" class="_size">${e_size.kichCo}</td>
        <td contenteditable="true" class="_count">${e_size.soLuong}</td>
        <td>
            <a class="a-delete-size" href="#"
               class="btn-edit btn-detail">
                Xóa
            </a>
        </td>
    </tr>
</c:forEach>

