<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/admin_login.css" />" rel="stylesheet" type="text/css">
        <title>Admin Page</title>
    </head>
    <body>
        <div class="login">
            <h1>Login</h1>
            <form:form method="post" modelAttribute="mAdmin">
                <form:input type="text" path="tenTaiKhoan" placeholder="Username" />
                <small><form:errors path="tenTaiKhoan" cssClass="error" /></small>
                <form:input type="password" path="matKhau" placeholder="Password" />
                <small><form:errors path="matKhau" cssClass="error" /></small>
                <button type="submit" class="btn btn-primary btn-block btn-large">Let me in.</button>
            </form:form>
        </div>
    </body>
</html>
