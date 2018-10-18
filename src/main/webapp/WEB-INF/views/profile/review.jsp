<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<!-- 주소는 영화 id 주소로 
    ex) review/12134
-->
<main>
    <div id="review-wrap">
        <div id="review">
            <div id="review-header">
                <h2>리뷰</h2>
            </div>
            <div id="review-contents">
                <div id="review__Poster">
                    <img src="https://image.tmdb.org/t/p/w300/mN226GIDSMhWBpqPJopGlLk3qXn.jpg" alt="더넌">
                    <!-- 봤어요수 리스트수 좋아요수 -->
                </div>
                <section class="review-content">
                    <div class="review-info">
                        <div class="reviews-detail-info">
                            <figure>
                                <img src="https://secure.gravatar.com/avatar/1a0a467fedafd8cd28e78ec2ce36116b?rating=PG&amp;size=80&amp;border=&amp;default=https%3A%2F%2Fletterboxd.com%2Fstatic%2Fimg%2Favatar80.e477ca3c.png"
                                    alt="Mycho">
                                <figcaption>
                                    <p class="attribution">
                                        <a href="/profile/100" class="context">유저 이름Mycho</a>
                                        등급
                                    </p>
                                </figcaption>
                            </figure>
                        </div>
                        <div class="reviews-detail-content">
                            <h3>영화제목</h3>
                            <span class="rating rated-9">
                                ★★★★½
                            </span>
                            <div class="body-text collapsible-text">
                                <div class="date">2018/10/07</div>
                                <div class="collapsed-text">
                                    <p>
                                        Venom is a film i've waited for since before even Raimi's Spiderman.
                                        After Blade came out Columbia/TriStar announced that they were making a Venom
                                        solo film without
                                        Spiderman involved in an article in Total Film or Empire (I don't remember
                                        which) and could hardly
                                        contain my excitement.......
                                        <a href="#" class="reveal js-reveal">
                                            더보기
                                        </a>
                                    </p>
                                </div>
                            </div>
                            <ul class="review-like">
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
                    </div>
                </section>
            </div>
        </div>
    </div>
</main>
<%@ include file="../include/footer.jsp" %>