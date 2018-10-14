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
                <form method="POST" autocomplete="off">
                    <p class="input">
                        <input id="name" type="text" name="u_name" placeholder="이름(닉네임)">
                    </p>
                    <p class="input">
                        <input id="email" type="text" name="u_id" placeholder="이메일">
                    </p>
                    <p class="input">
                        <input id="pw" type="password" name="u_pw" placeholder="비밀번호(8자이상)">
                    </p>
                    <p class="input">
                        <button id="btnSave">가입하기</button>
                    </p>
                </form>
                <p class="label">이미 가입하셨나요? <a href="/auth/login">로그인</a></p>
            </section>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script>
        // function createNode(element) {
        //     return document.createElement(element);
        // }

        // function append(parent, el) {
        //     return parent.appendChild(el);
        // }

        // function remove(parent, el) {
        //     return parent.removeChild(el);
        // }

        // let contents = document.querySelector('.contents')
        // let name = document.querySelector('#name')
        // let email = document.querySelector('#email')
        // let pw = document.querySelector('#pw')
        // let submit = document.querySelector('#submit')
        // let div = ''

        // function valid() {
        //     if (!name.value) {
        //         if (div) {
        //             remove(name, div)
        //         }
        //         div = createNode('div')
        //         div.innerHTML = `이름을 입력해주세요.`
        //         append(name, div);
        //     } else {
        //         if (div) {
        //             remove(name, div)
        //         }
        //     }

        //     if (!email.value) {
        //         alert('이메일를 입력하세요.')
        //     }

        //     // if(pw.value === '') {
        //     // alert('비밀번호를 입력하세요.')
        //     // }
        // }
        
        function el(selector, context) {
            if (typeof selector !== 'string' || selector.trim().length === 0) { return null; }
            context = !context ? document : context.nodeType === 1 ? context : el(String(context));
            return context.querySelector(selector);
        }

        el('#name').addEventListener("mouseout",() => {
            let name = el('#name').value
            let isValid = true;
            let regx = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
            
            if(!regx.test(name)) {
                if(name !== "") {
                    markingErrorMessage('#name', "정확하지 않은 이메일 입니다.");
                    console.log(name);
                }
                isValid = false;
            } else {
                $('#name').siblings('.error-message').remove();
            }
        })

        var markingErrorMessage = function (targetElement, message) {
            var $targetElement = $(targetElement);
            $targetElement.siblings('.error-message').remove();
            $targetElement.after('<span class="error-message" style="color: red;">'+message+'</span>')
        };

    </script>
</body>

</html>