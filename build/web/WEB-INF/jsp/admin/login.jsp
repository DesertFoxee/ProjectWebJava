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
            <form:form method="post" action="admin/login" modelAttribute="mAdmin">
                <form:input type="text" path="tenTaiKhoan" placeholder="Username" required="required" />
                <form:input type="password" path="matKhau" placeholder="Password" required="required" />
                <button type="submit" class="btn btn-primary btn-block btn-large">Let me in.</button>
            </form:form>
        </div>
    </body>
</html>
