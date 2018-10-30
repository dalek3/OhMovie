<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
    <main>
        <section class="carousel">
            <div class="carousel1">
                <h3>현재 상영중</h3>
                <div class="stage"></div>
            </div>
            <div class="carousel2">
                <h3>이번주 Top5</h3>
                <div class="stage"></div>
            </div>
            <div class="carousel3">
                <h3>평가가 많은 영화</h3>
                <div class="stage"></div>
            </div>
            <div class="carousel4">
                <h3>고평가 영화</h3>
                <div class="stage"></div>
            </div>
            <div class="carousel5">
                <h3>상영예정 영화</h3>
                <div class="stage"></div>
            </div>
        </section>
    </main>
    <%@ include file="include/footer.jsp" %>
<%@ include file="include/common.jsp" %>
<script>
    const carousels = [
        _.el('.stage', '.carousel1'),
        _.el('.stage', '.carousel2'),
        _.el('.stage', '.carousel3'),
        _.el('.stage', '.carousel4'),
        _.el('.stage', '.carousel5'),
    ]

    let _getApi = (url, section) => {
        fetch(url)
        .then(response => response.json())
        .then(data => {
            items = data.results
            for(let i = 0;i < 5;i++){
                let movie = items[i];
                let id = movie.id;
                let title = movie.title;
                let poster = movie.poster_path ? ''.concat('https://image.tmdb.org/t/p/w185', movie.poster_path) : blank_poster;
                let template = _.createNode('div');
                _.addClass(template, 'item')
                _.addClass(template, 'Poster')
                template.innerHTML = 
                "<a href='/item/" + id + "'>\
                    <img src='" + poster + "' alt='포스터'>\
                </a>"
                _.append(section, template);
            }            
        });
    }

    let urls = [
        // 이번주 TOP 10
        `https://api.themoviedb.org/3/trending/movie/day?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-kr`,
        // 평가가 많은
        `https://api.themoviedb.org/3/discover/movie?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-kr&sort_by=vote_count.desc&include_adult=false&include_video=false&page=1`,
        // 현재 상영중
        `https://api.themoviedb.org/3/movie/now_playing?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-KR&page=1&region=KR`,
        // 고평가 영화
        `https://api.themoviedb.org/3/movie/top_rated?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-KR&page=1&region=KR`,
        // 상영 예정 영화
        `https://api.themoviedb.org/3/movie/upcoming?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-KR&page=1&region=KR`
    ]

    for (const i in urls) {
        if (urls.hasOwnProperty(i)) {
            const url = urls[i];
            _getApi(url, carousels[i]) 
        }
    }

    let input = _.el('.search');
    // let regx = /^http:\/\/localhost:8080\/search\?q\=[0-9a-zA-Z%]*$/;
    
    // if(regx.test(document.referrer)) {
        // input.focus();    
    // }

    function onKeyDetection(e) {
        setTimeout(() => {
            let result = input.value;
            window.location.href = '/search?q='+result;
        }, 1100);
    }
    input.addEventListener('keyup', onKeyDetection);
    
</script>
</body>

</html>