<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<c:choose>
    <c:when test="${not empty new_image}">
        <div class="img-wrap">
            <span class="close">&times;</span>        
            <img src="" new ="new" />
        </div>
    </c:when>
    <c:otherwise>
        <c:forEach items="${image_shoes}" var="image">
            <div class="img-wrap">
                <span class="close">&times;</span>        
                <img src="<c:url value="/resources/images/shoes/${image.link}"/>" data-id="${image.maHinhAnh}" />
            </div>
        </c:forEach>
    </c:otherwise>
</c:choose>

