<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- jQuery -->
<script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>

<!-- Bootstrap Core JavaScript -->
<script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.min.js'/>"></script>

<!-- Custom Theme JavaScript -->
<script src="<c:url value='/resources/dist/js/common.js'/>"></script>
<script src="<c:url value='/resources/dist/js/speech.js'/>"></script>
<script>
var token = $("meta[name='_csrf']").attr("content");
var header = $("meta[name='_csrf_header']").attr("content");
$(function() {
    $(document).ajaxSend(function(e, xhr, options) {
        xhr.setRequestHeader(header, token);
    });
});
</script>