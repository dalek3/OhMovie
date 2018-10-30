const review_contents = _.el('.review-contents');
const review_content = _.el('.review-content');
let blank_poster = 'https://ssl.pstatic.net/static/movie/2012/06/dft_img203x290.png';

// getPoster
fetch("https://api.themoviedb.org/3/movie/" + mIdx + "?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-kr")
.then(response => response.json())
.then(movie => {
    let title = movie.title;
    let poster = movie.poster_path ? ''.concat('https://image.tmdb.org/t/p/w300', movie.poster_path) : blank_poster;
    let template = 
        `<div class="review__Poster">
            <img src="${poster}" alt="${title} 포스터">
            <!-- 봤어요수 리스트수 좋아요수 -->
        </div>`;
    _.prependChild(review_contents, template);
});

// getReview
fetch("/api/" + mIdx + "/contentReviews")
// fetch("/api/reviews/" + movieId )
.then(response => response.json())
.then(data => {
    return data.map(item => {
        let uIdx = item.uIdx;
        let uName = item.uName;
        let rContent = item.rContent;
        template = _.createNode('div')
        _.addClass(template, 'review-info')
        template.innerHTML = 
            `<div class="reviews-detail-info">
                <figure>
                    <img src="https://secure.gravatar.com/avatar/e6d54aacfb88e045648ceb2fef4e6ffc?rating=PG&size=220&border=&default=https%3A%2F%2Fletterboxd.com%2Fstatic%2Fimg%2Favatar220.c0a51ba6.png"
                    alt="${uName} 프로필">
                    <figcaption>
                        <p class="attribution">
                            <a href="/profile/${uIdx}/review/${mIdx}" class="context">${uName}</a>
                        </p>
                    </figcaption>
                </figure>
            </div>
            <div class="reviews-detail-content">
                <span class="rating"></span>
                <div class="body-text collapsible-text">
                    <div class="date">2018/10/07</div>
                    <div class="collapsed-text">
                        <p>${rContent}</p>
                    </div>
                </div>
                <ul class="review-like">
                    <li>좋아요</li>
                    <li>좋아요수</li>
                    <li>신고하기</li>
                </ul>
            </div>`
        _.append(review_content, template);
    });
});