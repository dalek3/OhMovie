<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<main class="container">
    <div class="profile-wrap">
        <div class="profile">
            <div class="profile-header-wrap">
                <section class="profile-header">
                    <figure>
                        <div class="avatar">
                            <img src="https://secure.gravatar.com/avatar/e6d54aacfb88e045648ceb2fef4e6ffc?rating=PG&size=220&border=&default=https%3A%2F%2Fletterboxd.com%2Fstatic%2Fimg%2Favatar220.c0a51ba6.png"
                                alt="프로필사진">
                        </div>
                        <figcaption>
                            <h2>${member.uName}</h2>
                        </figcaption>
                    </figure>
                </section>
            </div>

            <div class="profile-nav">
                <ul>
                    <li><a href="/profile/${member.uIdx}/#">좋아요</a></li>
                    <li><a href="/profile/${member.uIdx}/#">보고싶어요</a></li>
                    <li><a href="/profile/${member.uIdx}/reviews">리뷰</a></li>
                    <li><a href="/profile/${member.uIdx}/ratings">평점</a></li>
                </ul>
            </div>

            <section class="profile-contents">
                <div class="profile-review">
                    <div class="profile-review-contents">
                        <section class="review-content">
                            <!-- for문 -->
                        </section>
                    </div>
                </div>
            </section>
        </div>
    </div>
</main>
<%@ include file="../include/footer.jsp" %>
<%@ include file="../include/common.jsp" %>

<script>
    let uIdx = <c:out value="${uIdx}">uIdx</c:out>;
</script>
<script src="<c:url value='/resources/dist/js/userReviews.js'/>"></script>
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