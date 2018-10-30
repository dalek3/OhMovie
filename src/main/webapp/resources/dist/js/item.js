((global) => {
    const ContentJumbotron = document.querySelector('.ContentJumbotron')
    const ContentOverview = document.querySelector('.ContentOverview')
    const ContentPeoples = document.querySelector('.ContentPeoples')
    const relatedItemList = document.querySelector('.related-item-list')

    const blank_poster = 'https://ssl.pstatic.net/static/movie/2012/06/dft_img203x290.png';
    const blank_cast = '/resources/dist/if_user_1287507.svg'
    
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

    fetch("https://api.themoviedb.org/3/movie/" + mIdx + "?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-kr")
    .then(validateResponse)
    .then(response => response.json())
    .then(data => {
        let content  = data.overview ? data.overview : '영화 설명이 없습니다.';
        let release_date = data.release_date ? data.release_date.substr(0,4) : '';
        let genre = data.genres[0] ? data.genres[0].name : '';
        let production_countries = data.production_countries[0] ? data.production_countries[0].iso_3166_1 :'';
        ContentJumbotron.innerHTML = 
            `<div class="ContentJumbotron__Poster">
                <img src="https://image.tmdb.org/t/p/w300${data.poster_path}" alt="${data.title} 포스터">
                <!-- 봤어요수 리스트수 좋아요수 -->
            </div>
            <div class="ContentJumbotron-PaneInner">
                <h1 class="ContentJumbotron_title">${data.title}</h1>
                <div class="ContentJumbotron_detail">
                    ${release_date}・${genre}・${production_countries}
                </div>
                <div class="ContentJumbotron_ContentRatings">
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
                        <dd>${production_countries}</dd>
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

    fetch("https://api.themoviedb.org/3/movie/" + mIdx + "/credits?api_key=bfdc49ba22b11be34746dd5c861c3d27")
    .then(response => response.json())
    .then(data => {
        let listItem = ''
        for (let i = 0; i < 6; i++) {
            let content = data.cast[i] 
            let name = content.name;
            let character = content.character;
            let profile_path = content.profile_path ? ''.concat('https://image.tmdb.org/t/p/w66_and_h66_face', content.profile_path) : blank_cast;
            listItem += 
                `<li class="listItem">
                    <figure>
                        <div class="profilePhoto">
                            <div class="ProfilePhoto__ProfilePhotoImage"></div>
                            <div class="ProfilePhoto__DefaultImageContainer">
                                <img src="${profile_path}" alt="cast">
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

    fetch("/api/similar/" + mIdx)
    .then(response => response.json())
    .then(movies => {
        if (movies.length !== 0) {
            return movies.map(item => {
                movie = item.similarId
                fetch("https://api.themoviedb.org/3/movie/" + movie + "?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-kr")
                .then(response => response.json())
                .then(content => {
                    let id = content.id;
                    let title = content.title;
                    let poster = content.poster_path ? ''.concat('https://image.tmdb.org/t/p/w300', content.poster_path) : blank_poster;
                    let template = _.createNode('li');
                    _.addClass(template, 'related-item')
                    template.innerHTML =
                        `<a href="/item/${id}">
                            <figure>
                                <div class="thumbnail-wrapper">
                                    <img src="${poster}" alt="${title} 포스터">
                                </div>
                                <figcaption>
                                    <h4>${title}</h4>
                                    <p>${content.vote_average}/예상평점</p>
                                </figcaption>
                            </figure>
                        </a>`
                    _.append(relatedItemList, template);
                    
                })
                .catch(err => console.log(err))
            })
        } else {
            fetch("https://api.themoviedb.org/3/movie/" + mIdx + "/similar?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-kr&page=1")
            .then(response => response.json())
            .then(data => {
                movies = data.results;
                for ( let i = 0; i < 5; i++) {
                    let content = movies[i];
                    let id = content.id;
                    let title = content.title;
                    let poster = content.poster_path ? ''.concat('https://image.tmdb.org/t/p/w300', content.poster_path) : blank_poster;
                    let template = _.createNode('li');
                    _.addClass(template, 'related-item')
                    template.innerHTML =
                        `<a href="/item/${id}">
                            <figure>
                                <div class="thumbnail-wrapper">
                                    <img src="${poster}" alt="${title} 포스터">
                                </div>
                                <figcaption>
                                    <h4>${title}</h4>
                                    <p>${content.vote_average}/예상평점</p>
                                </figcaption>
                            </figure>
                        </a>`
                    _.append(relatedItemList, template);
                }
            })
            .catch(() => {
                let template = _.createNode('p');
                template.innerHTML = `비슷한 영화를 찾을 수 없습니다.`
                _.append(relatedItemList, template);
            })
        }
    })
    .catch(err => console.log(err))

})(window);
