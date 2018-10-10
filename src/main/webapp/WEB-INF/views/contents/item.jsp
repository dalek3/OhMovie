<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
        <main>
            <div class="ContentJumbotron-wrap">
                <section class="ContentJumbotron">
                    <div class="ContentJumbotron__Poster">
                        <img src="https://image.tmdb.org/t/p/w300/mN226GIDSMhWBpqPJopGlLk3qXn.jpg" alt="더넌">
                        <!-- videos Trailer -->
                        <a href="https://www.youtube.com/watch?v=pzD9zGcUNrw">
                            <p>트레일러 보기</p>
                        </a>
                        <!-- 봤어요수 리스트수 좋아요수 -->
                    </div>

                    <div class="ContentJumbotron-PaneInner">
                        <!-- title -->
                        <h1 class="ContentJumbotron_title">제목</h1>
                        <!-- release_date・genres・production_countries -->
                        <div class="ContentJumbotron_detail">
                            연도・장르・나라
                        </div>
                        <div class="ContentJumbotron_ContentRatings">
                            <div class="critic-reviews reviews-score">
                                <div class="score">90%</div>
                                <div class="reviews-wrap">
                                    <h3 class="reviews-header">기자・평론가 평점</h3>
                                    <div class="score-stats">
                                        <div class="score-item">
                                            <span>평균 평점</span>
                                            <em>7.6/10</em>
                                        </div>
                                        <div class="score-item">
                                            <span>긍정 리뷰</span>
                                            <em>265</em>
                                        </div>
                                        <div class="score-item">
                                            <span>참여 인원</span>
                                            <em>285</em>
                                        </div>
                                        <div class="score-item">
                                            <span>부정 리뷰</span>
                                            <em>21</em>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="user-reviews reviews-score">
                                <!-- vote_average -->
                                <div class="score">92%</div>
                                <div class="reviews-wrap">
                                    <h3 class="reviews-header">유저 평점</h3>
                                    <div class="score-stats">
                                        <!-- vote_average -->
                                        <div class="score-item">
                                            <span>평균 평점</span>
                                            <em>7.6/10</em>
                                        </div>
                                        <div class="score-item">
                                            <span>예상 평점</span>
                                            <em>7.6/10</em>
                                        </div>
                                        <!-- vote_count -->
                                        <div class="score-item">
                                            <span>참여 인원</span>
                                            <em>285</em>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="ContentJumbotron-user-panel ">
                        <ul>
                            <li class="user-panel">
                                <a href="#">
                                    <p>
                                        <i class="fa fa-eye"></i>
                                        <span class="fw700">봤어요</span>
                                    </p>
                                </a>
                                <a href="#">
                                    <p>
                                        <i class="fa fa-heart"></i>
                                        <span class="fw700">좋아요</span>
                                    </p>
                                </a>
                                <a href="#">
                                    <p>
                                        <i class="fa fa-bookmark"></i>
                                        <span class="fw700">보고싶어요</span>
                                    </p>
                                </a>
                            </li>
                            <li>
                                <span class="fw700">평가</span>
                                <div class="br-wrapper br-theme-fontawesome-stars">
                                    <select id="example">
                                        <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                    </select>
                                </div>
                            </li>
                            <li>
                                <a href="#"><span class="fw700">리뷰 &amp; 다이어리</span></a>
                            </li>
                            <li>
                                <a href="#"><span class="fw700">리스트</span></a>
                            </li>
                            <li>
                                <a href="#"><span class="fw700">공유</span></a>
                            </li>
                        </ul>
                    </div>
                </section>
            </div>
            <div class="section-panels">
                <section class="section-panel">
                    <!-- details -->
                    <div class="section-panel-header">
                        <h3>기본정보</h3>
                    </div>
                    <div class="overview-wrap">
                        <div class="overview-left">
                            <dl>
                                <!-- overview -->
                                <dt>줄거리</dt>
                                <dd>
                                    영웅인가, 악당인가<br>
                                    <br>
                                    진실을 위해서라면 몸을 사리지 않는 정의로운 열혈 기자 '에디 브록’. 거대 기업 라이프 파운데이션의 뒤를 쫓던 그는 이들의 사무실에 잠입했다가
                                    실험실에서 외계 생물체 '심비오트'의 기습 공격을 받게 된다. '심비오트'와 공생하게 된 '에디 브록’은 마침내 한층 강력한 '베놈'으로 거듭나고,
                                    악한 존재만을 상대하려는 '에디 브록'의 의지와 달리 '베놈'은 난폭한 힘을 주체하지 못하는데…!<br>
                                    <br>
                                    지배할 것인가, 지배당할 것인가<br>
                                    10월, 마블 역사상 가장 강렬한 빌런 히어로의 등장을 확인하라!<br>
                                </dd>
                            </dl>
                        </div>
                        <div class="overview-right">
                            <dl>
                                <!-- original_title -->
                                <div class="overview-item">
                                    <dt>원제</dt>
                                    <dd>베놈</dd>
                                </div>
                                <!-- release_date -->
                                <div class="overview-item">
                                    <dt>출시일</dt>
                                    <dd>2018</dd>
                                </div>
                                <!-- production_countries -->
                                <div class="overview-item">
                                    <dt>국가</dt>
                                    <dd>미국</dd>
                                </div>
                                <!-- genres -->
                                <div class="overview-item">
                                    <dt>장르</dt>
                                    <dd><a href="#">액션</a>SF/액션/공포</dd>
                                </div>
                                <div class="overview-item">
                                    <dt>등급</dt>
                                    <dd>R</dd>
                                </div>
                                <!-- runtime -->
                                <div class="overview-item">
                                    <dt>런타임</dt>
                                    <dd>1:30</dd>
                                </div>
                            </dl>
                        </div>
                    </div>
                </section>
                <section class="section-panel">
                    <!-- credits -->
                    <div class="section-panel-header">
                        <h3>출연/제작</h3>
                    </div>
                    <!-- cast -->
                    <ul class="ContentPeople">
                        <li class="listItem">
                            <a title="루벤 플레이셔" href="#">
                                <figure>
                                    <div class="profilePhoto">
                                        <div class="ProfilePhoto__ProfilePhotoImage"></div>
                                        <div class="ProfilePhoto__DefaultImageContainer">
                                            <!-- profile_path -->
                                            <img src="https://image.tmdb.org/t/p/w66_and_h66_face/4CR1D9VLWZcmGgh4b6kKuY2NOel.jpg"
                                                alt="cast">
                                        </div>
                                    </div>
                                    <figcaption class="profilePhoto__Info">
                                        <!-- name -->
                                        <div class="profilePhoto__Title">배우이름</div>
                                        <!-- character -->
                                        <div class="profilePhoto__Subtitle">캐릭터 이름</div>
                                    </figcaption>
                                </figure>
                            </a>
                        </li>
                        <li class="listItem">
                            <a title="루벤 플레이셔" href="#">
                                <figure>
                                    <div class="profilePhoto">
                                        <div class="ProfilePhoto__ProfilePhotoImage"></div>
                                        <div class="ProfilePhoto__DefaultImageContainer">
                                            <!-- profile_path -->
                                            <img src="https://image.tmdb.org/t/p/w66_and_h66_face/4CR1D9VLWZcmGgh4b6kKuY2NOel.jpg"
                                                alt="cast">
                                        </div>
                                    </div>
                                    <figcaption class="profilePhoto__Info">
                                        <!-- name -->
                                        <div class="profilePhoto__Title">배우이름</div>
                                        <!-- character -->
                                        <div class="profilePhoto__Subtitle">캐릭터 이름</div>
                                    </figcaption>
                                </figure>
                            </a>
                        </li>
                        <li class="listItem">
                            <a title="루벤 플레이셔" href="#">
                                <figure>
                                    <div class="profilePhoto">
                                        <div class="ProfilePhoto__ProfilePhotoImage"></div>
                                        <div class="ProfilePhoto__DefaultImageContainer">
                                            <!-- profile_path -->
                                            <img src="https://image.tmdb.org/t/p/w66_and_h66_face/4CR1D9VLWZcmGgh4b6kKuY2NOel.jpg"
                                                alt="cast">
                                        </div>
                                    </div>
                                    <figcaption class="profilePhoto__Info">
                                        <!-- name -->
                                        <div class="profilePhoto__Title">배우이름</div>
                                        <!-- character -->
                                        <div class="profilePhoto__Subtitle">캐릭터 이름</div>
                                    </figcaption>
                                </figure>
                            </a>
                        </li>
                        <li class="listItem">
                            <a title="루벤 플레이셔" href="#">
                                <figure>
                                    <div class="profilePhoto">
                                        <div class="ProfilePhoto__ProfilePhotoImage"></div>
                                        <div class="ProfilePhoto__DefaultImageContainer">
                                            <!-- profile_path -->
                                            <img src="https://image.tmdb.org/t/p/w66_and_h66_face/4CR1D9VLWZcmGgh4b6kKuY2NOel.jpg"
                                                alt="cast">
                                        </div>
                                    </div>
                                    <figcaption class="profilePhoto__Info">
                                        <!-- name -->
                                        <div class="profilePhoto__Title">배우이름</div>
                                        <!-- character -->
                                        <div class="profilePhoto__Subtitle">캐릭터 이름</div>
                                    </figcaption>
                                </figure>
                            </a>
                        </li>
                        <li class="listItem">
                            <a title="루벤 플레이셔" href="#">
                                <figure>
                                    <div class="profilePhoto">
                                        <div class="ProfilePhoto__ProfilePhotoImage"></div>
                                        <div class="ProfilePhoto__DefaultImageContainer">
                                            <!-- profile_path -->
                                            <img src="https://image.tmdb.org/t/p/w66_and_h66_face/4CR1D9VLWZcmGgh4b6kKuY2NOel.jpg"
                                                alt="cast">
                                        </div>
                                    </div>
                                    <figcaption class="profilePhoto__Info">
                                        <!-- name -->
                                        <div class="profilePhoto__Title">배우이름</div>
                                        <!-- character -->
                                        <div class="profilePhoto__Subtitle">캐릭터 이름</div>
                                    </figcaption>
                                </figure>
                            </a>
                        </li>

                    </ul>
                </section>

                <!-- <section class="section-panel">
                    <div class="section-panel-header">
                        <h3>미디어</h3>
                        <a href="#">모두 보기 &gt;</a>
                    </div>
                    사진 비디오 뉴스
                    images
                    <div class="photos">
                        backdrops
                            file_path
                        posters
                            file_path
                    </div>
                    video
                    <div class="videos">
                        key
                    </div>
                    news
                    <div class="news">
                        뉴스
                    </div>
        
                </section> -->

                <section class="section-panel">
                    <div class="section-panel-header">
                        <h3>기자・평론가 리뷰</h3>
                        <a href="#">모두 보기 &gt;</a>
                    </div>
                    <ul class="reviews">
                        <li class="reviews-detail">
                            <div class="reviews-detail-content">
                                <span class="rating rated-9">
                                    긍정/부정★★★★½
                                </span>
                                <div class="body-text collapsible-text">
                                    <div class="collapsed-text">
                                        <p>
                                            Venom is a film i've waited for since before even Raimi's Spiderman.
                                            After Blade came out Columbia/TriStar announced that they were making a
                                            Venom solo film without Spiderman involved in an article in Total Film or
                                            Empire (I don't remember which) and could hardly contain my
                                            excitement.......
                                            <a href="#" class="reveal js-reveal">
                                                더보기
                                            </a>
                                        </p>
                                    </div>
                                    <div class="date">
                                        2018/10/07
                                    </div>
                                </div>
                            </div>
                            <div class="reviews-detail-info">
                                <a href="#">
                                    <figure>
                                        <img src="https://secure.gravatar.com/avatar/1a0a467fedafd8cd28e78ec2ce36116b?rating=PG&amp;size=80&amp;border=&amp;default=https%3A%2F%2Fletterboxd.com%2Fstatic%2Fimg%2Favatar80.e477ca3c.png"
                                            alt="Mycho">
                                        <figcaption>
                                            <p class="attribution">
                                                <a href="/mycho/film/venom-2018/" class="context">평론가 이름Mycho</a>
                                                <p>소속</p>
                                                <p>등급</p>
                                            </p>
                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                        </li>
                        <li class="reviews-detail">
                            <div class="reviews-detail-content">
                                <span class="rating rated-9">
                                    ★★★★½
                                </span>
                                <div class="body-text collapsible-text">
                                    <div class="collapsed-text">
                                        <p>
                                            Venom is a film i've waited for since before even Raimi's Spiderman.
                                            After Blade came out Columbia/TriStar announced that they were making a
                                            Venom solo film without Spiderman involved in an article in Total Film or
                                            Empire (I don't remember which) and could hardly contain my
                                            excitement........
                                            <a href="#" class="reveal js-reveal">
                                                더보기
                                            </a>
                                        </p>
                                    </div>
                                    <div class="date">
                                        2018/10/07
                                    </div>
                                </div>
                            </div>
                            <div class="reviews-detail-info">
                                <a href="#">
                                    <figure>
                                        <img src="https://secure.gravatar.com/avatar/1a0a467fedafd8cd28e78ec2ce36116b?rating=PG&amp;size=80&amp;border=&amp;default=https%3A%2F%2Fletterboxd.com%2Fstatic%2Fimg%2Favatar80.e477ca3c.png"
                                            alt="Mycho">
                                        <figcaption>
                                            <p class="attribution">
                                                <a href="/mycho/film/venom-2018/" class="context">유저 이름Mycho</a>
                                            </p>
                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                        </li>
                        <li class="reviews-detail">
                            <div class="reviews-detail-content">
                                <span class="rating rated-9">
                                    ★★★★½
                                </span>
                                <div class="body-text collapsible-text">
                                    <div class="collapsed-text">
                                        <p>
                                            Venom is a film i've waited for since before even Raimi's Spiderman.
                                            After Blade came out Columbia/TriStar announced that they were making a
                                            Venom solo film without Spiderman involved in an article in Total Film or
                                            Empire (I don't remember which) and could hardly contain my
                                            excitement.........
                                            <a href="#" class="reveal js-reveal">
                                                더보기
                                            </a>
                                        </p>
                                    </div>
                                    <div class="date">
                                        2018/10/07
                                    </div>
                                </div>
                            </div>
                            <div class="reviews-detail-info">
                                <a href="#">
                                    <figure>
                                        <img src="https://secure.gravatar.com/avatar/1a0a467fedafd8cd28e78ec2ce36116b?rating=PG&amp;size=80&amp;border=&amp;default=https%3A%2F%2Fletterboxd.com%2Fstatic%2Fimg%2Favatar80.e477ca3c.png"
                                            alt="Mycho">
                                        <figcaption>
                                            <p class="attribution">
                                                <a href="/mycho/film/venom-2018/" class="context">유저 이름Mycho</a>
                                            </p>
                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                        </li>
                    </ul>
                </section>

                <section class="section-panel ">
                    <div class="section-panel-header">
                        <h3>유저 리뷰</h3>
                        <a href="#">모두 보기 &gt;</a>
                    </div>
                    <ul class="reviews">
                        <li class="reviews-detail">
                            <div class="reviews-detail-content">
                                <span class="rating rated-9">
                                    ★★★★½
                                </span>
                                <div class="body-text collapsible-text">
                                    <div class="collapsed-text">
                                        <p>
                                            Venom is a film i've waited for since before even Raimi's Spiderman.
                                            After Blade came out Columbia/TriStar announced that they were making a
                                            Venom solo film without Spiderman involved in an article in Total Film or
                                            Empire (I don't remember which) and could hardly contain my
                                            excitement.......
                                            <a href="#" class="reveal js-reveal">
                                                더보기
                                            </a>
                                        </p>
                                    </div>
                                    <div class="date">
                                        2018/10/07
                                    </div>
                                </div>
                            </div>
                            <div class="reviews-detail-info">
                                <a href="#">
                                    <figure>
                                        <img src="https://secure.gravatar.com/avatar/1a0a467fedafd8cd28e78ec2ce36116b?rating=PG&amp;size=80&amp;border=&amp;default=https%3A%2F%2Fletterboxd.com%2Fstatic%2Fimg%2Favatar80.e477ca3c.png"
                                            alt="Mycho">
                                        <figcaption>
                                            <p class="attribution">
                                                <a href="/mycho/film/venom-2018/" class="context">유저 이름Mycho</a>
                                                등급
                                            </p>
                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                        </li>
                        <li class="reviews-detail">
                            <div class="reviews-detail-content">
                                <span class="rating rated-9">
                                    ★★★★½
                                </span>
                                <div class="body-text collapsible-text">
                                    <div class="collapsed-text">
                                        <p>
                                            Venom is a film i've waited for since before even Raimi's Spiderman.
                                            After Blade came out Columbia/TriStar announced that they were making a
                                            Venom solo film without Spiderman involved in an article in Total Film or
                                            Empire (I don't remember which) and could hardly contain my
                                            excitement........
                                            <a href="#" class="reveal js-reveal">
                                                더보기
                                            </a>
                                        </p>
                                    </div>
                                    <div class="date">
                                        2018/10/07
                                    </div>
                                </div>
                            </div>
                            <div class="reviews-detail-info">
                                <a href="#">
                                    <figure>
                                        <img src="https://secure.gravatar.com/avatar/1a0a467fedafd8cd28e78ec2ce36116b?rating=PG&amp;size=80&amp;border=&amp;default=https%3A%2F%2Fletterboxd.com%2Fstatic%2Fimg%2Favatar80.e477ca3c.png"
                                            alt="Mycho">
                                        <figcaption>
                                            <p class="attribution">
                                                <a href="/mycho/film/venom-2018/" class="context">유저 이름Mycho</a>
                                            </p>
                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                        </li>
                        <li class="reviews-detail">
                            <div class="reviews-detail-content">
                                <span class="rating rated-9">
                                    ★★★★½
                                </span>
                                <div class="body-text collapsible-text">
                                    <div class="collapsed-text">
                                        <p>
                                            Venom is a film i've waited for since before even Raimi's Spiderman.
                                            After Blade came out Columbia/TriStar announced that they were making a
                                            Venom solo film without Spiderman involved in an article in Total Film or
                                            Empire (I don't remember which) and could hardly contain my
                                            excitement.........
                                            <a href="#" class="reveal js-reveal">
                                                더보기
                                            </a>
                                        </p>
                                    </div>
                                    <div class="date">
                                        2018/10/07
                                    </div>
                                </div>
                            </div>
                            <div class="reviews-detail-info">
                                <a href="#">
                                    <figure>
                                        <img src="https://secure.gravatar.com/avatar/1a0a467fedafd8cd28e78ec2ce36116b?rating=PG&amp;size=80&amp;border=&amp;default=https%3A%2F%2Fletterboxd.com%2Fstatic%2Fimg%2Favatar80.e477ca3c.png"
                                            alt="Mycho">
                                        <figcaption>
                                            <p class="attribution">
                                                <a href="/mycho/film/venom-2018/" class="context">유저 이름Mycho</a>
                                            </p>
                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                        </li>
                    </ul>
                </section>
                <section class="section-panel">
                    <div class="section-panel-header">
                        <h3>비슷한 작품</h3>
                    </div>
                    <ul class="related-item-list">
                        <li class="related-item">
                            <a href="#">
                                <figure>
                                    <div class="thumbnail-wrapper">
                                        <img src="https://image.tmdb.org/t/p/w300/mN226GIDSMhWBpqPJopGlLk3qXn.jpg" alt="더넌">
                                    </div>
                                    <figcaption>
                                        <h4>영화제목</h4>
                                        <p>평점/예상평점</p>
                                    </figcaption>
                                </figure>
                            </a>
                        </li>
                        <li class="related-item">
                            <a href="#">
                                <figure>
                                    <div class="thumbnail-wrapper">
                                        <img src="https://image.tmdb.org/t/p/w300/mN226GIDSMhWBpqPJopGlLk3qXn.jpg" alt="더넌">
                                    </div>
                                    <figcaption>
                                        <h4>영화제목</h4>
                                        <p>평점/예상평점</p>
                                    </figcaption>
                                </figure>
                            </a>
                        </li>
                        <li class="related-item">
                            <a href="#">
                                <figure>
                                    <div class="thumbnail-wrapper">
                                        <img src="https://image.tmdb.org/t/p/w300/mN226GIDSMhWBpqPJopGlLk3qXn.jpg" alt="더넌">
                                    </div>
                                    <figcaption>
                                        <h4>영화제목</h4>
                                        <p>평점/예상평점</p>
                                    </figcaption>
                                </figure>
                            </a>
                        </li>
                        <li class="related-item">
                            <a href="#">
                                <figure>
                                    <div class="thumbnail-wrapper">
                                        <img src="https://image.tmdb.org/t/p/w300/mN226GIDSMhWBpqPJopGlLk3qXn.jpg" alt="더넌">
                                    </div>
                                    <figcaption>
                                        <h4>영화제목</h4>
                                        <p>평점/예상평점</p>
                                    </figcaption>
                                </figure>
                            </a>
                        </li>
                        <li class="related-item">
                            <a href="#">
                                <figure>
                                    <div class="thumbnail-wrapper">
                                        <img src="https://image.tmdb.org/t/p/w300/mN226GIDSMhWBpqPJopGlLk3qXn.jpg" alt="더넌">
                                    </div>
                                    <figcaption>
                                        <h4>영화제목</h4>
                                        <p>평점/예상평점</p>
                                    </figcaption>
                                </figure>
                            </a>
                        </li>
                    </ul>
                    더보기
                </section>
            </div>
        </main>
 <%@ include file="../include/footer.jsp" %>