let ratingService = (() => {
    let add = rating => {
        console.log("rating add");
        fetch(`/api/rating/${rating.uIdx}/${rating.mIdx}/new`, {
            method: 'POST',
            body: JSON.stringify(rating),
            headers: { 'Content-type': 'application/json' }
        })
        .catch(err => console.log(err))
    }

    let modify = rating => {
        console.log("rating modify");
        fetch("/api/rating/" + rating.uIdx + "/" + rating.mIdx, {
            method: 'PUT',
            body: JSON.stringify(rating),
            headers: { 'Content-type': 'application/json' }
        })
        .catch(err => console.log(err))
    }

    let get = (uIdx, mIdx) => {
        console.log('rating get');
        fetch("/api/" + uIdx + "/rating/" + mIdx)
        .then(response => response.json())
        .then(data => {
            console.log(data.rated);
            document.querySelector('x-star-rating').value(data.rated)
        })
        .catch(err => console.log(err))
    }

    return {
        add,
        modify,
        get
    }; 
})();