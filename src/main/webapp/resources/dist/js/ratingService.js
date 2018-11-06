let ratingService = (() => {
    let add = rating => {
        console.log("rating add");
        $.ajax({
            type: 'post',
            url: `/api/rating/${rating.uIdx}/${rating.mIdx}/new`,
            data: JSON.stringify(rating),
            contentType: "application/json; charset=utf-8"
        })
    }

    let modify = rating => {
        console.log("rating modify");
        $.ajax({
            type: 'put',
            url: `/api/rating/${rating.uIdx}/${rating.mIdx}`,
            data: JSON.stringify(rating),
            contentType: "application/json; charset=utf-8"
        })
    }

    let get = (uIdx, mIdx) => {
        console.log('rating get');
        fetch(`/api/${uIdx}/rating/${mIdx}`)
        .then(response => response.json())
        .then(data => {
            _.el('x-star-rating').value = data.rated
        }).catch( () => {
            _.el('x-star-rating').value = 0
        })
    }

    let pred = (uIdx, mIdx) => {
        console.log('rating pred');
        fetch(`/api/${uIdx}/pred/${mIdx}`)
        .then(response => response.json())
        .then(data => {
            _.el('.pred').innerHTML = 
            `<span>예상 평점</span>
            <em>${data.rated}</em>`
        })
    }

    let counts = uIdx => {
        const ReviewMorePageHeader = _.el('.ReviewMorePage-header');
        if (ReviewMorePageHeader){
            fetch(`/api/${uIdx}/ratings/counts`)
            .then(response => response.json())
            .then(count => {
                ReviewMorePageHeader.innerHTML =
                `<h2 class="ReviewMorePage-countingHeader">${count}</h2>`
            });
        }
    }

    return {
        add,
        modify,
        get,
        counts,
        pred
    }; 
})();