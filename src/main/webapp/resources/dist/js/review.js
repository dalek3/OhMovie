const review_content = _.el('.reviews');

// 영화 번호는 item에서 받는다.
let item;


fetch("/api/" + user + "/reviews")
    .then(response => response.json())
    .then(data => {
        console.log(data);
        return data.map(item => {
            console.log(movie);
            let template = _.createNode('div')
            _.addClass(template, 'review-info')
            template.innerHTML =
                `    <li class="reviews-detail">
                        <div class="reviews-detail-content">
                            <span class="rating rated-9">★★★★½</span>
                                <div class="body-text collapsible-text">
                                    <div class="collapsed-text">
                                        <p>
                                            
                                            <a href="#" class="reveal js-reveal">
                                                더보기
                                            </a>
                                        </p>
                                    </div>
                                    <div class="date">
                                        2018/10/07
                                    </div>
                                </div>
                            </div>
                            <div class="reviews-detail-info">
                                <a href="#">
                                    <figure>
                                        <img src="https://secure.gravatar.com/avatar/1a0a467fedafd8cd28e78ec2ce36116b?rating=PG&amp;size=80&amp;border=&amp;default=https%3A%2F%2Fletterboxd.com%2Fstatic%2Fimg%2Favatar80.e477ca3c.png"
                                            alt="Mycho">
                                        <figcaption>
                                            <p class="attribution">
                                                <a href="/profile/100">평론가 이름</a>
                                                등급
                                            </p>
                                        </figcaption>
                                    </figure>
                                </a>
                            </div>
                        </li>`
                    _.append(review_content, template);
        });
    });