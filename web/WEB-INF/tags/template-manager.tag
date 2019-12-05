<%@tag description="Base Template" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@attribute name="title" required="true" %>
<%@attribute name="script" required="false"%>
<%@attribute name="content" fragment="true" required="false" %>

<t:template-base title="Manager-${title}">


    <jsp:attribute name="define">
        <%--Check have using script --%>
        <c:if test="${empty script}" >
            <c:set var="script" value="true" />
        </c:if>

        <%--Inclue paramater => jsp --%>
        <jsp:include page="/WEB-INF/views/layout/manager/define.jsp">
            <jsp:param name="using_script" value= "${script}" />
        </jsp:include>

    </jsp:attribute>

    <jsp:attribute name="header">
        <div id="wrapper">
        <jsp:include page="/WEB-INF/views/layout/manager/header.jsp"></jsp:include>
    </jsp:attribute>

    <jsp:attribute name="content">
        <jsp:invoke fragment="content" />     
    </jsp:attribute>

    <jsp:attribute name="footer"> 
        <jsp:include page="/WEB-INF/views/layout/manager/footer.jsp" />    
        </div>
    </jsp:attribute>

</t:template-base>
