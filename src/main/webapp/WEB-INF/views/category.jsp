<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
		<main class="container">
		    <section class="content">
		        <div class="row">
		            <div class="col-md-2">
		                <p>필터</p>
		                <p>연도</p>
		                <ul>
		                    <li>전체</li>
		                    <li>Upcoming</li>
		                    <li>상영중</li>
		                    <li>2010년대</li>
		                    <li>2000년대</li>
		                    <li>1990년대</li>
		                    <li>1980년대</li>
		                    <li>1970년대</li>
		                    <li>1960년대</li>
		                    <li>1950년대</li>
		                    <li>1940년대</li>
		                    <li>1930년대</li>
		                    <li>1920년대</li>
		                    <li>1910년대</li>
		                    <li>1900년대</li>
		                    <li>1890년대</li>
		                    <li>1890년대</li>
		                    <li>1880년대</li>
		                    <li>1870년대</li>
		                </ul>
		                <p>장르</p>
		                <ul>
		                    <li>전체</li>
		                    <li>SF</li>
		                    <li>TV영화</li>
		                    <li>가족</li>
		                    <li>공포</li>
		                    <li>다큐멘터리</li>
		                    <li>드라마</li>
		                    <li>로멘스</li>
		                    <li>모험</li>
		                    <li>미스터리</li>
		                    <li>서부</li>
		                    <li>스릴러</li>
		                    <li>애니메이션</li>
		                    <li>액션</li>
		                    <li>역사</li>
		                    <li>음악</li>
		                    <li>전쟁</li>
		                    <li>코미디</li>
		                    <li>판타지</li>
		                </ul>
		            </div>
		            <div class="col-md-10">
		                <div class="box">
		                    <div class="box-header with-border">
		                        <h3 class="box-title">카테고리</h3>
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
		<script src="resources/dist/js/category.js"></script>

<%@ include file="include/footer.jsp" %>