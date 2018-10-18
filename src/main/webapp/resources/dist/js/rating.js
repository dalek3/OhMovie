((global) => {
    const reviews_ul = _.el('.ReviewMorePage-reviews');
    const spinner = _.el('.loading-spinner');
    let blank_poster = 'https://ssl.pstatic.net/static/movie/2012/06/dft_img203x290.png';
    
    fetch("https://api.themoviedb.org/3/trending/movie/week?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-kr")
    .then(response => response.json())
    .then(data => {
        let contents = data.results;
        return contents.map(item => {
            let title = item.title;
            let poster   = item.poster_path ? ''.concat('https://image.tmdb.org/t/p/w300', item.poster_path) : blank_poster;
            let year = item.release_date.substr(0, 4);
            let template = _.createNode('li');
            _.addClass(template, 'ContentListWithRatingControl')
            template.innerHTML =
                `   <div class="ContentListWithRatingControl-thumbnail">
                            <img src="${poster}" alt="${title} 포스터">
                    </div>
                    <div class="ContentListWithRatingControl-detail">
                        <h3 class="ContentListWithRatingControl-title">${title}</h3>
                        <!-- release_date・genres・production_countries -->
                        <div class="ContentListWithRatingControl-information">
                            ${year}
                        </div>
                        <div class="RatingControl">
                            <x-star-rating value="0" number="5"></x-star-rating>
                        </div>
                    </div>`
            _.append(reviews_ul, template);
            _.css(spinner, 'display', 'none');
        });
    });
    
})(window);