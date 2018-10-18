((global) => {
    const uls = document.querySelector('.list')
    let blank_poster = 'https://ssl.pstatic.net/static/movie/2012/06/dft_img203x290.png';

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