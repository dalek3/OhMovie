<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
        <main class="container">
            <div class="review-wrap">
                <div class="review">
                    <div class="review-header">
                        <h2>전체 리뷰</h2>
                    </div>
                    <div class="review-contents">
                        <section class="review-content"></section>
                    </div>
                </div>
            </div>
        </main>
<%@ include file="../include/footer.jsp" %>
<%@ include file="../include/common.jsp" %>
<script>
    // restcontroller를 통해서 전달하기
    let mIdx = <c:out value="${mIdx}">mIdx</c:out>;
</script>
<script src="<c:url value='/resources/dist/js/contentReviewsAll.js'/>"></script>
<script>
	let input = _.el('.search');
	
	function onKeyDetection(e) {
		setTimeout(() => {
			let result = input.value;
	        window.location.href = '/search?q='+result;
		}, 1100);
	}
	input.addEventListener('keyup', onKeyDetection);
</script>
</body>

</html>