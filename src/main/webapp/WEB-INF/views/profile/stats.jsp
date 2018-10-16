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

                    </section>
                </div>
            </div>
        </main>
<%@ include file="../include/footer.jsp" %>