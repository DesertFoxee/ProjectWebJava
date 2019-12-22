<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="navbar-header">
        <a class="navbar-brand" href="<c:url value="/manager/dashboard" />">Quản lý</a>
    </div>

    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
    </button>

    <ul class="nav navbar-nav navbar-left navbar-top-links">
        <li><a href="${pageContext.request.contextPath}"> <i class="fa fa-home fa-fw"></i>Website</a></li>
    </ul>

    <ul class="nav navbar-right navbar-top-links">
        <li class="dropdown navbar-inverse">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-bell fa-fw"></i> <b class="caret"></b>
            </a>
            <ul class="dropdown-menu dropdown-alerts">
                <li>
                    <a href="#">
                        <div>
                            <i class="fa fa-comment fa-fw"></i> New Comment
                            <span class="pull-right text-muted small">4 minutes ago</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div>
                            <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                            <span class="pull-right text-muted small">12 minutes ago</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div>
                            <i class="fa fa-envelope fa-fw"></i> Message Sent
                            <span class="pull-right text-muted small">4 minutes ago</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div>
                            <i class="fa fa-tasks fa-fw"></i> New Task
                            <span class="pull-right text-muted small">4 minutes ago</span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div>
                            <i class="fa fa-upload fa-fw"></i> Server Rebooted
                            <span class="pull-right text-muted small">4 minutes ago</span>
                        </div>
                    </a>
                </li>
                <li class="divider"></li>
                <li>
                    <a class="text-center" href="#">
                        <strong>See All Alerts</strong>
                        <i class="fa fa-angle-right"></i>
                    </a>
                </li>
            </ul>
        </li>
        <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                <i class="fa fa-user fa-fw"></i>NgoThuong<b class="caret"></b>
            </a>
            <ul class="dropdown-menu dropdown-user">
                <li><a href="<c:url value="/manager/user" />"><i class="fa fa-user fa-fw"></i> Tài khoản</a>
                </li>
                <li class="divider"></li>
                <li><a href="<c:url value="/manager/logout" />"><i class="fa fa-sign-out fa-fw"></i> Đăng xuất</a>
                </li>
            </ul>
        </li>
    </ul>

    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li class="sidebar-search">
                    <div class="input-group custom-search-form">
                        <input type="text" class="form-control" id="search-side-menu" placeholder="Tìm kiếm...">
                        <span class="input-group-btn">
                            <button class="btn btn-primary btn-search" type="button">
                                <i class="fa fa-search"></i>
                            </button>
                        </span>
                    </div>
                </li>
                <li>
                    <a href="<c:url value="/manager/dashboard" />"><i class="fa fa-dashboard fa-fw"></i> Tổng quan</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-table fa-fw"></i> Quản lý sản phẩm
                        <span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<c:url value="/manager/shoes" />"> <i
                                    class="fa fa-angle-right fa-fw"></i>
                                Giày
                            </a>
                        </li>
                        <li>
                            <a href="<c:url value="/manager/manufacturer" />"> <i
                                    class="fa fa-angle-right fa-fw"></i>
                                Hãng / Loại
                            </a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                <li>
                    <a href="<c:url value="/manager/invoice" />"><i class="fa fa-shopping-cart fa-fw"></i>
                        Quản lý hóa đơn</a>
                </li>

                <li>
                    <a href="<c:url value="/manager/account" />"><i class="fa fa-users fa-fw"></i> Quản lý
                        tài khoản</a>
                </li>

                <li>
                    <a href="#"><i class="fa fa-wrench fa-fw"></i> Cài đặt<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="<c:url value="/manager/user" />"> <i
                                    class="fa fa-angle-right fa-fw"></i>
                                Tài khoản</a>
                        </li>
                        <li>
                            <a href="<c:url value="/manager/logout" />"> <i class="fa fa-angle-right fa-fw"></i>
                                Đăng xuất</a>
                        </li>
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
            </ul>
        </div>
    </div>
</nav>

