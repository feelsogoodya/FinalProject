<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    



<div class="popup-modal">
	<div class="modal">

		<div class="modal-title">${dto.sellmemId}님과의거래후기는?</div>
		<form name="myform" id="myform" method="post" 
		action="${pageContext.request.contextPath }/review/reviewPro" enctype="multipart/form-data">
			<div class="modal-content">

				<input type="hidden" name="reviewee" value="${dto.sellmemId }" id="reviewee">
				<input type="hidden" name="reviewer" value="${dto.buymemId}" id="reviewer">
				<div class="modal-title">
					<b>${dto.sellmemId}</b>님과의 거래후기는?
				</div>

				<div class="my-rating"></div>

				<fieldset>
					<legend>이모지 별점</legend>
					<input type="radio" name="star" value="3" id="rate3">
					<label for="rate3">⭐</label> 
					<input type="radio" name="star" value="2"id="rate4">
					<label for="rate4">⭐</label> 
					<input type="radio" name="star" value="1" id="rate5">
					<label for="rate5">⭐</label>
				</fieldset>
				<textarea placeholder="선택사항" name="content" id="content"></textarea>
			</div>

		</form>

	</div>
	<button type="button" value="등록" class="btn"
	onclick="location.href='${pageContext.request.contextPath }/review/reviewPro'">등록</button>
	<button type="button" class="modal-close">취소</button>

</div>


<script type="text/javascript" src="${pageContext.request.contextPath }/resources/script/jquery-3.6.3.js"></script>
<script type="text/javascript">

window.open(
		"review","거래후기","width=500,height=500,top=100,left=100"
		)

</script>









