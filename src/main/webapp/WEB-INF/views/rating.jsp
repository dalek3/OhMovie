<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
        <main>
            <div class="ReviewMorePage-wrapper">
                <div class="ReviewMorePage-header">
                    <h2 class="ReviewMorePage-countingHeader">100</h2>
                    <p>살면서 영화 본 시간, 50일 돌파! 무려 1200시간!</p>
                    <p>상태바</p>
                </div>
                <div class="FilterBar-wrapper">
                    <div class="FilterBar">
                        <button class="FilterBar-titleButton">
                            <span class="FilterBar-DropDown"></span>
                            <span class="FilterBar-title">
                                랜덤 영화
                            </span>
                        </button>
                    </div>
                </div>

                <figure class="loading-spinner">
                    <img src="https://loading.io/spinners/lava-lamp/index.lava-lamp-preloader.svg">
                    <figcaption>데이터 로딩 중 ...</figcaption>
                </figure>
                <section class="ReviewMorePage-contents">
                    <ul class="ReviewMorePage-reviews">
                       
                    </ul>
                </section>
            </div>
        </main>
    </div>

    <script src="/resources/dist/js/common.js"></script>
    <script src="resources/dist/js/rating.js"></script>
    <script src="resources/dist/js/StarRating.js"></script>

    <!-- jQuery -->
    <script src="resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="resources/dist/js/search.js"></script>
    <script src="resources/dist/js/speech.js"></script>

</body>

</html>