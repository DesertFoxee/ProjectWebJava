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
<div class="col-lg-6 shoes-padding-input">
    <label>Màu sắc 
        <small class="msg-error" id="er-mauSac"></small>
    </label>
    <input name="mauSac"class="form-control" value="${shoes.mauSac}" placeholder="Màu giày">
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
        <span class="input-group-addon">VND</span>
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
<div class="col-lg-12 shoes-padding-input">
    <div class="panel panel-default">
        <div class="panel-heading">
            Kích cỡ
            <div class="pull-right">
                <div class="btn-group" style="top: -5px;">
                    <button type="button" class="btn btn-default btn-sm" id="btn-refesh-size-shoes"
                            style="line-height: 1.2em;">Refesh</button>
                    <button type="button" class="btn btn-info btn-sm " id ="btn-add-size-shoes"
                            style="line-height: 1.2em;">Thêm</button>
                    <button type="button" onclick='return false'
                            class="btn btn-primary btn-sm " id="btn-update-size-shoes"
                            style="line-height: 1.2em;">Update</button>
                </div>
            </div>
        </div>
        <div class="panel-body"
             style="overflow: auto; max-height: 100px;">
            <div class="table-responsive">
                <table
                    class="table table-add-size-shoes table-bordered table-hover" id ="tb-edit-size">
                    <thead>
                        <tr>
                            <th>Kích cỡ</th>
                            <th>Số lượng</th>
                            <th align="center" style="text-align: center; width: 50px;">CN</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:set var="obj" value="${list_size}" scope="request"></c:set>
                        <jsp:include page="/WEB-INF/views/partialview/manager/shoes/size.jsp" flush="true" />
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
    <textarea name="moTa" class="form-control"rows="3">${shoes.moTa}</textarea>
</div>
