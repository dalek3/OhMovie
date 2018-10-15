<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<main class="container">
    <div id="review-wrap">
        <div id="review">
            <div id="review-header">
                <h2>영화제목 리뷰</h2>
            </div>
            <div id="review-contents">
                <img src="https://image.tmdb.org/t/p/w300/mN226GIDSMhWBpqPJopGlLk3qXn.jpg" alt="더넌">
                <!-- for문 -->
                <section class="review-content">
                    <p>프로필사진</p>
                    <p>별점</p>
                    <p>유저이름</p>
                    <p>날짜</p>
                    <p>
                        스스로 부여한 형식의 장벽을 창의성의 발판으로. more
                    </p>
                    <ul>
                        <li>
                            좋아요
                        </li>
                        <li>
                            좋아요수
                        </li>
                    </ul>
                </section>
                <div id="review-footer">
                    <h3>보기</h3>
                </div>
            </div>
        </div>
    </div>
</main>
<%@ include file="../include/footer.jsp" %>