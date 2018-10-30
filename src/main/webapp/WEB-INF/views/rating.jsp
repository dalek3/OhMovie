<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
        <main class="container">
            <div class="ReviewMorePage-wrapper">
                <div class="ReviewMorePage-header"></div>
                <figure class="loading-spinner">
                    <img src="https://loading.io/spinners/lava-lamp/index.lava-lamp-preloader.svg">
                    <figcaption>데이터 로딩 중 ...</figcaption>
                </figure>
                <section class="ReviewMorePage-contents">
                    <ul class="ReviewMorePage-reviews">
                       
                    </ul>
                </section>
            </div>
        </main>
    </div>
<%@ include file="include/common.jsp" %>
<script>
    let uIdx = <sec:authentication property='principal.member.uIdx' />
    let input = _.el('.search');
    
    function onKeyDetection(e) {
        setTimeout(() => {
            let result = input.value;
            window.location.href = '/search?q='+result;
        }, 1100);
    }
    input.addEventListener('keyup', onKeyDetection);
</script>
<script src="<c:url value='/resources/dist/js/ratingService.js'/>"></script>
<script src="resources/dist/js/rating.js"></script>
<script src="resources/dist/js/StarRating.js"></script>

</body>

</html>