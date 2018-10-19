const review_content = _.el('.review-content');
let blank_poster = 'https://ssl.pstatic.net/static/movie/2012/06/dft_img203x290.png';

fetch("/api/"+ user +"/reviews" )
.then(response => response.json())
.then(data => {
    console.log(data);
    return data.map(item => {
        fetch("https://api.themoviedb.org/3/movie/" + item.mIdx + "?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-kr")
            .then(response => response.json())
            .then(movie => {
                let title = movie.title;
                let poster = movie.poster_path ? ''.concat('https://image.tmdb.org/t/p/w300', movie.poster_path) : blank_poster;
                console.log(movie);
                let template = _.createNode('div')
                _.addClass(template, 'review-info')
                template.innerHTML = 
                `    <div class="reviews-detail-content" style="display:flex">
                        <div id="review__Poster">
                            <img src="${poster}" alt="${title} 포스터">
                                <!-- 봤어요수 리스트수 좋아요수 -->
                        </div>
                        <div class="review-content" style="padding-left: 40px;">
                            <h3>${title}</h3>
                            <span class="rating rated-9">★★★★½</span>
                            <div class="body-text collapsible-text">
                                <div class="date">2018/10/07</div>
                                <div class="collapsed-text">
                                    <p>
                                        ${item.rContent}
                                        <a href="#" class="reveal js-reveal">더보기</a>
                                    </p>
                                </div>
                            </div>
                            <ul class="review-like">
                                <li>좋아요</li>
                                <li>좋아요수</li>
                            </ul>
                        </div>
                    </div>`
                _.append(review_content, template);
            });
    });
});