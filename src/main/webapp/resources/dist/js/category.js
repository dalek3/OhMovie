((global) => {
    const uls = document.querySelector('.list')
    const count = _.el('#count')
    const genres = _.el('#with_genres')
    const year = _.el('#year')
    const sort = _.el('#sort_by')
    let page = 1;
    document.addEventListener('DOMContentLoaded', () => {
        _.el('select[name="primary_release_year"]').onchange = _changeEventHandler;
        _.el('select[name="with_genres"]').onchange = _changeEventHandler;
        _.el('select[name="sort_by"]').onchange = _changeEventHandler;
    }, false);

    _changeEventHandler = (event) => {
        uls.innerHTML = ''
        _getApi(count, genres, year, sort)
    }

    _getApi = (count, genres, year) => {
        fetch(`https://api.themoviedb.org/3/discover/movie?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-KR&sort_by=${sort.value}&include_adult=false&include_video=false&page=${page}&primary_release_year=${year.value}&with_genres=${genres.value}`)
        .then(respose => respose.json())
        .then(data => {
            let list = data.results;
            count.innerHTML= data.total_results;
            return list.map(item => {
                let id = item.id;
                let title = item.title;
                let poster = item.poster_path ? ''.concat('https://image.tmdb.org/t/p/w185', item.poster_path) : '';
                let li = _.createNode('li');
                _.addClass(li, 'Poster')
                if (poster !== '') {
                    li.innerHTML =
                    `<a href="/item/${id}">
                        <img src="${poster}" alt="${title} 포스터">
                    </a>`
                    _.append(uls, li);
                }
            });
        })
        .catch(err => console.log(err))
    }
    
    _getApi(count, genres, year, sort)
    window.onscroll = (e) => {
        if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
            page += 1
            _getApi(count, genres, year, sort)
        }
    };
})(window);