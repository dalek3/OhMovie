<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
    <main>
        <section>
            <div class="owl-carousel owl-theme owl-loaded owl-carousel1">
                <div class="owl-stage-outer owl-height">
                    <div class="owl-stage"></div>
                </div>
                <div class="owl-nav" style="display:flex;">
                    <div class="owl-prev1" style="position: absolute; top:50%; left:0;">prev</div>
                    <div class="owl-next1" style="position: absolute; top:50%; right: 0;">next</div>
                </div>
            </div>
            <div class="owl-carousel owl-theme owl-loaded owl-carousel2">
                <h3>인기영화 Top10</h3>
                <div class="owl-stage-outer">
                    <div class="owl-stage"></div>
                </div>
                <div class="owl-nav" style="display:flex;">
                    <div class="owl-prev2" style="position: absolute; top:50%; left:0;">prev</div>
                    <div class="owl-next2" style="position: absolute; top:50%; right: 0;">next</div>
                </div>
            </div>
            <div class="owl-carousel owl-theme owl-loaded owl-carousel3">
                <h3>평가가 많은 영화</h3>
                <div class="owl-stage-outer">
                    <div class="owl-stage"></div>
                </div>
                <div class="owl-nav" style="display:flex;">
                    <div class="owl-prev3" style="position: absolute; top:50%; left:0;">prev</div>
                    <div class="owl-next3" style="position: absolute; top:50%; right: 0;">next</div>
                </div>
            </div>
        </section>
    </main>
    <%@ include file="include/footer.jsp" %>
    <%@ include file="include/common.jsp" %>
    <script>
        const owlCarousel = _.el('.owl-stage', '.owl-carousel');
        const owlCarousel2 = _.el('.owl-stage', '.owl-carousel2');
        const owlCarousel3 = _.el('.owl-stage', '.owl-carousel3');
        
        fetch("https://api.themoviedb.org/3/trending/movie/week?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-kr")
        .then(response => response.json())
        .then(data => {
            items = data.results
            for(let i = 0;i < 3;i++){
                let movie = items[i];
                let id = movie.id;
                let title = movie.title;
                let backdrop = movie.backdrop_path ? ''.concat('https://image.tmdb.org/t/p/w780', movie.backdrop_path) : blank_poster;
                let template = _.createNode('div');
                _.addClass(template, 'owl-item')
                template.innerHTML = "<img class='content-jumbotron__image' src='" + backdrop + "' style='width:1280px;height:720px'>"
                _.append(owlCarousel, template);
            }
        });

        fetch("https://api.themoviedb.org/3/trending/movie/day?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-kr")
        .then(response => response.json())
        .then(data => {
            items = data.results
            for(let i = 0;i < 10;i++){
                let movie = items[i];
                let id = movie.id;
                let title = movie.title;
                let poster = movie.poster_path ? ''.concat('https://image.tmdb.org/t/p/w185', movie.poster_path) : blank_poster;
                let template = _.createNode('div');
                _.addClass(template, 'owl-item')
                    template.innerHTML = title + "<img src='" + poster + "' alt='포스터' style='width:220px'>"
                _.append(owlCarousel2, template);
            }            
        });
        fetch("https://api.themoviedb.org/3/discover/movie?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-kr&sort_by=vote_count.desc&include_adult=false&include_video=false&page=1")
        .then(response => response.json())
        .then(data => {
            items = data.results
            for(let i = 0;i < 10;i++){
                let movie = items[i];
                let id = movie.id;
                let title = movie.title;
                let poster = movie.poster_path ? ''.concat('https://image.tmdb.org/t/p/w185', movie.poster_path) : blank_poster;
                let template = _.createNode('div');
                _.addClass(template, 'owl-item')
                template.innerHTML = title + "<img src='" + poster + "' alt='포스터' style='width:220px'>"
                _.append(owlCarousel3, template);
            }   
        });
    </script>
    <script src="<c:url value='/resources/dist/js/owl.carousel.js'/>"></script>
    <script>
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
	    
        $(document).ready(function () {
            var owl1 = $('.owl-carousel1');
            var owl2 = $('.owl-carousel2');
            var owl3 = $('.owl-carousel3');
            var owl4 = $('.owl-carousel4');

            owl1.owlCarousel({
                loop: true,
                center: true,
                autoWidth: true,
                autoHeight: true
            });

            $('.owl-next1').click(function () {
                owl1.trigger('next.owl.carousel');
            })
            $('.owl-prev1').click(function () {
                owl1.trigger('prev.owl.carousel', [300]);
            })
            owl2.owlCarousel({
                loop: true,
                center: true,
                autoWidth: true,
                dots: false
            });

            $('.owl-next2').click(function () {
                owl2.trigger('next.owl.carousel');
            })
            $('.owl-prev2').click(function () {
                owl2.trigger('prev.owl.carousel', [300]);
            })
            owl3.owlCarousel({
                loop: true,
                center: true,
                autoWidth: true,
                dots: false
            });

            $('.owl-next3').click(function () {
                owl3.trigger('next.owl.carousel');
            })
            $('.owl-prev3').click(function () {
                owl3.trigger('prev.owl.carousel', [300]);
            })
            owl4.owlCarousel({
                loop: true,
                center: true,
                autoWidth: true,
                dots: false
            });

            $('.owl-next4').click(function () {
                owl4.trigger('next.owl.carousel');
            })
            $('.owl-prev4').click(function () {
                owl4.trigger('prev.owl.carousel', [300]);
            })
        });
    </script>
</body>

</html>