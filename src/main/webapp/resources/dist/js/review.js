let reviewService = (() => {
    let add = review => {
        console.log("review add");
        fetch("/api/review/new", {
            method: 'POST',
            body: JSON.stringify(review),
            headers: { 'Content-type': 'application/json' }
        }).then(response => response.json())
        .catch(err => console.log(err))
    }

    let get = (uIdx, mIdx) => {
        console.log('review get');
        fetch(`/api/${uIdx}/review/${mIdx}`)
        .then(response => response.json())
        .then(data => {
            modalInputContent.val(data.rContent);
        })
    }

    let remove = (uIdx, mIdx) => {
        $.ajax({
            type: 'delete',
            url: `/api/${uIdx}/review/${mIdx}`
        })
    }

    let modify = review => {
        console.log("review modify");
        fetch(`/api/${review.uIdx}/review/${review.mIdx}`, {
            method: 'PUT',
        }).then(response => response.json())
        .catch(err => console.log(err))
    }

    return {
        add,
        get,
        remove,
        modify
    }; 
})();