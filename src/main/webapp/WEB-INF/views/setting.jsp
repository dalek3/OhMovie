<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
	<main class="container">
        <div id="setting-wrap">
            <div id="setting">
                <div id="setting-header">
                    <h2>설정</h2>
                </div>
                <div id="setting-contents">
                    <section class="setting-content">
                        <h3>계정</h3>
                        <ul>
                            <li>
                                <div class="name">닉네임</div>
                                <input type="text" name=u_name value="밤비">
                            </li>
                            <li>
                                <div class="name">이메일</div>
                                user00@gmail.com
                            </li>
                            <li>
                                <div class="name">비밀번호</div>
                                <a href="#">비밀번호 변경</a></li>
                            <li>
                                <div class="name">홈페이지</div>
                                <input type="url" name="u_homepage" value="http://www.youtube.com"> 
                            </li>
                        </ul>
                    </section>
                    <section class="setting-content">
                        <h3>SNS연동</h3>
                        <ul>
                            <li>
                                <div class="name">페이스북 연동</div>
                                <button></button>
                            </li>
                            <li>
                                <div class="name">라인 연동</div>
                                <button></button>
                            </li>
                        </ul>
                    </section>
                    <!-- <section class="setting-content">
                        <h3>초기화</h3>
                        <ul>
                            <li>
                                평가 초기화: 평점 내역을 초기화합니다. 초기화
                            </li>
                        </ul>
                    </section> -->
                    <div id="setting-footer">
                        <a href="#">계정 탈퇴</a>
                        <button>저장</button>
                    </div>
                </div>
            </div>
        </div>
    </main>
<%@ include file="include/footer.jsp" %>