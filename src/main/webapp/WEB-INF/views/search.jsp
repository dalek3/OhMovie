<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>

<main class="container">
    <section class="content">
        <div class="row">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">검색결과</h3>
                    <div class="row">
                        <p>''검색결과</p>
                        <p>검색결과가 없어요</p>
                        <ul class="list">
                        </ul>
                        <p>''님, 이 작품들은 어떠세요?</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</main>
<script src="resources/dist/js/search.js"></script>
<script src="resources/dist/js/speech.js"></script>
<%@ include file="include/footer.jsp" %>