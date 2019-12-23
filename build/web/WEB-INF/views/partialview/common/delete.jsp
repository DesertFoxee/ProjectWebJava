<%@page contentType="text/html ;charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<div class="modal fade" id="${param.id_modal}" tabindex="-1" role="dialog"
     aria-labelledby="${param.id_lable}" aria-hidden="true" data-id="" >
    <div class="modal-dialog"  role="document">
        <c:url var="post_url" value="${param.url}"/>
        <form role="form" data-id="" id="form-${param.id_modal}" action="${post_url}" >
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"
                            aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="${param.id_lable}">Thông báo</h4>
                </div>
                <div class="modal-body" style="overflow: auto;">
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-default">Đồng ý</button>
                    <button type="button" class="btn btn-primary"
                            data-dismiss="modal">Hủy</button>
                </div>
            </div>
        </form>
    </div>
</div>
