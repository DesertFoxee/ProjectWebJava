<% request.setCharacterEncoding("utf-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>


<t:template-manager title="Customer">
    <jsp:attribute name="content">
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Tài khoản</h1>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                Danh sách khách hàng
                                <div class="pull-right">
                                    <div class="btn-group" style="top: -5px;">
                                        <button type="button right" class="btn btn-info btn-sm" data-toggle="modal"
                                                data-target="#btn-add-cus">Thêm</button>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-body">

                                <div class="table-responsive" id="table-account">
                                    <table class="table table-striped table-bordered table-hover"
                                           id="dataTables-example">
                                        <thead>
                                            <tr>
                                                <th>STT</th>
                                                <th>Tên khách hàng</th>
                                                <th>Địa chỉ</th>
                                                <th>Số điện thoại</th>
                                                <th>Tên tài khoản</th>
                                                <th>Mật khẩu</th>
                                                <th style="width: 60px;">Chức năng</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach  items="${accounts}" var="account">
                                                <tr class="even gradeC" data-id="${account.maTaiKhoan}">
                                                    <td align="center">${count = count+1}</td>
                                                    <td>${account.khachHang.getTenKhachHang()}</td>
                                                    <td>${account.khachHang.getDiaChi()}</td>
                                                    <td class="center">${account.khachHang.getSdt()}</td>
                                                    <td class="center">${account.tenTaiKhoan}</td>
                                                    <td class="center">**********</td>
                                                    <td class="right">
                                                        <a href="#" class="btn-edit btn-edit-account"
                                                           data-toggle="modal" data-target="#edit-account">Edit</a> |
                                                        <a href="#" class="btn-edit btn-delete-account"
                                                           data-toggle="modal" data-target="#delete-account">Delete</a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- From delete customer -->
                            <jsp:include page="/WEB-INF/views/partialview/common/delete.jsp" flush="true">
                                <jsp:param name="id_modal" value="delete-account"/>
                                <jsp:param name="id_lable" value="notify-delete-account"/>
                                <jsp:param name="url" value="/manager/account/delete" />
                            </jsp:include>
                            <!-- Form edit customer -->
                            <jsp:include page="/WEB-INF/views/partialview/common/edit.jsp" flush="true">
                                <jsp:param name="id_modal" value="edit-account"/>
                                <jsp:param name="id_lable" value="notify-edit-account"/>
                                <jsp:param name="title" value="Chi tiết khách hàng" />
                                <jsp:param name="url" value="/manager/account/edit" />
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