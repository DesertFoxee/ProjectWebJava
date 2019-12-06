<% request.setCharacterEncoding("utf-8");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:template-website title="Customer">
    <jsp:attribute name="content">
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=common/home"><i
                            class="fa fa-home"></i></a></li>
                <li><a
                        href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=account/account">Customer</a>
                </li>
                <li><a
                        href="http://opencart2.opencartworks.com/themes/so_maxshop/index.php?route=account/register">Cart</a>
                </li>
            </ul>
            <div class="row">
                <div class="col-lg-12" style="margin-bottom: 30px;">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Danh sách giỏ hàng
                            <div class="pull-right">
                                <div class="btn-group" style="top: -5px;">
                                    <button type="button right" class="btn btn-info btn-sm" data-toggle="modal"
                                            data-target="#checkout-shoes">Thanh toán</button>
                                    <div class="modal fade" id="checkout-shoes" tabindex="-1" role="dialog"
                                         aria-labelledby="myModalLabel" aria-hidden="true">
                                        <div class="modal-dialog" role="document">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <button type="button" class="close" data-dismiss="modal"
                                                            aria-hidden="true">&times;</button>
                                                    <h4 class="modal-title" id="myModalLabel">Xác nhận thanh toán</h4>
                                                </div>
                                                <div class="modal-body" style="overflow: auto;">
                                                    <form role="form">
                                                        <div class="col-lg-12">
                                                            <div class="panel-body" style="padding: 0px 0px 0px 0px;">
                                                                <div class="table-responsive">
                                                                    <table
                                                                        class="table table-striped table-bordered table-hover">
                                                                        <thead>
                                                                            <tr>
                                                                                <th align="left">STT</th>
                                                                                <th>Tên giày</th>
                                                                                <th>Số lượng</th>
                                                                                <th>Đơn giá</th>
                                                                                <th>Thành tiền</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <tr>
                                                                                <td align="center">1</td>
                                                                                <td>Mark</td>
                                                                                <td>Otto</td>
                                                                                <td>@mdo</td>
                                                                                <td>Mark</td>
                                                                            </tr>
                                                                            <tr>
                                                                                <td align="center">2</td>
                                                                                <td>Jacob</td>
                                                                                <td>Thornton</td>
                                                                                <td>@fat</td>
                                                                                <td>Mark</td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-12">
                                                            <p id="tongtien" style="float: right; padding: 5px; ">
                                                                100000000
                                                            </p>
                                                            <label style="float: right;padding: 5px;  ">Tông tiên
                                                                :</label>
                                                        </div>
                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default"
                                                            data-dismiss="modal">Hủy</button>
                                                    <button type="button" class="btn btn-primary">Thanh toán </button>
                                                </div>
                                            </div>
                                            <!-- /.modal-content -->
                                        </div>
                                        <!-- /.modal-dialog -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">

                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Thời gian</th>
                                            <th>Tên giày</th>
                                            <th>Khách hàng</th>
                                            <th>Số lượng</th>
                                            <th>Tổng tiền</th>
                                            <th>Giá</th>
                                            <th>Chọn</th>
                                            <th style="width: 100px;">Chức năng</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr class="odd gradeX">
                                            <td align="center">1</td>
                                            <td class="timeline-badge">20/12/2018 - 12:12</td>
                                            <td>Internet Explorer 4.0</td>
                                            <td>Nguyễn Văn A</td>
                                            <td class="center">4</td>
                                            <td class="center">40</td>
                                            <td class="center">1.000.000</td>
                                            <td align="center">
                                                <input type="checkbox">
                                            </td>
                                            <td class="center">
                                                <button type="button" class="btn btn-default btn-edit btn-detail"
                                                        data-toggle="modal" data-target="#btn-detail-shoes">Chi
                                                    tiết</button>
                                                <button type="button" class="btn btn-danger btn-edit"
                                                        data-toggle="modal" data-target="#btn-delete-shoes">Xóa</button>
                                            </td>
                                        </tr>
                                        <tr class="even gradeC">
                                            <td align="center">2</td>
                                            <td class="timeline-badge">20/12/2019 - 11:12</td>
                                            <td>Internet Explorer 5.0</td>
                                            <td>Win 95+</td>
                                            <td class="center">5</td>
                                            <td class="center">C</td>
                                            <td class="center">1.000.000</td>
                                            <td align="center">
                                                <input type="checkbox">
                                            </td>
                                            <td class="right">
                                                <button type="button" class="btn btn-default btn-edit"
                                                        data-toggle="modal" data-target="#btn-detail-shoes">Chi
                                                    tiết</button>
                                                <button type="button" class="btn btn-danger btn-edit">Xóa</button>
                                            </td>
                                        </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>

                        <div class="modal fade" id="btn-delete-shoes" tabindex="-1" role="dialog"
                             aria-labelledby="my-delete-shoes" aria-hidden="true">
                            <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal"
                                                aria-hidden="true">&times;</button>
                                        <h4 class="modal-title" id="my-delete-shoes">Thông báo</h4>
                                    </div>
                                    <div class="modal-body" style="overflow: auto;">
                                        Bạn muốn xóa hóa đơn [Giày nam adias]
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default">Xóa</button>
                                        <button type="button" class="btn btn-primary" data-dismiss="modal">Hủy</button>
                                    </div>
                                </div>
                                <!-- /.modal-content -->
                            </div>
                        </div>
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
        </div>
    </jsp:attribute>
</t:template-website>

