<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>

<%--
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html>


Link = <c:url value=""/>

<t:template-manager title="">
    <jsp:attribute name="content">
    </jsp:attribute>
</t:template-manager>
--%>

<t:template-manager title= "Dashboard" > 
    <jsp:attribute name="content">
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Tổng quan</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <div class="row">

                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-green">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-table fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">${c_shoes}</div>
                                        <div>[ Quản lý Sản phẩm ]</div>
                                    </div>
                                </div>
                            </div>
                            <a href="<c:url value="/manager/shoes"/>">
                                <div class="panel-footer">
                                    <span class="pull-left">Chi tiết</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-yellow">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-shopping-cart fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">${c_invoice}</div>
                                        <div>[ Quản lý Hóa đơn ]</div>
                                    </div>
                                </div>
                            </div>
                            <a href="<c:url value="/manager/invoice"/>">
                                <div class="panel-footer">
                                    <span class="pull-left">Chi tiết</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-red">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-users fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">${c_account}</div>
                                        <div>[ Tài khoản ]</div>
                                    </div>
                                </div>
                            </div>
                            <a href="<c:url value="/manager/account"/>">
                                <div class="panel-footer">
                                    <span class="pull-left">Chi tiết</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <div class="row">
                                    <div class="col-xs-3">
                                        <i class="fa fa-bar-chart fa-5x"></i>
                                    </div>
                                    <div class="col-xs-9 text-right">
                                        <div class="huge">=</div>
                                        <div>[ Cài đặt ]</div>
                                    </div>
                                </div>
                            </div>
                            <a href="<c:url value="/manager/user"/>">
                                <div class="panel-footer">
                                    <span class="pull-left">Chi tiết</span>
                                    <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>

                                    <div class="clearfix"></div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
                <div class="row">
                    <hr>
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading"> 
                                Thông báo hệ thống
                                <div class="pull-right">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default btn-xs dropdown-toggle"
                                                data-toggle="dropdown">

                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu pull-right" role="menu">
                                            <li><a class="noti-hidden">Ẩn</a></li>
                                            <li><a href="#">Chi tiết</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="list-group">
                                    <div class="alert alert-success alert-dismissible">
                                        <button type="button" class="close" data-dismiss="alert"
                                                aria-hidden="true">&times;</button>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. <a href="#"
                                                                                                     class="alert-link">Alert Link</a>.
                                    </div>
                                    <div class="alert alert-info alert-dismissible">
                                        <button type="button" class="close" data-dismiss="alert"
                                                aria-hidden="true">&times;</button>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. <a href="#"
                                                                                                     class="alert-link">Alert Link</a>.
                                    </div>
                                    <div class="alert alert-warning alert-dismissible">
                                        <button type="button" class="close" data-dismiss="alert"
                                                aria-hidden="true">&times;</button>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. <a href="#"
                                                                                                     class="alert-link">Alert Link</a>.
                                    </div>
                                    <div class="alert alert-danger alert-dismissible">
                                        <button type="button" class="close" data-dismiss="alert"
                                                aria-hidden="true">&times;</button>
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. <a href="#"
                                                                                                     class="alert-link">Alert Link</a>.
                                    </div>
                                </div>
                            </div>
                            <!-- .panel-body -->
                        </div>
                        <!-- /.panel -->
                    </div>
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <i class="fa fa-bell fa-fw"></i> Thông báo sản phẩm
                                <div class="pull-right">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-default btn-xs dropdown-toggle"
                                                data-toggle="dropdown">

                                            <span class="caret"></span>
                                        </button>
                                        <ul class="dropdown-menu pull-right" role="menu">
                                            <li><a class="noti-hidden">Ẩn</a>
                                            </li>
                                            <li><a href="#">Chi tiết</a>
                                            </li>

                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- /.panel-heading -->
                            <div class="panel-body">
                                <div class="list-group">
                                    <a href="#" class="list-group-item">
                                        <i class="fa fa-ban fa-fw"></i> 4 sản phẩm hết hàng
                                        <span class="pull-right text-muted small"><em>4 minutes ago</em>
                                        </span>
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <i class="fa fa-warning fa-fw"></i> 5 Sản phẩm sắp hết
                                        <span class="pull-right text-muted small"><em>
                                                < 4</em> </span> </a> <a href="#" class="list-group-item">
                                        <i class="fa fa-upload fa-fw"></i> Cập nhật cuối cùng
                                        <span class="pull-right text-muted small"><em>11:32 AM</em>
                                        </span>
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <i class="fa fa-bolt fa-fw"></i> Đăng nhập cuối cùng
                                        <span class="pull-right text-muted small"><em>11:13 AM</em>
                                        </span>
                                    </a>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </jsp:attribute>
</t:template-manager>


