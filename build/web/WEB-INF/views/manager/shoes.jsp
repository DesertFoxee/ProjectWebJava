<% request.setCharacterEncoding("utf-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>

<t:template-manager title="Shoes">
    <jsp:attribute name="content">
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Sản phẩm</h1>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Danh sách sản phẩm
                                <div class="pull-right">
                                    <div class="btn-group" style="top: -5px;">
                                        <button link="<c:url value="/manager/shoes/add"/>" type="button right" class="btn btn-info btn-sm btn-add-shoes" data-toggle="modal"
                                                data-target="#add-shoes">Thêm</button>
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="table-responsive" id ="table-shoes">
                                    <table id="dataTables-example" class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>STT</th>
                                                <th>Tên giày</th>
                                                <th>Tiêu đề</th>
                                                <th>Hãng giày</th>
                                                <th>Loại giày</th>
                                                <th>Số lượng</th>
                                                <th>Giá</th>
                                                <th style="width: 86px;">Chức năng</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:set  var="count" value ="0" ></c:set>
                                            <c:forEach  items="${l_shoes}" var="item">
                                                <tr class="even gradeC" data-id="${item.maGiay}">
                                                    <td align="center">${count = count+1}</td>
                                                    <td>${item.tenGiay}</td>
                                                    <td>${item.tieuDe}</td>
                                                    <td class="center">${item.hangGiay.getTenHangGiay()}</td>
                                                    <td class="center">${item.loaiGiay.getTenLoaiGiay()}</td>
                                                    <td class="center">${item.soLuong}</td>
                                                    <td class="center">${item.gia}</td>
                                                    <td class="right">
                                                        <button type="button" class="btn btn-primary btn-edit btn-edit-shoes"
                                                                data-toggle="modal" data-target="#edit-shoes"><i class="fa fa-edit fa-fw"></i></button>
                                                        <button type="button" class="btn btn-danger btn-edit btn-delete-shoes"
                                                                data-toggle="modal" data-target="#delete-shoes"><i class="fa fa-trash fa-fw"></i></button>
                                                        <button type="button" class="btn btn-default btn-edit btn-image-shoes"
                                                                data-toggle="modal" data-target="#image-shoes"><i class="fa fa-image fa-fw"></i></button>

                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>

                                <!-- From add shoes  -->
                                <jsp:include page="/WEB-INF/views/partialview/common/edit.jsp" flush="true">
                                    <jsp:param name="id_modal" value="add-shoes"/>
                                    <jsp:param name="id_lable" value="notify-add-shoes"/>
                                    <jsp:param name="title" value="Thêm sản phẩm" />
                                    <jsp:param name="url" value="/manager/shoes/add" />
                                </jsp:include>

                                <!-- Form show detail shoes and edit -->
                                <jsp:include page="/WEB-INF/views/partialview/common/edit.jsp" flush="true">
                                    <jsp:param name="id_modal" value="edit-shoes"/>
                                    <jsp:param name="id_lable" value="notify-edit-shoes"/>
                                    <jsp:param name="title" value="Chi tiết sản phẩm" />
                                    <jsp:param name="url" value="/manager/shoes/edit" />
                                </jsp:include>

                                <!-- Form delete detail end-->
                                <jsp:include page="/WEB-INF/views/partialview/common/delete.jsp" flush="true">
                                    <jsp:param name="id_modal" value="delete-shoes"/>
                                    <jsp:param name="id_lable" value="notify-delete-shoes"/>
                                    <jsp:param name="url" value="/manager/shoes/delete" />
                                </jsp:include>

                                <!-- Form message detail end-->
                                <jsp:include page="/WEB-INF/views/partialview/common/message.jsp" flush="true" />

                                <!-- Form update image end-->
                                <jsp:include page="/WEB-INF/views/partialview/common/image.jsp" flush="true">
                                    <jsp:param name="url" value="/manager/shoes/image" />
                                </jsp:include>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </jsp:attribute>
</t:template-manager>


