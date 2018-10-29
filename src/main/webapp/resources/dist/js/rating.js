((global) => {
    const reviews_ul = _.el('.ReviewMorePage-reviews');
    const spinner = _.el('.loading-spinner');
    
    let blank_poster = 'https://ssl.pstatic.net/static/movie/2012/06/dft_img203x290.png';
    
    ratingService.counts(uIdx);

    fetch(`/api/${uIdx}/ratings`)
    .then(response => response.json())
    .then(result => {
        for (let page = 1; page < 10; page++) {
            fetch("https://api.themoviedb.org/3/trending/movie/week?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-kr&page=" + page)
            .then(response => response.json())
            .then(data => {
                let contents = data.results;
                let items = []
                for (const i in contents) {
                    if (contents.hasOwnProperty(i)) {
                        const item = contents[i];
                        let id = item.id
                        items.push(item)
                        for (const i in result) {
                            if (result.hasOwnProperty(i)) {
                                let movieId = result[i].mIdx
                                if (id === movieId) {
                                    items.pop()
                                    break;
                                }
                            }
                        }
                    }
                }
                // console.log(items);
                return items.map(movie => {
                    let id = movie.id;
                    let title = movie.title;
                    let poster = movie.poster_path ? ''.concat('https://image.tmdb.org/t/p/w300', movie.poster_path) : blank_poster;
                    let year = movie.release_date.substr(0, 4);
                    let template = _.createNode('li');
                    _.addClass(template, 'ContentListWithRatingControl')
                        template.innerHTML =
                        `   <div class="ContentListWithRatingControl-thumbnail">
                                <img src="${poster}" alt="${title} 포스터">
                            </div>
                            <div class="ContentListWithRatingControl-detail">
                                <h3 class="ContentListWithRatingControl-title" >${title}</h3>
                                <!-- release_date・genres・production_countries -->
                                <div class="ContentListWithRatingControl-information">
                                ${year}
                                </div>
                                <div class="RatingControl">
                                    <x-star-rating value="0" number="5" id="${id}"></x-star-rating>
                                </div>
                            </div>`
                    _.append(reviews_ul, template);
                    _.css(spinner, 'display', 'none');
                });
            });
        }    
    });
})(window);