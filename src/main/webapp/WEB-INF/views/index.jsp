<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
    <main class="container">
        <section class="carousel">
            <div class="carousel1">
                <div class="carouselHeader">
                    <h3>현재 상영중</h3>
                    <div class='page'>
                        <button type='button' class='btn btn-default pageLeft' disabled>&lt</button>
                        <button type='button' class='btn btn-default pageRight'>&gt</button>
                    </div>
                </div>
                <div class="stage"></div>
            </div>
            <div class="carousel2">
                <div class="carouselHeader">
                    <h3>이번주 Top20</h3>
                    <div class='page'>
                        <button type='button' class='btn btn-default pageLeft' disabled>&lt</button>
                        <button type='button' class='btn btn-default pageRight'>&gt</button>
                    </div>
                </div>
                <div class="stage"></div>
            </div>
            <div class="carousel3">
                <div class="carouselHeader">
                    <h3>평가가 많은 영화</h3>
                    <div class='page'>
                        <button type='button' class='btn btn-default pageLeft' disabled>&lt</button>
                        <button type='button' class='btn btn-default pageRight'>&gt</button>
                    </div>
                </div>
                <div class="stage"></div>
            </div>
            <div class="carousel4">
                <div class="carouselHeader">
                    <h3>고평가 영화</h3>
                    <div class='page'>
                        <button type='button' class='btn btn-default pageLeft' disabled>&lt</button>
                        <button type='button' class='btn btn-default pageRight'>&gt</button>
                    </div>
                </div>
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

    const pageControl = [
        {
            "index" : 0,
            "pageLeft" : _.el('.pageLeft', '.carousel1'),
            "pageRight" : _.el('.pageRight', '.carousel1')
        },
        {
            "index": 0,
            "pageLeft" : _.el('.pageLeft', '.carousel2'),
            "pageRight" : _.el('.pageRight', '.carousel2')
        },
        {
            "index": 0,
            "pageLeft" : _.el('.pageLeft', '.carousel3'),
            "pageRight" : _.el('.pageRight', '.carousel3')
        },
        {
            "index": 0,
            "pageLeft" : _.el('.pageLeft', '.carousel4'),
            "pageRight" : _.el('.pageRight', '.carousel4')
        }
    ]

    let items = []
    let _getApi = (url, section) => {
        fetch(url)
        .then(response => response.json())
        .then(data => {
            items.push(data.results)
        });
    }
    const limit = 5
    let _render = (items, section, index) => {
        for(let i = index; i < (5 + index); i++){
            let movie = items[i];
            let id = movie.id;
            let title = movie.title;
            let poster = ''.concat('https://image.tmdb.org/t/p/w185', movie.poster_path);
            let template = _.createNode('div');
            _.addClass(template, 'item')
            _.addClass(template, 'Poster')
            template.innerHTML = 
            "<a href='/item/" + id + "'>\
                <img src='" + poster + "' alt='포스터'>\
            </a>"
            _.append(section, template);
        }
    }

    let urls = [
        // 현재 상영중
        `https://api.themoviedb.org/3/movie/now_playing?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-KR&page=1&region=KR`,
         // 이번주 TOP 10
        `https://api.themoviedb.org/3/trending/movie/day?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-kr`,
        // 평가가 많은
        `https://api.themoviedb.org/3/discover/movie?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-kr&sort_by=vote_count.desc&include_adult=false&include_video=false&page=1`,
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

    setTimeout(() => {
        for (const i in items) {
            if (items.hasOwnProperty(i)) {
                _render(items[i], carousels[i], 0)
            }
        }
    }, 300);

    // 1번
    pageControl[0].pageRight.addEventListener('click', () => {
        pageControl[0].index += limit
        console.log(pageControl[0].index);
        if (items[0].length > pageControl[0].index) {
            carousels[0].innerHTML = ''
            _render(items[0], carousels[0], pageControl[0].index)
            pageControl[0].pageLeft.disabled = false
        }
        if (items[0].length == (pageControl[0].index + limit)) {
            pageControl[0].pageRight.disabled = true
        }
    });
    pageControl[0].pageLeft.addEventListener('click', () => {
        pageControl[0].index -= limit
        console.log(pageControl[0].index);
        if (pageControl[0].index >= 0) {
            carousels[0].innerHTML = ''
            _render(items[0], carousels[0], pageControl[0].index)
            pageControl[0].pageRight.disabled = false
        }
        if (pageControl[0].index == 0) {
            pageControl[0].pageLeft.disabled = true
        }
    });

    // 2번
    pageControl[1].pageRight.addEventListener('click', () => {
        pageControl[1].index += limit
        console.log(pageControl[1].index);
        if (items[1].length > pageControl[1].index) {
            carousels[1].innerHTML = ''
            _render(items[1], carousels[1], pageControl[1].index)
            pageControl[1].pageLeft.disabled = false
        }
        if (items[1].length == (pageControl[1].index + limit)) {
            pageControl[1].pageRight.disabled = true
        }
    });
    pageControl[1].pageLeft.addEventListener('click', () => {
        pageControl[1].index -= limit
        console.log(pageControl[1].index);
        if (pageControl[1].index >= 1) {
            carousels[1].innerHTML = ''
            _render(items[1], carousels[1], pageControl[1].index)
            pageControl[1].pageRight.disabled = false
        }
        if (pageControl[1].index == 0) {
            pageControl[1].pageLeft.disabled = true
        }
    });
    
    pageControl[2].pageRight.addEventListener('click', () => {
        pageControl[2].index += limit
        console.log(pageControl[2].index);
        if (items[2].length > pageControl[2].index) {
            carousels[2].innerHTML = ''
            _render(items[2], carousels[2], pageControl[2].index)
            pageControl[2].pageLeft.disabled = false
        }
        if (items[2].length == (pageControl[2].index + limit)) {
            pageControl[2].pageRight.disabled = true
        }
    });

    pageControl[2].pageLeft.addEventListener('click', () => {
        pageControl[2].index -= limit
        console.log(pageControl[2].index);
        if (pageControl[2].index >= 2) {
            carousels[2].innerHTML = ''
            _render(items[2], carousels[2], pageControl[2].index)
            pageControl[2].pageRight.disabled = false
        }
        if (pageControl[2].index == 0) {
            pageControl[2].pageLeft.disabled = true
        }
    });

    pageControl[3].pageRight.addEventListener('click', () => {
        pageControl[3].index += limit
        console.log(pageControl[3].index);
        if (items[3].length > pageControl[3].index) {
            carousels[3].innerHTML = ''
            _render(items[3], carousels[3], pageControl[3].index)
            pageControl[3].pageLeft.disabled = false
        }
        if (items[3].length == (pageControl[3].index + limit)) {
            pageControl[3].pageRight.disabled = true
        }
    });
    pageControl[3].pageLeft.addEventListener('click', () => {
        pageControl[3].index -= limit
        console.log(pageControl[3].index);
        if (pageControl[3].index >= 3) {
            carousels[3].innerHTML = ''
            _render(items[3], carousels[3], pageControl[3].index)
            pageControl[3].pageRight.disabled = false
        }
        if (pageControl[3].index == 0) {
            pageControl[3].pageLeft.disabled = true
        }
    });
    
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