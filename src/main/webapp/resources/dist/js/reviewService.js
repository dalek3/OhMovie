let reviewService = (() => {
    let add = review => {
        console.log("review add");
        $.ajax({
            type: 'post',
            url: `/api/review/new`,
            data: JSON.stringify(review),
            contentType: "application/json; charset=utf-8"
        })
    }

    let get = (uIdx, mIdx) => {
        console.log('review get');
        fetch(`/api/${uIdx}/review/${mIdx}`)
        .then(response => response.json())
        .then(data => {
            modalInputContent.val(data.rContent);
        }).catch(() => {
            modalInputContent.val('');
        })
        
    }

    let remove = (uIdx, mIdx) => {
        console.log("review delete");
        $.ajax({
            type: 'delete',
            url: `/api/${uIdx}/review/${mIdx}`
        })
    }

    let modify = review => {
        console.log("review modify");
        $.ajax({
            type: 'put',
            url: `/api/${review.uIdx}/review/${review.mIdx}`,
            data: JSON.stringify(review),
            contentType: "application/json; charset=utf-8"
        })
    }


    return {
        add,
        get,
        remove,
        modify
    }; 
})();