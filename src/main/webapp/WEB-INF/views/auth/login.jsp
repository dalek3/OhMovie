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
                <h2>로그인</h2>
                <form action="/login" method="POST" autocomplete="off">
                    <p class="input">
                        <input type="text" id="name" name="username" placeholder="이메일">
                    </p>
                    <p class="input">
                        <input type="password" name="password" placeholder="비밀번호">
                    </p>
                    <p style="color:red;"><c:out value="${error}"/></p>
                    <p class="input">
                        <button id="btnSave">로그인</button>
                    </p>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                </form>
                <p class="label">
                    <a href="#">비밀번호를 잊어버리셨나요?</a>
                </p>
                <p class="label">계정이 없으신가요? <a href="/auth/register">회원가입</a></p>
            </section>
        </div>
    </div>
</body>
</html>