((global) => {
    const uls = document.querySelector('.list')
    let blank_poster = 'https://ssl.pstatic.net/static/movie/2012/06/dft_img203x290.png';

    `<div class="col-md-2">
                        
                        <p>필터</p>
                        <p>연도</p>
                        <ul>
                            <li>전체</li>
                            <li>Upcoming</li>
                            <li>상영중</li>
                            <li>2010년대</li>
                            <li>2000년대</li>
                            <li>1990년대</li>
                            <li>1980년대</li>
                            <li>1970년대</li>
                            <li>1960년대</li>
                            <li>1950년대</li>
                            <li>1940년대</li>
                            <li>1930년대</li>
                            <li>1920년대</li>
                            <li>1910년대</li>
                            <li>1900년대</li>
                            <li>1890년대</li>
                            <li>1890년대</li>
                            <li>1880년대</li>
                            <li>1870년대</li>
                        </ul>
                        <p>장르</p>
                        <ul>
                            <li>전체</li>
                            <li>SF</li>
                            <li>TV영화</li>
                            <li>가족</li>
                            <li>공포</li>
                            <li>다큐멘터리</li>
                            <li>드라마</li>
                            <li>로멘스</li>
                            <li>모험</li>
                            <li>미스터리</li>
                            <li>서부</li>
                            <li>스릴러</li>
                            <li>애니메이션</li>
                            <li>액션</li>
                            <li>역사</li>
                            <li>음악</li>
                            <li>전쟁</li>
                            <li>코미디</li>
                            <li>판타지</li>
                        </ul>
                    </div>`
    fetch("https://api.themoviedb.org/3/discover/movie?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&language=ko-kr")
    .then(respose => respose.json())
    .then(data => {
        let list = data.results;
        return list.map(item => {
            let id = item.id;
            let title = item.title;
            let vote_average = item.vote_average;
            let vote_count = item.vote_count;
            let popularity = item.popularity;
            let poster   = item.poster_path ? ''.concat('https://image.tmdb.org/t/p/w185', item.poster_path) : blank_poster;
            let li = _.createNode('li');
            li.innerHTML =
                `    <a href="/item/${id}">
                        <img src="${poster}" alt="${title} 포스터">
                        <p>${title}</p>
                    </a>
                    <p>${vote_average} ${vote_count} ${popularity}</p>`
            _.append(uls, li);
        });
    })
    .catch(err => console.log(err))
})(window);