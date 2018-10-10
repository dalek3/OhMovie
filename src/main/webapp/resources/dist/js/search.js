function createNode(element) {
    return document.createElement(element);
}

function append(parent, el) {
    return parent.appendChild(el);
}

function remove(parent, el) {
    return parent.removeChild(el);
}

// 검색
let input = document.querySelector('.search');
let result = ''

function onKeyDetection(e) {
    result = input.value;
    while (ul.hasChildNodes()) {
        remove(ul, ul.firstChild)
    }
    _callApi();
}
input.addEventListener('keyup', onKeyDetection);

// 영화리스트 불러오기
const ul = document.querySelector('.list')
function _callApi() {
    if (result !== '') {
        fetch("https://api.themoviedb.org/3/search/movie?api_key=bfdc49ba22b11be34746dd5c861c3d27&language=ko-kr&include_adult=false&query=" + result)
        .then(respose => respose.json())
        .then(data => {
            let list = data.results;
            return list.map(item => {
                let li = createNode('li');
                li.innerHTML =
                    `    <a href="/item/${item.id}">
                        <img src="https://image.tmdb.org/t/p/w185${item.poster_path}" alt="${item.title}">
                        <p>${item.title}</p>
                        </a>
                        <p>${item.vote_average} ${item.vote_count} ${item.popularity}</p>`
                append(ul, li);
            })
        })
        .catch(err => console.log(err))
    }
}