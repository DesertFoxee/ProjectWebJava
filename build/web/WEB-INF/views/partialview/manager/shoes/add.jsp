<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<div class="col-lg-12" style="text-align: center;">
    <small class="msg-error" id="er-common" ></small>
</div>
<div class="col-lg-6 shoes-padding-input">
    <label>Tên giày
        <small class="msg-error" id="er-tenGiay"></small>
    </label>
    <input name="tenGiay" class="form-control"  placeholder="Tên giày" />
</div>
<div class="col-lg-6 shoes-padding-input">
    <label>Màu sắc 
        <small class="msg-error" id="er-mauSac"></small>
    </label>
    <input name="mauSac"class="form-control" placeholder="Màu giày">
</div>
<div class="col-lg-12 shoes-padding-input">
    <label>Tiêu đề
        <small class="msg-error" id="er-tieuDe" ></small>
    </label>
    <input name ="tieuDe" class="form-control" placeholder="Nhập tiêu đề" />
</div>
<div class="col-lg-6 shoes-padding-input ">
    <label>Hãng giày
        <small class="msg-error" id="er-hangGiay" ></small>
    </label>
    <select name="maHangGiay" class="form-control">
        <c:forEach var="manu" items="${list_manu}">
            <option value="${manu.maHang}">${manu.tenHangGiay}</option>
        </c:forEach> 
    </select>
</div>
<div class="col-lg-6 shoes-padding-input">
    <label>Loại giày
        <small class="msg-error" id="er-loaiGiay"></small>
    </label>
    <select name="maLoaiGiay" class="form-control">
        <c:forEach var="manu" items="${list_type}">
            <option value="${manu.maLoaiGiay}">${manu.tenLoaiGiay}</option>
        </c:forEach>
    </select>
</div>
<div class="col-lg-6 shoes-padding-input">
    <label>Giá thành
        <small class="msg-error" id="er-gia"></small>
    </label>
    <div class="form-group input-group">
        <span class="input-group-addon">$</span>
        <input name ="gia" type="number" class ="form-control" />
        <span class="input-group-addon">đồng</span>
    </div>
</div>
<div class="col-lg-6 shoes-padding-input">
    <label>Giảm giá
        <small class="msg-error" id="er-giamGia"></small>
    </label>
    <div class="input-group">
        <span class="input-group-addon">-$</span>
        <input name="giamGia" type="number" min="0" max="100" class="form-control" />
        <span class="input-group-addon">%</span>
    </div>
</div>
<div class="col-lg-12 shoes-padding-input">
    <small class="msg-error" id="er-kichCo"></small>
    <div class="panel panel-default">
        <div class="panel-heading">
            Kích cỡ
            <div class="pull-right">
                <div class="btn-group" style="top: -5px;">
                    <button type="button" class="btn btn-info btn-sm " id ="btn-add-size-shoes"
                            style="line-height: 1.2em;">Thêm</button>
                </div>
            </div>
        </div>
        <div class="panel-body" style="overflow: auto; max-height: 100px;">
            <div class="table-responsive">
                <table
                    class="table table-add-size-shoes table-bordered table-hover" id ="tb-add-size">
                    <thead>
                        <tr>
                            <th>Kích cỡ</th>
                            <th>Số lượng</th>
                            <th align="center" style="text-align: center; width: 50px;">CN
                            </th>
                        </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<div class="col-lg-12 shoes-padding-input">
    <label>Mô tả
        <small class="msg-error" id="er-moTa"></small>
    </label>
    <textarea name="moTa" class="form-control" rows="3"></textarea>
</div>
