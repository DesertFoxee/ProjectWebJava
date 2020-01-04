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

<link href="<c:url value="/resources/css/manager/metisMenu.min.css"/>" rel="stylesheet">

<link href="<c:url value="/resources/css/common/dataTables/dataTables.bootstrap.css"/>" rel="stylesheet">

<link href="<c:url value="/resources/css/common/dataTables/dataTables.responsive.css"/>"  rel="stylesheet">
<link href="<c:url value="/resources/css/manager/startmin.css"/>" rel="stylesheet">


<link href="<c:url value="/resources/css/custom/user_customs.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/common/font-awesome.min.css"/>" rel="stylesheet" type="text/css"/>
<link href="<c:url value="/resources/css/website/lib.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/css/website/theme-red.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/css/website/so_megamenu.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/css/custom/shoes.css"/>" rel="stylesheet" />

<link href="<c:url value="/resources/css/website/wide-grid.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/css/website/style/style.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/css/website/style/style.1.css"/>" rel="stylesheet" />



<link href="<c:url value="/resources/css/website/css3.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/css/website/animate.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/css/website/owl.carousel.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/css/website/so_searchpro.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/css/website/css3.1.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/css/website/shortcodes.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/css/website/responsive.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/css/website/ie9-and-up.css"/>" rel="stylesheet" />
<link href="<c:url value="/resources/css/website/lightslider.css"/>" rel="stylesheet" />

<style type="text/css">
    body {
        background-color: inherit;
    }
</style>
<c:if test="${param.using_script  == 'true'}">

    <!--====================Link Javascript======================-->

    <script src="<c:url value="/resources/js/common/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/js/common/bootstrap.min.js" />"></script>
    <script src="<c:url value="/resources/js/website/libs.js" />"></script>

    <script src="<c:url value="/resources/js/website/common.js" />"></script>
    <script src="<c:url value="/resources/js/website/so.custom.js" />"></script>

    <script src="<c:url value="/resources/js/website/toppanel.js" />"></script>
    <script src="<c:url value="/resources/js/website/jquery.elevateZoom-3.0.8.min.js" />"></script>
    <script src="<c:url value="/resources/js/website/moment.js" />"></script>
    <script src="<c:url value="/resources/js/website/bootstrap-datetimepicker.min.js" />"></script>
    <script src="<c:url value="/resources/js/website/so_megamenu.js" />"></script>
    <script src="<c:url value="/resources/js/website/owl.carousel.js" />"></script>
    <script src="<c:url value="/resources/js/website/accordion.js" />"></script>
    <script src="<c:url value="/resources/js/website/shortcodes.js" />"></script>
    <script src="<c:url value="/resources/js/website/lightslider.js" />"></script>

    <script src="<c:url value="/resources/js/common/dataTables/jquery.dataTables.min.js" />"></script>
    <script src="<c:url value="/resources/js/common/dataTables/dataTables.bootstrap.min.js" />"></script>

    <!-- User Plugin JavaScript -->
    <script src="<c:url value="/resources/js/custom/effect_process.js" />"></script>
    <script src="<c:url value="/resources/js/custom/data_process.js" />"></script>

    <script>
        $(document).ready(function () {
            $('#dataTables-example').DataTable({
                responsive: true
            });
        });
    </script>
</c:if>



