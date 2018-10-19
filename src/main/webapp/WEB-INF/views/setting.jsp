<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
	<main>
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
                                <input type="text" name=u_name value="${uName}">
                            </li>
                            <li>
                                <div class="name">이메일</div>
                                ${uId}
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
                                <div class="switcher">
                                    <input id="switch-1" class="a11y-hidden" type="checkbox">
                                    <label for="switch-1">페이스북 연동</label>
                                </div>
                            </li>
                            <li>
                                <div class="switcher">
                                    <input id="switch-2" class="a11y-hidden" type="checkbox">
                                    <label for="switch-2">라인 연동</label>
                                </div>
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
<%@ include file="include/common.jsp" %>
</body>

</html>