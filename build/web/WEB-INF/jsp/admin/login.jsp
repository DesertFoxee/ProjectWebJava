<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <form method="post" action="">
                <input type="text" name="u" placeholder="Username" required="required" />
                <input type="password" name="p" placeholder="Password" required="required" />
                <button type="submit" class="btn btn-primary btn-block btn-large">Let me in.</button>
            </form>
        </div>
    </body>
</html>
