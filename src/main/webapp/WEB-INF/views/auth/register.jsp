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
                <h2>회원가입</h2>
                <form method="POST" onsubmit="return valid()" autocomplete="off">
                    <p class="input name">
                        <label for="name"></label>
                        <input id="name" type="text" name="u_name" placeholder="이름(닉네임)">
                    </p>
                    <p class="input email">
                        <input id="email" type="text" name="u_id" placeholder="이메일">
                    </p>
                    <p class="input pw">
                        <input id="pw" type="password" name="u_pw" placeholder="비밀번호(8자이상)">
                    </p>
                    <p class="input">
                        <input id='submit' type="submit" value="가입하기">
                    </p>
                </form>
                <p class="label">이미 가입하셨나요? <a href="/auth/login">로그인</a></p>
            </section>
        </div>
    </div>

    <script>
        function createNode(element) {
            return document.createElement(element);
        }

        function append(parent, el) {
            return parent.appendChild(el);
        }

        function remove(parent, el) {
            return parent.removeChild(el);
        }

        let contents = document.querySelector('.contents')
        let name = document.querySelector('#name')
        let email = document.querySelector('#email')
        let pw = document.querySelector('#pw')
        let submit = document.querySelector('#submit')
        let div = ''

        function valid() {
            if (!name.value) {
                if (div) {
                    remove(name, div)
                }
                div = createNode('div')
                div.innerHTML = `이름을 입력해주세요.`
                append(name, div);
            } else {
                if (div) {
                    remove(name, div)
                }
            }

            if (!email.value) {
                alert('이메일를 입력하세요.')
            }

            // if(pw.value === '') {
            // alert('비밀번호를 입력하세요.')
            // }
        }
    </script>
</body>

</html>