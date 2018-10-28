let reviewService = (() => {
    let add = review => {
        console.log("review add");
        fetch("/api/review/new", {
            method: 'POST',
            body: JSON.stringify(review),
            headers: { 'Content-type': 'application/json' }
        })
        .catch(err => console.log(err))
    }

    let get = (uIdx, mIdx) => {
        console.log('review get');
        fetch("/api/" + uIdx + "/review/" + mIdx)
        .then(response => response.json())
        .then(data => {
            modalInputContent.val(data.rContent);
        })
        .catch(err => console.log(err))
    }

    let remove = rIdx => {
        console.log("review remove");
        fetch("/api/review/" + rIdx, {
            method: 'DELETE',
        })
        .catch(err => console.log(err))
    }

    let modify = review => {
        console.log("review modify");
        fetch("/api/review/" + review.rIdx, {
            method: 'PUT',
            body: JSON.stringify(review),
            headers: { 'Content-type': 'application/json' }
        })
        .catch(err => console.log(err))
    }

    return {
        add,
        get,
        remove,
        modify
    }; 
})();