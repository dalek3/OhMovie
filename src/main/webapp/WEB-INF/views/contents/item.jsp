<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>
        <main>
            <div class="ContentJumbotron-wrap">
                <section class="ContentJumbotron" >
                    <!-- item.js -->
                </section>
            </div>
            <sec:authorize access="isAuthenticated()">
            <div class="ContentJumbotron-user-panel ">
                <ul>
                    <li class="rating">
                        <span class="fw700">평가</span>
                        <x-star-rating value="0" number="5" id="${mIdx}"></x-star-rating>
                    </li>
                    <li>                      	
                      	<span id='addReviewBtn' class="fw700" data-toggle="modal" data-target="#myModal">리뷰 작성하기</span>	
                    </li>
                </ul>
            </div>
            </sec:authorize>
            <div class="section-panels">
                <section class="section-panel ContentOverview">
                    <!-- item.js -->
                </section>
                <section class="section-panel ContentPeoples">
                    <!-- item.js -->
                </section>
                <section class="section-panel ContentReviews">

                    <ul class="reviews">
                        
                    </ul>
                </section>
                <section class="section-panel">
                    <div class="section-panel-header">
                        <h3>비슷한 작품</h3>
                    </div>
                    <ul class="related-item-list">

                    </ul>
                </section>
            </div>

            <!-- Modal -->
            <div id="myModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title">리뷰</h4>
                        </div>
                        <div class="modal-body">
                            <p class="form-group">
                                <textarea id="myInput" cols="75" rows="10"></textarea>
                            </p>
                        </div>
                        <div class="modal-footer">
                            <button id="modalModBtn" type="button" class="btn btn-warning">수정</button>
                            <button id="modalRemoveBtn" type="button" class="btn btn-danger">삭제</button>
                            <button id="modalRegisterBtn" type="button" class="btn btn-primary">저장</button>
                            <button id="modalCloseBtn" type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        
        <%@ include file="../include/footer.jsp" %>
        <%@ include file="../include/common.jsp" %>
<script src="<c:url value='/resources/dist/js/ratingService.js' />"></script>
<script>
    // restcontroller를 통해서 전달하기
    let mIdx = <c:out value="${mIdx}">mIdx</c:out>;
    <sec:authorize access="isAuthenticated()">
    let uIdx = <sec:authentication property='principal.member.uIdx' />
    ratingService.get(uIdx, mIdx)
    </sec:authorize>
    let input = document.querySelector('.search');
    
    console.log(mIdx);
    
    
    
    function onKeyDetection(e) {
        setTimeout(() => {
            let result = input.value;
            window.location.href = '/search?q='+result;
        }, 1200);
    }
    input.addEventListener('keyup', onKeyDetection);
    
    </script>
<script src="<c:url value='/resources/dist/js/item.js'/>"></script>
<script src="<c:url value='/resources/dist/js/contentReviews.js'/>"></script>
<script src="<c:url value='/resources/dist/js/StarRating.js' />"></script>
<script src="<c:url value='/resources/dist/js/review.js' />"></script>
<script>

    let modal = $('.modal');
    let modalInputContent = modal.find("textarea");

    let modalModBtn = $('#modalModBtn');
    let modalRemoveBtn = $('#modalRemoveBtn');
    let modalRegisterBtn = $('#modalRegisterBtn');
    
    $('#addReviewBtn').on("click", e => {
        reviewService.get(uIdx, mIdx);
        modal.find("button[id !='modalCloseBtn']").hide();
        // modalRegisterBtn.show();
        console.log("test" + modalInputContent.val());
        setTimeout(() => {
            if(modalInputContent.val() != ''){
                modalModBtn.show();
                modalRemoveBtn.show();
            } else {
                modalRegisterBtn.show();
            }
        }, 100);
    })
    
   

    modalRegisterBtn.on("click", e => {
        let review = {
            uIdx: uIdx,
            mIdx: mIdx,
            rContent: modalInputContent.val()
        };
        
        reviewService.add(review);
        modal.modal("hide");
    });

    modalModBtn.on("click", e => {
        let review = {
            uIdx : uIdx,
            mIdx : mIdx,
            rContent: modalInputContent.val()
        }
        reviewService.modify(review);
        modal.modal("hide");
    })

    modalRemoveBtn.on("click", e => {       
        reviewService.remove(uIdx, mIdx)
        modalInputContent.val('')
        modal.modal("hide");
    })


</script>
</body>

</html>