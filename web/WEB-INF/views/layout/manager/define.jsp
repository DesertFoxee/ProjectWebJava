<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="Webteam">


<!--====================Link CSS======================-->

<link href="<c:url value="/resources/css/common/bootstrap.min.css"/>"  rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="<c:url value="/resources/css/manager/metisMenu.min.css"/>" rel="stylesheet">

<!-- DataTables CSS -->
<link href="<c:url value="/resources/css/common/dataTables/dataTables.bootstrap.css"/>" rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link href="<c:url value="/resources/css/common/dataTables/dataTables.responsive.css"/>"  rel="stylesheet">

<!-- Custom CSS -->
<link href="<c:url value="/resources/css/manager/startmin.css"/>" rel="stylesheet">

<!-- UserCustom CSS -->
<link href="<c:url value="/resources/css/custom/user_customs.css"/>" rel="stylesheet">

<!-- Custom Fonts -->
<link href="<c:url value="/resources/css/common/font-awesome.min.css"/>" rel="stylesheet" type="text/css"/>


<c:if test="${param.using_script  == 'true'}">

    <!--====================Link Javascript======================-->
    <!-- Morris Charts JavaScript -->
    <script src="<c:url value="/resources/js/manager/raphael.min.js" />"></script>

    <!-- jQuery -->
    <script src="<c:url value="/resources/js/common/jquery.min.js" />"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value="/resources/js/common/bootstrap.min.js" />"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="<c:url value="/resources/js/manager/metisMenu.min.js" />"></script>

    <!-- DataTables JavaScript -->
    <script src="<c:url value="/resources/js/common/dataTables/jquery.dataTables.min.js" />"></script>
    <script src="<c:url value="/resources/js/common/dataTables/dataTables.bootstrap.min.js" />"></script>

    <!-- User Plugin JavaScript -->
    <script src="<c:url value="/resources/js/custom/effect_process.js" />"></script>
    <script src="<c:url value="/resources/js/custom/data_process.js" />"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<c:url value="/resources/js/manager/startmin.js"/>"></script>
    <script>
        $(document).ready(function () {
            $('#dataTables-example').DataTable({
                responsive: true
            });
        });
    </script>
</c:if>



