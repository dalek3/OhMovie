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

                <section class="ReviewMorePage-contents">
                    <ul class="ReviewMorePage-reviews">
                        <li class="ContentListWithRatingControl">
                            <div class="ContentListWithRatingControl-thumbnail">
                                <img src="https://image.tmdb.org/t/p/w300/mN226GIDSMhWBpqPJopGlLk3qXn.jpg" alt="더넌">
                            </div>
                            <div class="ContentListWithRatingControl-detail">
                                <!-- title -->
                                <h3 class="ContentListWithRatingControl-title">제목</h3>
                                <!-- release_date・genres・production_countries -->
                                <div class="ContentListWithRatingControl-information">
                                    연도・장르・나라
                                </div>
                                <div class="RatingControl">
                                    평가
                                    <div class="br-wrapper br-theme-fontawesome-stars">
                                        <select class="example">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="ContentListWithRatingControl">
                            <div class="ContentListWithRatingControl-thumbnail">
                                <img src="https://image.tmdb.org/t/p/w300/mN226GIDSMhWBpqPJopGlLk3qXn.jpg" alt="더넌">
                            </div>
                            <div class="ContentListWithRatingControl-detail">
                                <!-- title -->
                                <h3 class="ContentListWithRatingControl-title">제목</h3>
                                <!-- release_date・genres・production_countries -->
                                <div class="ContentListWithRatingControl-information">
                                    연도・장르・나라
                                </div>
                                <div class="RatingControl">
                                    평가
                                    <div class="br-wrapper br-theme-fontawesome-stars">
                                        <select class="example">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="ContentListWithRatingControl">
                            <div class="ContentListWithRatingControl-thumbnail">
                                <img src="https://image.tmdb.org/t/p/w300/mN226GIDSMhWBpqPJopGlLk3qXn.jpg" alt="더넌">
                            </div>
                            <div class="ContentListWithRatingControl-detail">
                                <!-- title -->
                                <h3 class="ContentListWithRatingControl-title">제목</h3>
                                <!-- release_date・genres・production_countries -->
                                <div class="ContentListWithRatingControl-information">
                                    연도・장르・나라
                                </div>
                                <div class="RatingControl">
                                    평가
                                    <div class="br-wrapper br-theme-fontawesome-stars">
                                        <select class="example">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="ContentListWithRatingControl">
                            <div class="ContentListWithRatingControl-thumbnail">
                                <img src="https://image.tmdb.org/t/p/w300/mN226GIDSMhWBpqPJopGlLk3qXn.jpg" alt="더넌">
                            </div>
                            <div class="ContentListWithRatingControl-detail">
                                <!-- title -->
                                <h3 class="ContentListWithRatingControl-title">제목</h3>
                                <!-- release_date・genres・production_countries -->
                                <div class="ContentListWithRatingControl-information">
                                    연도・장르・나라
                                </div>
                                <div class="RatingControl">
                                    평가
                                    <div class="br-wrapper br-theme-fontawesome-stars">
                                        <select class="example">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </section>
            </div>
        </main>
    </div>

    <!-- jQuery -->
    <script src="resources/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="resources/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="resources/dist/js/sb-admin-2.js"></script>
    <script src="resources/dist/js/jquery.barrating.min.js"></script>
    <script src="resources/dist/js/search.js"></script>
    <script src="resources/dist/js/speech.js"></script>
    <script>
        $(function () {
            $('.example').barrating({
                theme: 'fontawesone-stars'
            });
        });
    </script>
</body>

</html>