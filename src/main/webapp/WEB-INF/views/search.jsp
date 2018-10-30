<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header.jsp" %>
<main class="container">
    <section>
        <div>
            <h3>검색결과</h3>
            <div>
                <p>'${query}' 검색결과</p>
                <ul class="list">
                </ul>
            </div>
        </div>
    </section>
</main>
<script>
	let result = "${query}";
</script>
<%@ include file="include/common.jsp" %>
<script src="<c:url value='/resources/dist/js/search.js'/>"></script>
</body>

</html>