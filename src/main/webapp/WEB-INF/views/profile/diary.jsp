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
    
                        <div class="profile-counts">
                            <div class="profile-count"><a href="#"><span>0</span>영화</a></div>
                            <div class="profile-count"><a href="#"><span>0</span>팔로우</a></div>
                            <div class="profile-count"><a href="#"><span>0</span>팔로잉</a></div>
                        </div>
    
                        <figure>
                            <div class="avatar">
                                <img src="https://secure.gravatar.com/avatar/e6d54aacfb88e045648ceb2fef4e6ffc?rating=PG&size=220&border=&default=https%3A%2F%2Fletterboxd.com%2Fstatic%2Fimg%2Favatar220.c0a51ba6.png"
                                    alt="프로필사진">
                            </div>
                            <figcaption>
                                <h2>
                                    ${member.uName}
                                </h2>
                            </figcaption>
                        </figure>
    
                        <ul>
                            <li><a href="#">the-favourite.tumblr.com</a></li>
                            <li><a href="#">josegoeswest</a></li>
                        </ul>
                    </section>
                </div>
    
                <div class="profile-nav">
                    <ul>
                        <li><a href="/profile/${member.uIdx}">취향분석</a></li>
                        <li><a href="/profile/${member.uIdx}/#">좋아요</a></li>
                        <li><a href="/profile/${member.uIdx}/diary">평가작품</a></li>
                        <li><a href="/profile/${member.uIdx}/#">보고싶어요</a></li>
                        <li><a href="/profile/${member.uIdx}/#">컬랙션</a></li>
                    </ul>
                </div>
    
                <section class="profile-contents">
                    <div class="contents-nav">
                        <ul>
                            <li><a href="/profile/${member.uIdx}/diary">봤어요</a></li>
                            <li><a href="/profile/${member.uIdx}/diary">다이어리</a></li>
                            <li><a href="/profile/${member.uIdx}/reviews">리뷰</a></li>
                            <li><a href="/profile/${member.uIdx}/diary">평점</a></li>
                        </ul>
                    </div>
                    <div class="diary-table">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>월</th>
                                    <th>일</th>
                                    <th>제목</th>
                                    <th>출시일</th>
                                    <th>평점</th>
                                    <th>좋아요</th>
                                    <th>리뷰</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- for문 -->
                                <tr>
                                    <td>2018-10</td>
                                    <td>16</td>
                                    <td>
                                        포스터
                                        영화제목
                                    </td>
                                    <td>2018</td>
                                    <td>평점</td>
                                    <td>좋아요</td>
                                    <td>리뷰링크</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </section>
            </div>
        </div>
    </main>
<%@ include file="../include/footer.jsp" %>
<%@ include file="../include/common.jsp" %>
<script>
	let input = document.querySelector('.search');
	
	function onKeyDetection(e) {
		setTimeout(() => {
			let result = input.value;
	        window.location.href = '/search?q='+result;
		}, 1500);
	}
	input.addEventListener('keyup', onKeyDetection);
</script>
</body>

</html>