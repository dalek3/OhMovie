<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
<main>
    <div id="profile-wrap">
        <div id="profile">
            <div id="profile-header-wrap">
                <section id="profile-header">

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
                                유저이름
                            </h2>
                            <p>
                                레벨(평론가/유저)
                            </p>
                        </figcaption>
                    </figure>

                    <ul>
                        <li><a href="#">the-favourite.tumblr.com</a></li>
                        <li><a href="#">josegoeswest</a></li>
                    </ul>
                </section>
            </div>

            <div id="profile-nav">
                <ul>
                    <li><a href="/profile/${member.uIdx}">취향분석</a></li>
                    <li><a href="/profile/${member.uIdx}/#">좋아요</a></li>
                    <li><a href="/profile/${member.uIdx}/diary">평가작품</a></li>
                    <li><a href="/profile/${member.uIdx}/#">보고싶어요</a></li>
                    <li><a href="/profile/${member.uIdx}/#">컬랙션</a></li>
                </ul>
            </div>

            <section id="profile-contents">
                <div id="contents-nav">
                    <ul>
                        <li><a href="/profile/${member.uIdx}/diary">봤어요</a></li>
                        <li><a href="/profile/${member.uIdx}/diary">다이어리</a></li>
                        <li><a href="/profile/${member.uIdx}/reviews">리뷰</a></li>
                        <li><a href="/profile/${member.uIdx}/diary">평점</a></li>
                    </ul>
                </div>
                <div id="review">
                    <div id="review-contents">
                        <section class="review-content">
                            <!-- for문 -->
                            <div class="review-info">
                                <div class="reviews-detail-content" style="display:flex">
                                    <div id="review__Poster">
                                        <img src="https://image.tmdb.org/t/p/w300/mN226GIDSMhWBpqPJopGlLk3qXn.jpg" alt="더넌">
                                        <!-- 봤어요수 리스트수 좋아요수 -->
                                    </div>
                                    <div class="review-content" style="padding-left: 40px;">
                                        <h3>영화제목</h3>
                                        <span class="rating rated-9">
                                            ★★★★½
                                        </span>
                                        <div class="body-text collapsible-text">
                                            <div class="date">2018/10/07</div>
                                            <div class="collapsed-text">
                                                <p>
                                                    Venom is a film i've waited for since before even Raimi's
                                                    Spiderman.
                                                    After Blade came out Columbia/TriStar announced that they were
                                                    making a Venom solo film without
                                                    Spiderman involved in an article in Total Film or Empire (I don't
                                                    remember which) and could hardly
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
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="review-info">
                                <div class="reviews-detail-content" style="display:flex">
                                    <div id="review__Poster">
                                        <img src="https://image.tmdb.org/t/p/w300/mN226GIDSMhWBpqPJopGlLk3qXn.jpg" alt="더넌">
                                        <!-- 봤어요수 리스트수 좋아요수 -->
                                    </div>
                                    <div class="review-content" style="padding-left: 40px;">
                                        <h3>영화제목</h3>
                                        <span class="rating rated-9">
                                            ★★★★½
                                        </span>
                                        <div class="body-text collapsible-text">
                                            <div class="date">2018/10/07</div>
                                            <div class="collapsed-text">
                                                <p>
                                                    Venom is a film i've waited for since before even Raimi's
                                                    Spiderman.
                                                    After Blade came out Columbia/TriStar announced that they were
                                                    making a Venom solo film without
                                                    Spiderman involved in an article in Total Film or Empire (I don't
                                                    remember which) and could hardly
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
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="review-info">
                                <div class="reviews-detail-content" style="display:flex">
                                    <div id="review__Poster">
                                        <img src="https://image.tmdb.org/t/p/w300/mN226GIDSMhWBpqPJopGlLk3qXn.jpg" alt="더넌">
                                        <!-- 봤어요수 리스트수 좋아요수 -->
                                    </div>
                                    <div class="review-content" style="padding-left: 40px;">
                                        <h3>영화제목</h3>
                                        <span class="rating rated-9">
                                            ★★★★½
                                        </span>
                                        <div class="body-text collapsible-text">
                                            <div class="date">2018/10/07</div>
                                            <div class="collapsed-text">
                                                <p>
                                                    Venom is a film i've waited for since before even Raimi's
                                                    Spiderman.
                                                    After Blade came out Columbia/TriStar announced that they were
                                                    making a Venom solo film without
                                                    Spiderman involved in an article in Total Film or Empire (I don't
                                                    remember which) and could hardly
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
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="review-info">
                                <div class="reviews-detail-content" style="display:flex">
                                    <div id="review__Poster">
                                        <img src="https://image.tmdb.org/t/p/w300/mN226GIDSMhWBpqPJopGlLk3qXn.jpg" alt="더넌">
                                        <!-- 봤어요수 리스트수 좋아요수 -->
                                    </div>
                                    <div class="review-content" style="padding-left: 40px;">
                                        <h3>영화제목</h3>
                                        <span class="rating rated-9">
                                            ★★★★½
                                        </span>
                                        <div class="body-text collapsible-text">
                                            <div class="date">2018/10/07</div>
                                            <div class="collapsed-text">
                                                <p>
                                                    Venom is a film i've waited for since before even Raimi's
                                                    Spiderman.
                                                    After Blade came out Columbia/TriStar announced that they were
                                                    making a Venom solo film without
                                                    Spiderman involved in an article in Total Film or Empire (I don't
                                                    remember which) and could hardly
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
                                        </ul>
                                    </div>
                                </div>
                            </div>


                        </section>
                    </div>
                </div>
            </section>
        </div>
    </div>
</main>
<%@ include file="../include/footer.jsp" %>