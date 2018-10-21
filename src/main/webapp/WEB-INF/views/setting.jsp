<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
	<main class="container">
        <div class="setting-wrap">
            <div class="setting">
                <div class="setting-header">
                    <h2>설정</h2>
                </div>
                <div class="setting-contents">
                	
                    <form action="/profile/<sec:authentication property='principal.member.uIdx'/>/modify" method="post">
                        <section class="setting-content">
                            <h3>계정</h3>
                            <ul>
                                <li>
                                    <label for="uName" class="name">닉네임</label>
                                    <input type="text" name="uName" value="${member.uName}">
                                </li>
                                <li>
                                    <div class="name">이메일</div>
                                    ${member.uId}
                                </li>
                                <li>
                                    <div class="name">비밀번호</div>
                                    <!-- Trigger the modal with a button -->
                                    <button type="button" class="btn btn-custom" data-toggle="modal" data-target="#myModal">비밀번호 변경</button>
                                </li>
                                <li>
                                    <div class="name">홈페이지</div>
                                    <!-- <input type="url" name="u_homepage" value="http://www.youtube.com">  -->
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
                        <div class="setting-footer">
                        	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            <a href="/profile/<sec:authentication property='principal.member.uIdx'/>/signout">계정 탈퇴</a>
                            <button type="submit" class="btn btn-custom">저장</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- Modal -->
        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">비밀번호 수정</h4>
                    </div>
                    <div class="modal-body">
                        <form action="/profile/<sec:authentication property='principal.member.uIdx'/>/changepw" method="POST">
                            <p>
                                <input type="password" name="uPw" id="myInput">
                            </p>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                            <button type="submit" class="btn btn-custom">저장</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </main>
<%@ include file="include/footer.jsp" %>
<%@ include file="include/common.jsp" %>
<script>
    $('#myModal').on('shown.bs.modal', function () {
        $('#myInput').focus()
    })
</script>
</body>

</html>