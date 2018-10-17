((global) => {
    // 검색
    let input = document.querySelector('.search');
    let result = ''
    let blank_poster = 'https://ssl.pstatic.net/static/movie/2012/06/dft_img203x290.png';

    function onKeyDetection(e) {
        result = input.value;
        while (ul.hasChildNodes()) {
            _.remove(ul, ul.firstChild)
        }
        _callApi();
    }
    input.addEventListener('keyup', onKeyDetection);

    // 영화리스트 불러오기
    const ul = document.querySelector('.list')
    
    function _callApi() {
        if (result !== '') {
            fetch("https://api.themoviedb.org/3/search/movie?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-kr&include_adult=false&query=" + result)
            .then(response => response.json())
            .then(data => {
                let movies = data.results;
                return movies.map(movie => {
                    let poster   = movie.poster_path ? ''.concat('https://image.tmdb.org/t/p/w185', movie.poster_path) : blank_poster;
                    let li = _.createNode('li');
                    li.innerHTML =
                        `    <a href="/item/${movie.id}">
                            <img src="${poster}" alt="${movie.title} 포스터">
                            <p>${movie.title}</p>
                            </a>
                            <p>${movie.vote_average} ${movie.vote_count} ${movie.popularity}</p>`
                    _.append(ul, li);
                })
            })
            .catch(err => console.log(err))
        }
    }

})(window);