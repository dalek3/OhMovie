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
fetch("/api/" + uIdx + "/review/" + mIdx )
.then(response => response.json())
.then(data => {
    let uName = data.uName
    let rContent = data.rContent;
    template = _.createNode('div')
    _.addClass(template, 'review-info')
    template.innerHTML = 
    `<div class="reviews-detail-info">
        <figure>
            <img src="https://secure.gravatar.com/avatar/e6d54aacfb88e045648ceb2fef4e6ffc?rating=PG&size=220&border=&default=https%3A%2F%2Fletterboxd.com%2Fstatic%2Fimg%2Favatar220.c0a51ba6.png"
                alt="${uName} 프로필">
            <figcaption>
                <p class="attribution">
                    <a href="/profile/${uIdx}" class="context">${uName}</a>
                </p>
            </figcaption>
        </figure>
    </div>
    <div class="reviews-detail-content">
        <span class="rating rated-9">★★★★½</span>
        <div class="body-text collapsible-text">
            <div class="collapsed-text">
                <p>${rContent}</p>
            </div>
        </div>
    </div>`
    _.append(review_content, template);
});
