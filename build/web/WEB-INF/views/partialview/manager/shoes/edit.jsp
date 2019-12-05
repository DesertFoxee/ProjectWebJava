<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<div class="col-lg-12" style="text-align: center;">
    <small class="msg-error" id="er-common" ></small>
</div>
<input name="maGiay" value="${shoes.maGiay}" type="hidden" >
<div class="col-lg-6 shoes-padding-input">
    <label>Tên giày
        <small class="msg-error" id="er-tenGiay"></small>
    </label>
    <input name="tenGiay" class="form-control" value="${shoes.tenGiay}"  placeholder="Tên giày" />
</div>
<div class="col-lg-12 shoes-padding-input">
    <label>Tiêu đề
        <small class="msg-error" id="er-tieuDe" ></small>
    </label>
    <input name ="tieuDe" class="form-control" value="${shoes.tieuDe}" placeholder="Nhập tiêu đề" />
</div>
<div class="col-lg-6 shoes-padding-input ">
    <label>Hãng giày
        <small class="msg-error" id="er-hangGiay" ></small>
    </label>
    <select name="maHangGiay" class="form-control">
        <c:forEach var="manu" items="${list_manu}">
            <c:choose>
                <c:when test="${manu.maHang == shoes.hangGiay.getMaHang()}">
                    <option selected value="${manu.maHang}">${manu.tenHangGiay}</option>
                </c:when> 
                <c:otherwise>
                    <option value="${manu.maHang}">${manu.tenHangGiay}</option>
                </c:otherwise> 
            </c:choose>
        </c:forEach> 
    </select>
</div>
<div class="col-lg-6 shoes-padding-input">
    <label>Loại giày
        <small class="msg-error" id="er-loaiGiay"></small>
    </label>
    <select name="maLoaiGiay" class="form-control">
        <c:forEach var="s_type" items="${list_type}">
            <c:choose>
                <c:when test="${s_type.maLoaiGiay == shoes.loaiGiay.getMaLoaiGiay()}">
                    <option selected value="${s_type.maLoaiGiay}">${s_type.tenLoaiGiay}</option>
                </c:when> 
                <c:otherwise>
                    <option value="${s_type.maLoaiGiay}">${s_type.tenLoaiGiay}</option>
                </c:otherwise> 
            </c:choose>
        </c:forEach> 
    </select>
</div>
<div class="col-lg-6 shoes-padding-input">
    <label>Giá thành
        <small class="msg-error" id="er-gia"></small>
    </label>
    <div class="form-group input-group">
        <span class="input-group-addon">$</span>
        <input name ="gia" type="number" value="${shoes.gia}" class ="form-control" />
        <span class="input-group-addon">đồng</span>
    </div>

</div>

<div class="col-lg-6 shoes-padding-input">
    <label>Giảm giá
        <small class="msg-error" id="er-giamGia"></small>
    </label>
    <div class="input-group">
        <span class="input-group-addon">-$</span>
        <input name="giamGia" type="number" value="${shoes.giamGia}" min="0" max="100" class="form-control" />
        <span class="input-group-addon">%</span>
    </div>

</div>
<div class="col-lg-6 shoes-padding-input">
    <label>Kích cỡ
        <small class="msg-error" id="er-kichCo"></small>
    </label>
    <div class="input-group">
        <span class="input-group-addon">#</span>
        <input name="kichCo" type="number" value="${shoes.kichCo}" min="0" class="form-control" />
        <span class="input-group-addon">dv</span>
    </div>
</div>
<div class="col-lg-6 shoes-padding-input">
    <label>Màu sắc 
        <small class="msg-error" id="er-mauSac"></small>
    </label>
    <input name="mauSac"class="form-control" value="${shoes.mauSac}" placeholder="Màu giày">
</div>

<div class="col-lg-6 shoes-padding-input">
    <label>Số lượng
        <small class="msg-error" id="er-soLuong"></small>
    </label>
    <div class="input-group">
        <span class="input-group-addon">#</span>
        <input name="soLuong" type="number" value="${shoes.soLuong}" min="0" class="form-control">
        <span class="input-group-addon">dv</span>
    </div>

</div>
<div class="col-lg-12 shoes-padding-input">
    <label>Mô tả
        <small class="msg-error" id="er-moTa"></small>
    </label>
    <textarea name="moTa" class="form-control"rows="3">${shoes.moTa}</textarea>
</div>
