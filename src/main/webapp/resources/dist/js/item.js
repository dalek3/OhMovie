const ContentJumbotron = document.querySelector('.ContentJumbotron')
const section_panel = document.querySelector('.section-panel')
const ContentPeople = document.querySelector('.ContentPeople')

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

if (item !== '') {
    fetch("https://api.themoviedb.org/3/movie/" + item + "?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-kr")
    .then(response => response.json())
    .then(data => {
        ContentJumbotron.innerHTML = 
            `    <div class="ContentJumbotron__Poster">
                    <img src="https://image.tmdb.org/t/p/w300${data.poster_path}" alt="${data.title} 포스터">
                    <a href="https://www.youtube.com/watch?v=pzD9zGcUNrw">
                        <p>트레일러 보기</p>
                    </a>
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
                            <!-- vote_average -->
                            <div class="score">${data.vote_average*10}%</div>
                            <div class="reviews-wrap">
                                <h3 class="reviews-header">유저 평점</h3>
                                <div class="score-stats">
                                    <!-- vote_average -->
                                    <div class="score-item">
                                        <span>평균 평점</span>
                                        <em>${data.vote_average}/10</em>
                                    </div>
                                    <div class="score-item">
                                        <span>예상 평점</span>
                                        <em>7.6/10</em>
                                    </div>
                                    <!-- vote_count -->
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
                            <a href="#"><span class="fw700">리뷰 &amp; 다이어리</span></a>
                        </li>
                        <li>
                            <a href="#"><span class="fw700">리스트</span></a>
                        </li>
                        <li>
                            <a href="#"><span class="fw700">공유</span></a>
                        </li>
                    </ul>
                </div>`

        section_panel.innerHTML =
        `    <div class="section-panel-header">
                <h3>기본정보</h3>
            </div>
            <div class="overview-wrap">
                <div class="overview-left">
                    <dl>
                        <!-- overview -->
                        <dt>줄거리</dt>
                        <dd>
                            ${data.overview}
                        </dd>
                    </dl>
                </div>
                <div class="overview-right">
                    <dl>
                        <!-- original_title -->
                        <div class="overview-item">
                            <dt>원제</dt>
                            <dd>${data.original_title}</dd>
                        </div>
                        <!-- release_date -->
                        <div class="overview-item">
                            <dt>출시일</dt>
                            <dd>${data.release_date}</dd>
                        </div>
                        <!-- production_countries -->
                        <div class="overview-item">
                            <dt>국가</dt>
                            <dd>${data.production_countries[0].iso_3166_1}</dd>
                        </div>
                        <!-- genres -->
                        <div class="overview-item">
                            <dt>장르</dt>
                            <dd>${genres(data)}</dd>
                        </div>
                        <div class="overview-item">
                            <dt>등급</dt>
                            <dd>R</dd>
                        </div>
                        <!-- runtime -->
                        <div class="overview-item">
                            <dt>런타임</dt>
                            <dd>${parseInt(data.runtime / 100)} 시간 ${data.runtime % 100} 분</dd>
                        </div>
                    </dl>
                </div>
            </div>`
    })
    .catch(err => console.log(err))

    fetch("https://api.themoviedb.org/3/movie/" + item + "/credits?api_key=bfdc49ba22b11be34746dd5c861c3d27")
    .then(response => response.json())
    .then(data => {
        for (let index = 0; index < 6; index++) {
            const element = data.cast[index];
            ContentPeople.innerHTML +=
                `   <li class="listItem">
                    <figure>
                        <div class="profilePhoto">
                        <div class="ProfilePhoto__ProfilePhotoImage"></div>
                        <div class="ProfilePhoto__DefaultImageContainer">
                            <img src="https://image.tmdb.org/t/p/w66_and_h66_face${element.profile_path}" alt="cast">
                        </div>
                        </div>
                        <figcaption class="profilePhoto__Info">
                            <div class="profilePhoto__Title">${element.name}</div>
                            <div class="profilePhoto__Subtitle">${element.character}</div>
                        </figcaption>
                    </figure>
                </li>`
        }

    })
    .catch(err => console.log(err))
}
