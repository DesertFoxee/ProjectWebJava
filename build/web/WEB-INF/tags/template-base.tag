<%@tag description="Base Template" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<%@attribute name="title"%>
<%@attribute name="define" fragment="true" %>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<%@attribute name="content" fragment="true" %>

<html>
    <head>
        <title>${title}</title>
        <jsp:invoke fragment="define" />
    </head>
    <body>
        <jsp:invoke fragment="header" />
        
        <jsp:invoke fragment="content"/>

        <jsp:invoke fragment="footer"/>
    </body>
        
</html>