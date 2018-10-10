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
    <title>Document</title>
    <link href="../resources/dist/css/style.css" rel="stylesheet">
</head>

<body>
    <div class="auth">
        <div class="inner">
            <a class="title-bar" href="/">OhMovie</a>
            <section class="contents">
                <h2>로그인</h2>
                <form action="/" method="POST" autocomplete="off">
                    <p class="input">
                        <input type="email" name="u_id" placeholder="이메일" required>
                    </p>
                    <p class="input">
                        <input type="password" name="u_pw" placeholder="비밀번호(8자이상)" required>
                    </p>
                    <p class="input">
                        <input type="submit" value="로그인">
                    </p>
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