function createNode(element) {
    return document.createElement(element);
}

function append(parent, el) {
    return parent.appendChild(el);
}

const uls = document.querySelector('.list')
fetch("https://api.themoviedb.org/3/discover/movie?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false&page=1&language=ko-kr")
.then(respose => respose.json())
.then(data => {
    let list = data.results;
    return list.map(item => {
        let li = createNode('li');
        li.innerHTML =
            `    <a href="${item.id}">
                    <img src="https://image.tmdb.org/t/p/w185${item.poster_path}" alt="${item.title}">
                    <p>${item.title}</p>
                </a>
                <p>${item.vote_average} ${item.vote_count} ${item.popularity}</p>`
        append(uls, li);
    })
})
.catch(err => console.log(err))