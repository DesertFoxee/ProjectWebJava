<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<div class="col-lg-12" style="text-align: center;">
    <small class="msg-error" id="er-common" ></small>
</div>
<input name="maHang" value="${manu.maHang}" type="hidden" >
<div class="col-lg-6 shoes-padding-input">
    <label>Tên hãng giày
        <small class="msg-error" id="er-tenHangGiay"></small>
    </label>
    <input name="tenHangGiay" class="form-control" value="${manu.tenHangGiay}" placeholder="Tên hãng giày">
</div>
<div class="col-lg-12 shoes-padding-input">
    <label>Mô tả
        <small class="msg-error" id="er-ghiChu"></small>
    </label>
    <textarea name="ghiChu" class="form-control" placeholder="Mô tả về hãng giày"
              rows="3">${manu.ghiChu}</textarea>
</div>