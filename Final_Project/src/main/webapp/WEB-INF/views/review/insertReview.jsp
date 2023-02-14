<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    



<div class="popup-modal">
	<div class="modal">

		<div class="modal-title">${memberId}님과의거래후기를 남겨주세요</div>
		<form name="myform" id="review" method="post" action="${pageContext.request.contextPath }/review/insertReview" >
			<div class="modal-content">

				<input type="hidden" name="reviewee" value="판매자 DTO" id="reviewee">
				<input type="hidden" name="reviewer" value="${sessionScope.memberId}" id="reviewer">
				<div class="modal-title">
				
				</div>

				<div class="my-rating"></div>

				<fieldset>
					<legend>이모지 별점</legend>
					<input type="radio" name="revScore" value="3" id="rate3">
					<label for="rate3">⭐</label> 
					<input type="radio" name="revScore" value="2"id="rate4">
					<label for="rate4">⭐</label> 
					<input type="radio" name="revScore" value="1" id="rate5">
					<label for="rate5">⭐</label>
				</fieldset>
				<textarea placeholder="선택사항" name="rev_content" id="content"></textarea>
			</div>


	<button type="submit" value="등록" class="btn">등록</button>
	<button type="button" class="modal-close" onclick="javascript:window.close()">취소</button>
	
</form>
</div>
</div>


<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.6.3.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	$('#review').submit(function() {
		window.close();
// 		alert('메세지');
	});
});

</script>









