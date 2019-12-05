<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<div class="col-lg-12" style="text-align: center;">
    <small class="msg-error" id="er-common" ></small>
</div>
<input name="maHangGiay" value="${type.maLoaiGiay}" type="hidden" >
<div class="col-lg-12 shoes-padding-input">
    <label>Tên loại giày
        <small class="msg-error" id="er-tenLoaiGiay"></small>
    </label>
    <input name="tenLoaiGiay" value="${type.tenLoaiGiay}" class="form-control" placeholder="Tên loại giày">
</div>