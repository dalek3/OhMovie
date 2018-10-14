<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <div class="footer-wrap">
            <footer>
                <p>
                    <span class="footer-item"><a href="#">서비스 이용약관</a></span>
                    <span class="footer-item"><a href="#">개인정보 처리방침</a></span>
                    <span class="footer-item"><a href="#">도움말</a></span>
                </p>
                <p class="text-muted"><strong>Copyright &copy; 2018 <a href="#">OhMoive</a>. All rights reserved.</strong></p>
            </footer>
        </div>
    </div>

    <!-- jQuery -->
    <script src="<c:url value='/resources/vendor/jquery/jquery.min.js'/>"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value='/resources/vendor/bootstrap/js/bootstrap.min.js'/>"></script>

    <!-- Custom Theme JavaScript -->
    <script src="<c:url value='/resources/dist/js/jquery.barrating.min.js'/>"></script>
    <script src="<c:url value='/resources/dist/js/search.js'/>"></script>
    <script src="<c:url value='/resources/dist/js/speech.js'/>"></script>
    <script>
        $(function () {
            $('#example').barrating({
                theme: 'fontawesone-stars'
            });
        });
    </script>
</body>

</html>
