<%@page contentType="text/html ;charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<c:url var="post_url"  value="${param.url}"/>
<div class="modal fade" id="image-shoes" tabindex="-1" role="dialog" aria-hidden="true" data-id="" link="${post_url}">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"
                        aria-hidden="true">&times;</button>
                <h4 class="modal-title">Hình ảnh</h4>
            </div>
            <div class="modal-body" style="overflow: auto;">

            </div>
            <div class="modal-footer">
                <button type="button" id ="btn-choose-file" class="btn btn-default">Thêm ảnh</button>

                <button type="button" id ="btn-update-file"   class="btn btn-primary">Cập nhật</button>
                <input id="selectfile" onclick="this.value=null;" type="file" name="" style="display: none;" />
            </div>
        </div>
    </div>
</div>
