<% request.setCharacterEncoding("utf-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>


<t:template-manager title="Invoice">
    <jsp:attribute name="content">

        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Hóa đơn</h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Danh sách hóa đơn
                            </div>
                            <div class="panel-body">
                                <div class="table-responsive">
                                    <table class="table table-striped table-bordered table-hover"
                                           id="dataTables-example">
                                        <thead>
                                            <tr>
                                                <th>STT</th>
                                                <th>Thời gian</th>
                                                <th>Mã khách hàng</th>
                                                <th>Tên khách hàng</th>
                                                <th>Tổng tiền</th>
                                                <th style="width: 70px;">Chức năng</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:set  var="count" value ="0" ></c:set>
                                            <c:forEach  items="${invoices}" var="item">
                                                <tr class="even gradeC" data-id="${item.maHoaDon}">
                                                    <td align="center">${count = count+1}</td>
                                                    <td>${item.thoiGian}</td>
                                                    <td>${item.khachHang.getMaKhachHang()}</td>
                                                    <td>${item.khachHang.getTenKhachHang()}</td>
                                                    <td class="center">${item.tongTien}</td>

                                                    <td class="right">
                                                        <button type="button" class="btn btn-primary btn-edit btn-edit-invoice"
                                                                data-toggle="modal" data-target="#edit-invoice"><i class="fa fa-edit fa-fw"></i></button>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- Form delete detail end-->
                            <jsp:include page="/WEB-INF/views/partialview/common/delete.jsp" flush="true">
                                <jsp:param name="id_modal" value="delete-invoice"/>
                                <jsp:param name="id_lable" value="notify-delete-invoice"/>
                                <jsp:param name="url" value="/manager/invoice/delete" />
                            </jsp:include>
                            <!-- Form show detail shoes and edit -->
                            <jsp:include page="/WEB-INF/views/partialview/common/show.jsp" flush="true">
                                <jsp:param name="id_modal" value="edit-invoice"/>
                                <jsp:param name="url" value="/manager/invoice/edit" />
                                <jsp:param name="title" value="Chi tiết hóa đơn" />
                            </jsp:include>
                            <!-- Form message detail end-->
                            <jsp:include page="/WEB-INF/views/partialview/common/message.jsp" flush="true" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
</t:template-manager>