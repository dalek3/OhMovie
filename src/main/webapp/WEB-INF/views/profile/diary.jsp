<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<!-- 리뷰작성시 날짜를 기입하면 다이어리에 저장 -->
<main class="container">
    <div id="review-wrap">
        <div id="review">
            <div id="review-header">
                <h2>리뷰</h2>
            </div>
            <div id="review-contents">
                <section class="review-content">
                    <div id="review__Poster">
                        <img src="https://image.tmdb.org/t/p/w300/mN226GIDSMhWBpqPJopGlLk3qXn.jpg" alt="더넌">
                        <!-- videos Trailer -->
                        <a href="https://www.youtube.com/watch?v=pzD9zGcUNrw">
                            <p>트레일러 보기</p>
                        </a>
                        <!-- 봤어요수 리스트수 좋아요수 -->
                    </div>
                    <div class="review-info">
                        <p>프로필사진</p>
                        <p>유저이름</p>
                        <h3>영화제목</h3>
                        <p>별점</p>
                        <p>날짜</p>
                        <p>
                            스스로 부여한 형식의 장벽을 창의성의 발판으로.
                        </p>
                        <ul>
                            <li>
                                좋아요
                            </li>
                            <li>
                                좋아요수
                            </li>
                            <li>
                                신고하기
                            </li>
                        </ul>
                    </div>
                </section>
                <div id="review-footer">
                    <h3>댓글</h3>
                    <sec:authorize access="isAuthenticated()">
                        <button>저장</button>
                    </sec:authorize>
                </div>
            </div>
        </div>
    </div>
</main>
<%@ include file="../include/footer.jsp" %>