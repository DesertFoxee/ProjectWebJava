<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>

<t:template-manager title="User">
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
                                Tài khoản
                                <div class="pull-right">
                                    <div class="btn-group" style="top: -5px;">
                                        <button type="button right" class="btn btn-info btn-sm" data-toggle="modal"
                                                data-target="#btn-add-adm">Thêm</button>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-body">
                                <div class="col-lg-6" style="border-right: 1px solid #ccc;">
                                    <form role="form" action ="<c:url value="/manager/admin/edit" />" id="admin-update">
                                        <div class="col-lg-12 shoes-padding-input">
                                            <input name="maQuanTri" type="hidden" type="text" value="${admin.maQuantri}" class="form-control">
                                            <label>Tên tài khoản
                                                <small class="msg-error" id="er-tenTaiKhoan" ></small>
                                            </label>
                                            <div class="form-group input-group">
                                                <span class="input-group-addon"><i class="fa fa-user fa-fw"></i></span>
                                                <input name="tenTaiKhoan" type="text" value="${admin.tenTaiKhoan}" class="form-control">
                                            </div>
                                        </div>
                                        <div class="col-lg-12 shoes-padding-input">
                                            <label>Mật khẩu cũ
                                                <small class="msg-error" id="er-maKhauCu" ></small>
                                            </label>
                                            <div class="form-group input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-fw"></i></span>
                                                <input name="maKhauCu"  type="password" class="form-control" placeholder="************">
                                            </div>
                                        </div>
                                        <div class="col-lg-12 shoes-padding-input">
                                            <label>Mật khẩu mới
                                                <small class="msg-error" id="er-matKhauMoi" ></small>
                                            </label>
                                            <div class="form-group input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-fw"></i></span>
                                                <input name="matKhauMoi" type="password" class="form-control" placeholder="************">
                                            </div>
                                        </div>
                                        <div class="col-lg-12 shoes-padding-input">
                                            <label>Xác nhận mật khẩu
                                                <small class="msg-error" id="er-xacNhanMatKhau" ></small>
                                            </label>
                                            <div class="form-group input-group">
                                                <span class="input-group-addon"><i class="fa fa-lock fa-fw"></i></span>
                                                <input name="xacNhanMatKhau" type="password" class="form-control" placeholder="************">
                                            </div>
                                        </div>
                                        <div class="col-lg-12 shoes-padding-input">
                                            <div class="modal-footer">
                                                <button type="submit" class="btn btn-primary">Cập nhật</button>
                                            </div>
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
</t:template-manager>