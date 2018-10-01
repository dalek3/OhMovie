<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>

    <main>
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">HOME PAGE</h3>
                        </div>
                    </div>
                </div>
            </div>
            <table class="table">
                <thead>
                    <tr>
                        <td>id</td>
                        <td>title</td>
                        <td>original_title</td>
                        <td>backdrop_path</td>
                        <td>poster_path</td>
                        <td>vote_average</td>
                        <td>vote_count</td>
                        <td>release_date</td>
                        <td>popularity</td>
                        <td>overview</td>
                    </tr>
                </thead>
                <tbody>
            
                </tbody>
            </table>
        </section>
    </main>
    <script>
        function createNode(element) {
            return document.createElement(element);
        }

        function append(parent, el) {
            return parent.appendChild(el);
        }

        const ul = document.querySelector('tbody')
        fetch("https://api.themoviedb.org/3/search/movie?api_key=bfdc49ba22b11be34746dd5c861c3d27&query=%EC%96%B4%EB%B2%A4%EC%A0%B8%EC%8A%A4&language=ko-kr")
            .then(respose => respose.json())
            .then(data => {
                let list = data.results;
                return list.map(item => {
                    let tr = createNode('tr');
                    tr.innerHTML =
                    '   <td>' + item.id  + '</td>\
                       <td>' + item.title + '</td>\
                       <td>' + item.original_title + '</td>\
                       <td>' + item.backdrop_path + '</td>\
                       <td>' + item.poster_path + '</td>\
                       <td>' + item.vote_average + '</td>\
                       <td>' + item.vote_count + '</td>\
                       <td>' + item.release_date + '</td>\
                       <td>' + item.popularity + '</td>\
                       <td>' + item.overview + '</td>'
                    append(ul, tr);
                })
            })
            .catch(err => console.log(err))
    </script>
<%@ include file="include/footer.jsp" %>