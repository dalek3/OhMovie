<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko-KR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Oh!Movie</title>
    <link href="../resources/dist/css/style.css" rel="stylesheet">
</head>
<body>
    <div class="auth">
        <div class="inner">
            <a class="title-bar" href="/">OhMovie</a>
            <section class="contents">
                <h2>회원가입</h2>
                <form method="POST" autocomplete="off" onsubmit="return validate()"">
                    <p class="input">
                        <input id="name" type="text" name="uName" placeholder="이름(닉네임)">
                    </p>
                    <p class="input">
                        <input id="email" type="text" name="uId" placeholder="이메일">
                    </p>
                    <p class="input">
                        <input id="pw" type="password" name="uPw" placeholder="비밀번호(8자이상)">
                    </p>
                    <p style="color:red;"><c:out value="${error}"/></p>
                    <p class="input">
                        <button id="btnSave">가입하기</button>
                    </p>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                </form>
                <p class="label">이미 가입하셨나요? <a href="/auth/login">로그인</a></p>
            </section>
        </div>
    </div>
    <script src="<c:url value='/resources/dist/js/common.js'/>"></script>
    <script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>
    <script>

        let markingErrorMessage = (targetElement, message) => {
            let $targetElement = $(targetElement);
            $targetElement.siblings('.error-message').remove();
            $targetElement.after('<span class="error-message" style="color: red;">' + message + '</span>')
        };

        _.el('#email').addEventListener("blur",() => {
            let email = _.el('#email').value
            let isValid = true;
            let regx = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
            
            if(!regx.test(email)) {
                if(email !== "") {
                    markingErrorMessage('#email', "정확하지 않은 이메일 입니다.");
                } else {
                    markingErrorMessage('#email', "이메일을 작성해주세요.");
                }
                isValid = false;
            } else {
                $('#email').siblings('.error-message').remove();
            }
        });

        function validate() {
            let member = {
                name: _.el('#name').value,
                email: _.el('#email').value,
                pw: _.el('#pw').value
            };

            if(!member.name){
                markingErrorMessage('#name', '이름을 작성해주세요');
                return false;
            } else {
                $('#name').siblings('.error-message').remove();
            }

            if(!member.email){
                markingErrorMessage('#email', '이메일을 작성해주세요');
                return false;
            } else {
                $('#email').siblings('.error-message').remove();
                let regx = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
                if(!regx.test(member.email)) {
                    if(member.email !== "") {
                        markingErrorMessage('#email', "정확하지 않은 이메일 입니다.");
                        return false;
                    }
                }
            }

            if(!member.pw){
                markingErrorMessage('#pw', '비밀번호를 작성해주세요');
                return false;
            } else {
                $('#pw').siblings('.error-message').remove();
                let regpw = /^[`~!@@#$%^&*|₩₩₩'₩";:₩/?0-9a-z]{8,}$/gi;
                if(!regpw.test(member.pw)) {
                    markingErrorMessage('#pw', '비밀번호의 길이는 8 이상');
                    return false;
                }
            }
        };
    </script>
</body>

</html>