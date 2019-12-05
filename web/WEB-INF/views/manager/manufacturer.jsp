<% request.setCharacterEncoding("utf-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>

<t:template-manager title="Manufacturer">
    <jsp:attribute name="content">
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Hãng giày - Loại giày </h1>
                    </div>
                </div>
                <div class="row">
                    <!-- Manufacturer -->
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <!-- panel-heading -->
                            <div class="panel-heading">
                                Danh sách hãng
                                <div class="pull-right">
                                    <div class="btn-group" style="top: -5px;">
                                        <button link="<c:url value="/manager/manu/add"/>" type="button right"  class="btn btn-info btn-sm btn-add-manu" data-toggle="modal"
                                                data-target="#add-manu">Thêm</button>
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="table-responsive" id="table-manu">
                                    <table class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Tên hãng</th>
                                                <th>Mô tả</th>
                                                <th style="width: 90px;">Chức năng</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:set  var="count" value ="0" ></c:set>
                                            <c:forEach items="${manus}" var="manu">
                                                <tr class="even gradeC" data-id ="${manu.maHang}">
                                                    <td>${count = count+1}</td>
                                                    <td>${manu.tenHangGiay}</td>
                                                    <td>${manu.ghiChu}</td>
                                                    <td>
                                                        <button type="button" class="btn btn-primary btn-edit btn-edit-manu"
                                                                data-toggle="modal" data-target="#edit-manu"><i class="fa fa-edit fa-fw"></i></button>
                                                        <button type="button" class="btn btn-danger btn-edit btn-delete-manu"
                                                                data-toggle="modal" data-target="#delete-manu"><i class="fa fa-trash fa-fw"></i></button>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <!-- Form delete manu-->
                            <jsp:include page="/WEB-INF/views/partialview/common/delete.jsp" flush="true">
                                <jsp:param name="id_modal" value="delete-manu"/>
                                <jsp:param name="id_lable" value="notify-delete-manu"/>
                                <jsp:param name="url" value="/manager/manu/delete" />
                            </jsp:include>
                            <!-- Form edit manu -->
                            <jsp:include page="/WEB-INF/views/partialview/common/edit.jsp" flush="true">
                                <jsp:param name="id_modal" value="edit-manu"/>
                                <jsp:param name="id_lable" value="notify-edit-manu"/>
                                <jsp:param name="title" value="Chi tiết hãng giày" />
                                <jsp:param name="url" value="/manager/manu/edit" />
                            </jsp:include>
                            <!-- Form add manu-->
                            <jsp:include page="/WEB-INF/views/partialview/common/edit.jsp" flush="true">
                                <jsp:param name="id_modal" value="add-manu"/>
                                <jsp:param name="id_lable" value="notify-add-manu"/>
                                <jsp:param name="title" value="Thêm hãng giày" />
                                <jsp:param name="url" value="/manager/manu/add" />
                            </jsp:include>
                            <jsp:include page="/WEB-INF/views/partialview/common/message.jsp" flush="true" />
                        </div>
                    </div>

                    <!--Type-->
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Danh sách loại sản phẩm
                                <div class="pull-right">
                                    <div class="btn-group" style="top: -5px;">
                                        <button link="<c:url value="/manager/type/add"/>" type="button right" class="btn btn-info btn-sm btn-add-type" data-toggle="modal"
                                                data-target="#add-type">Thêm</button>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive" id ="table-type">
                                    <table class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>STT</th>
                                                <th>Tên loại giày</th>
                                                <th style="width: 90px;">Chức năng</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:set  var="count" value ="0" ></c:set>
                                            <c:forEach items="${types}" var="type">
                                                <tr class="even gradeC" data-id ="${type.maLoaiGiay}">
                                                    <td>${count = count+1}</td>
                                                    <td>${type.tenLoaiGiay}</td>
                                                    <td>
                                                        <button type="button" class="btn btn-primary btn-edit btn-edit-type"
                                                                data-toggle="modal" data-target="#edit-type"><i class="fa fa-edit fa-fw"></i></button>
                                                        <button type="button" class="btn btn-danger btn-edit btn-delete-type"
                                                                data-toggle="modal" data-target="#delete-type"><i class="fa fa-trash fa-fw"></i></button>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <!-- Form delete manu-->
                            <jsp:include page="/WEB-INF/views/partialview/common/delete.jsp" flush="true">
                                <jsp:param name="id_modal" value="delete-type"/>
                                <jsp:param name="id_lable" value="notify-delete-type"/>
                                <jsp:param name="url" value="/manager/type/delete" />
                            </jsp:include>
                            <!-- Form edit manu -->
                            <jsp:include page="/WEB-INF/views/partialview/common/edit.jsp" flush="true">
                                <jsp:param name="id_modal" value="edit-type"/>
                                <jsp:param name="id_lable" value="notify-edit-type"/>
                                <jsp:param name="title" value="Chi tiết loại giày" />
                                <jsp:param name="url" value="/manager/type/edit" />
                            </jsp:include>
                            <!-- Form add manu-->
                            <jsp:include page="/WEB-INF/views/partialview/common/edit.jsp" flush="true">
                                <jsp:param name="id_modal" value="add-type"/>
                                <jsp:param name="id_lable" value="notify-add-type"/>
                                <jsp:param name="title" value="Thêm loại giày" />
                                <jsp:param name="url" value="/manager/type/add" />
                            </jsp:include>

                        </div>
                    </div>




                </div>
            </jsp:attribute>
        </t:template-manager>