const contentReviews = _.el('.ContentReviews');
const review_content = _.el('.reviews');

fetch("/api/" + movieId + "/contentReviews")
.then(response => response.json())
.then(data => {
    let header = 
        `<div class="section-panel-header">
            <h3>유저 리뷰</h3>
            <a href="${movieId}/reviews/">모두 보기 &gt;</a>
        </div>` 
    _.prependChild(contentReviews, header);
    return data.map(item => {
        let uIdx = item.uIdx;
        let uName = item.uName;
        let content = item.rContent;
        let template = _.createNode('li')
        _.addClass(template, 'reviews-detail')
        template.innerHTML =
            `<div class="reviews-detail-content">
                <span class="rating rated-9">★★★★½</span>
                <div class="body-text collapsible-text">
                    <div class="collapsed-text">
                        <p>
                            ${content}
                            <a href="#" class="reveal js-reveal">더보기</a>
                        </p>
                    </div>
                    <div class="date">2018/10/07</div>
                </div>
            </div>
            <div class="reviews-detail-info">
                <figure>
                    <img src="https://secure.gravatar.com/avatar/e6d54aacfb88e045648ceb2fef4e6ffc?rating=PG&size=220&border=&default=https%3A%2F%2Fletterboxd.com%2Fstatic%2Fimg%2Favatar220.c0a51ba6.png"
                        alt="${uName} 프로필">
                    <figcaption>
                        <p class="attribution">
                            <a href="/profile/${uIdx}/review/${movieId}">${uName}</a>
                        </p>
                    </figcaption>
                </figure>
            </div>`
        _.append(review_content, template);
    });
});