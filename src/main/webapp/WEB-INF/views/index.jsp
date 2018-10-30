<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
    <main>
        <section>
            <figure class="loading-spinners">
                <img src="https://loading.io/spinners/lava-lamp/index.lava-lamp-preloader.svg">
                <figcaption>데이터 로딩 중 ...</figcaption>
            </figure>
            <div class="owl-carousel2">
                <h3>인기영화 Top10</h3>
                <div class="owl-stage-outer">
                    <div class="owl-stage" style="display:flex"></div>
                </div>
            </div>
            <div class="owl-carousel3">
                <h3>평가가 많은 영화</h3>
                <div class="owl-stage-outer">
                    <div class="owl-stage" style="display:flex"></div>
                </div>
            </div>
        </section>
    </main>
    <%@ include file="include/footer.jsp" %>
    <%@ include file="include/common.jsp" %>
    <script>
        const spinner = _.el('.loading-spinners');
        const owlCarousel2 = _.el('.owl-stage', '.owl-carousel2');
        const owlCarousel3 = _.el('.owl-stage', '.owl-carousel3');
        
        fetch("https://api.themoviedb.org/3/trending/movie/day?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-kr")
        .then(response => response.json())
        .then(data => {
            items = data.results
            for(let i = 0;i < 5;i++){
                let movie = items[i];
                let id = movie.id;
                let title = movie.title;
                let poster = movie.poster_path ? ''.concat('https://image.tmdb.org/t/p/w185', movie.poster_path) : blank_poster;
                let template = _.createNode('div');
                _.addClass(template, 'owl-item')
                _.addClass(template, 'Poster')
                    template.innerHTML = "<img src='" + poster + "' alt='포스터'>"
                _.append(owlCarousel2, template);
            }            
        });
        fetch("https://api.themoviedb.org/3/discover/movie?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-kr&sort_by=vote_count.desc&include_adult=false&include_video=false&page=1")
        .then(response => response.json())
        .then(data => {
            items = data.results
            for(let i = 0;i < 5;i++){
                let movie = items[i];
                let id = movie.id;
                let title = movie.title;
                let poster = movie.poster_path ? ''.concat('https://image.tmdb.org/t/p/w185', movie.poster_path) : blank_poster;
                let template = _.createNode('div');
                _.addClass(template, 'owl-item')
                _.addClass(template, 'Poster')
                template.innerHTML = "<img src='" + poster + "' alt='포스터'>"
                _.append(owlCarousel3, template);
                _.css(spinner, 'display', 'none');
            }   
        });
        

        let input = document.querySelector('.search');
	    let regx = /^http:\/\/localhost:8080\/search\?q\=[0-9a-zA-Z%]*$/;
        
	    if(regx.test(document.referrer)) {
            input.focus();    
	    }

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