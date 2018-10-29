<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
        <main class="container">
            <section class="content">
                <div class="row">
                    <div class="col-md-14">
                        <div class="box">
                            <div class="box-header with-border">
                                <h3 class="box-title">카테고리</h3>
                                    연도
                                    <select name="year" id="">
                                        <option value="">전체</option>
                                        <option value="">Upcoming</option>
                                        <option value="">상영중</option>
                                        <option value="">2010년대</option>
                                        <option value="">2000년대</option>
                                        <option value="">1990년대</option>
                                        <option value="">1980년대</option>
                                        <option value="">1970년대</option>
                                        <option value="">1960년대</option>
                                        <option value="">1950년대</option>
                                        <option value="">1940년대</option>
                                        <option value="">1930년대</option>
                                        <option value="">1920년대</option>
                                        <option value="">1910년대</option>
                                        <option value="">1900년대</option>
                                        <option value="">1890년대</option>
                                        <option value="">1890년대</option>
                                        <option value="">1880년대</option>
                                        <option value="">1870년대</option>
                                    </select>
                                    장르
                                    <select name="genre" id="">
                                        <option value="">전체</option>
                                        <option value="">SF</option>
                                        <option value="">TV영화</option>
                                        <option value="">가족</option>
                                        <option value="">공포</option>
                                        <option value="">다큐멘터리</option>
                                        <option value="">드라마</option>
                                        <option value="">로멘스</option>
                                        <option value="">모험</option>
                                        <option value="">미스터리</option>
                                        <option value="">서부</option>
                                        <option value="">스릴러</option>
                                        <option value="">애니메이션</option>
                                        <option value="">액션</option>
                                        <option value="">역사</option>
                                        <option value="">음악</option>
                                        <option value="">전쟁</option>
                                        <option value="">코미디</option>
                                        <option value="">판타지</option>
                                    </select>
                                <div class="row">
                                    <p class="col-md-3 ">총 개의 작품이 검색되었어요</p>
                                    <div class="col-md-offset-8 col-md-1 dropdown">
                                        <button class=" btn btn-outline btn-default dropdown-toggle" data-toggle="dropdown"
                                            href="#">
                                            정렬
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a href="#">인기도 내림차순</a></li>
                                            <li><a href="#">인기도 오름차순</a></li>
                                            <li><a href="#">평점 내림차순</a></li>
                                            <li><a href="#">평점 오름차순</a></li>
                                            <li><a href="#">상영일 내림차순</a></li>
                                            <li><a href="#">상영일 오름차순</a></li>
                                            <li><a href="#">제목 내림차순</a></li>
                                            <li><a href="#">제목 오름차순</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <ul class="list">
                        </ul>
                    </div>
                </div>
            </section>
        </main>
<%@ include file="include/common.jsp" %>
<script src="resources/dist/js/category.js"></script>
<script>
	let input = document.querySelector('.search');
	
	function onKeyDetection(e) {
		setTimeout(() => {
			let result = input.value;
	        window.location.href = '/search?q='+result;
		}, 1500);
	}
	input.addEventListener('keyup', onKeyDetection);
</script>
</body>

</html>