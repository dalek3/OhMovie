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
            console.log(data.rated);
            if (document.querySelector('x-star-rating')){
                document.querySelector('x-star-rating').value = data.rated
            } else {
                document.querySelector('.rating').value = data.rated
            }
        })
    }

    let counts = uIdx => {
        const ReviewMorePageHeader = _.el('.ReviewMorePage-header');
        if (ReviewMorePageHeader){
            fetch(`/api/${uIdx}/ratings/counts`)
            //fetch(`/api/100/ratings/counts`)
            .then(response => response.json())
            .then(count => {
                console.log(count);
                ReviewMorePageHeader.innerHTML =
                `<h2 class="ReviewMorePage-countingHeader">${count}</h2>`
            });
        }
    }

    return {
        add,
        modify,
        get,
        counts
    }; 
})();