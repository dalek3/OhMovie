((global) => {
    const ContentJumbotron = document.querySelector('.ContentJumbotron')
    const ContentOverview = document.querySelector('.ContentOverview')
    const ContentPeoples = document.querySelector('.ContentPeoples')

    function genres(data) {
        let genre = ''
        for (const i in data.genres) {
            if (data.genres.hasOwnProperty(i)) {
                const element = data.genres[i];
                genre += `${element.name} `
            }
        }
        return genre;
    }

    function validateResponse(response) {
        if (!response.ok) {
            throw Error(response.statusText);
            
        }
        console.log("valid");
        return response;
    }

    fetch("https://api.themoviedb.org/3/movie/" + movieId + "?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-kr")
    .then(validateResponse)
    .then(response => response.json())
    .then(data => {
        let content  = data.overview ? data.overview : '영화 설명이 없습니다.';
        ContentJumbotron.innerHTML = 
            `<div class="ContentJumbotron__Poster">
                <img src="https://image.tmdb.org/t/p/w300${data.poster_path}" alt="${data.title} 포스터">
                <!-- 봤어요수 리스트수 좋아요수 -->
            </div>
            <div class="ContentJumbotron-PaneInner">
                <!-- title -->
                <h1 class="ContentJumbotron_title">${data.title}</h1>
                <!-- release_date・genres・production_countries -->
                <div class="ContentJumbotron_detail">
                    ${data.release_date.substr(0, 4)}・${data.genres[0].name}・${data.production_countries[0].iso_3166_1}
                </div>
                <div class="ContentJumbotron_ContentRatings">
                    <div class="critic-reviews reviews-score">
                        <div class="score">90%</div>
                        <div class="reviews-wrap">
                            <h3 class="reviews-header">기자・평론가 평점</h3>
                            <div class="score-stats">
                                <div class="score-item">
                                    <span>평균 평점</span>
                                    <em>7.6/10</em>
                                </div>
                                <div class="score-item">
                                    <span>긍정 리뷰</span>
                                    <em>265</em>
                                </div>
                                <div class="score-item">
                                    <span>참여 인원</span>
                                    <em>285</em>
                                </div>
                                <div class="score-item">
                                    <span>부정 리뷰</span>
                                    <em>21</em>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="user-reviews reviews-score">
                        <div class="score">${data.vote_average*10}%</div>
                        <div class="reviews-wrap">
                            <h3 class="reviews-header">유저 평점</h3>
                            <div class="score-stats">
                                <div class="score-item">
                                    <span>평균 평점</span>
                                    <em>${data.vote_average}/10</em>
                                </div>
                                <div class="score-item">
                                    <span>예상 평점</span>
                                    <em>7.6/10</em>
                                </div>
                                <div class="score-item">
                                    <span>참여 인원</span>
                                    <em>${data.vote_count}</em>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="ContentJumbotron-user-panel ">
                <ul>
                    <li class="user-panel">
                        <a href="#">
                            <p>
                                <i class="fa fa-eye"></i>
                                <span class="fw700">봤어요</span>
                            </p>
                        </a>
                        <a href="#">
                            <p>
                                <i class="fa fa-heart"></i>
                                <span class="fw700">좋아요</span>
                            </p>
                        </a>
                        <a href="#">
                            <p>
                                <i class="fa fa-bookmark"></i>
                                <span class="fw700">보고싶어요</span>
                            </p>
                        </a>
                    </li>
                    <li class="rating">
                        <span class="fw700">평가</span>
                        <x-star-rating value="3" number="5"></x-star-rating>
                    </li>
                    <li>
                        <!-- Trigger the modal with a button -->
                        <span class="fw700" data-toggle="modal" data-target="#myModal">리뷰 &amp; 다이어리</span>
                    </li>
                    <li>
                        <a href="#"><span class="fw700">공유</span></a>
                    </li>
                </ul>
            </div>`

        ContentOverview.innerHTML =
        `<div class="section-panel-header">
            <h3>기본정보</h3>
        </div>
        <div class="overview-wrap">
            <div class="overview-left">
                <dl>
                    <dt>줄거리</dt>
                    <dd>${content}</dd>
                </dl>
            </div>
            <div class="overview-right">
                <dl>
                    <div class="overview-item">
                        <dt>원제</dt>
                        <dd>${data.original_title}</dd>
                    </div>
                    <div class="overview-item">
                        <dt>출시일</dt>
                        <dd>${data.release_date}</dd>
                    </div>
                    <div class="overview-item">
                        <dt>국가</dt>
                        <dd>${data.production_countries[0].iso_3166_1}</dd>
                    </div>
                    <div class="overview-item">
                        <dt>장르</dt>
                        <dd>${genres(data)}</dd>
                    </div>
                    <div class="overview-item">
                        <dt>등급</dt>
                        <dd>R</dd>
                    </div>
                    <div class="overview-item">
                        <dt>런타임</dt>
                        <dd>${parseInt(data.runtime / 100)} 시간 ${data.runtime % 100} 분</dd>
                    </div>
                </dl>
            </div>
        </div>`
    })
    .catch(err => console.log(err))

    fetch("https://api.themoviedb.org/3/movie/" + movieId + "/credits?api_key=bfdc49ba22b11be34746dd5c861c3d27")
    .then(response => response.json())
    .then(data => {
        let listItem = ''
        for (let index = 0; index < 6; index++) {
            let profile_path = data.cast[index].profile_path;
            let name = data.cast[index].name;
            let character = data.cast[index].character;

            listItem += 
                `<li class="listItem">
                    <figure>
                        <div class="profilePhoto">
                        <div class="ProfilePhoto__ProfilePhotoImage"></div>
                        <div class="ProfilePhoto__DefaultImageContainer">
                            <img src="https://image.tmdb.org/t/p/w66_and_h66_face${profile_path}" alt="cast">
                        </div>
                        </div>
                        <figcaption class="profilePhoto__Info">
                            <div class="profilePhoto__Title">${name}</div>
                            <div class="profilePhoto__Subtitle">${character}</div>
                        </figcaption>
                    </figure>
                </li>`
        }
        ContentPeoples.innerHTML +=
            `<div class="section-panel-header">
                <h3>출연/제작</h3>
            </div>
            <ul class="ContentPeople">
                ${listItem}
            </ul>`
    })
    .catch(err => console.log(err))

})(window);
