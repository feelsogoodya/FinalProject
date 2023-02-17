<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<style>
.review{
	height: 80;
	width: 80;

}

.img_style {
	text-align: center;
	padding: 20;
}
</style>

<div class="popup-modal">
	<div class="modal">

		<div class="modal-title">${memberId}님과의거래후기를남겨주세요!</div>
		<br>
		<form action="${pageContext.request.contextPath }/review/insertReview"  id="insertReview" method="post">
			<div class="modal-content">

				<input type="hidden" name="reviewee" value="판매자 DTO" id="reviewee">
				<input type="hidden" name="reviewer" value="${memberId}" id="reviewer">
				<div class="modal-title"></div>

				<div class="manner-rating"></div>

				<fieldset style="display: flex; justify-content: center; border-color: white;">
					<div class="img_style">
						<img src="${pageContext.request.contextPath }/resources/img/review/bad.png"
							id="bad" class="review_img_bad review" ><br> 별로예요</div>
					<div class="img_style">
						<img src="${pageContext.request.contextPath }/resources/img/review/soso.png"
							id="soso" class="review_img_soso review"><br> 좋아요</div>
					<div class="img_style">
						<img src="${pageContext.request.contextPath }/resources/img/review/good.png"
							id="good" class="review_img_good review"><br> 최고예요</div>
				</fieldset>
			</div>
			
			<br>
			
			<div name="contentCk">
			<div class="badCk" style="display: none;">
				<input type="checkbox" name="revContent" value="답장이 느려요" > 
				<label for="termCheck">답장이 느려요</label><br>
				<input type="checkbox" name="revContent" value="상품이 말한 것과 달라요"> 
				<label for="termCheck">상품이 말한 것과 달라요</label><br>
				<input type="checkbox" name="revContent" value="시간약속을 지키지 않아요"> 
				<label for="termCheck">시간약속을 지키지 않아요</label><br>
				<input type="checkbox"name="revContent" value="약속장소에 나타나지 않았어요"> 
				<label for="termCheck">약속장소에 나타나지 않았어요</label><br>
				<input type="checkbox" name="revContent" value="불친절해요"> 
				<label for="termCheck">불친절해요</label><br>
				<input type="checkbox" name="revContent" value="정가보다 비싸게 팔 아요"> 
				<label for="termCheck">정가보다 비싸게 팔아요</label><br>
			</div> 
			
			<div class="sosoCk" style="display: none;">
			<input type="checkbox" name="revContent" value="답장이 빨라요" > 
				 <label for="termCheck">답장이 빨라요</label><br>
				 <input type="checkbox" name="revContent" value="상품이 설명한 것과 같아요">
				 <label for="termCheck">상품이 설명한 것과 같아요</label><br>
				 <input type="checkbox" name="revContent" value="내가 있는 곳까지 와주셨어요">
				 <label for="termCheck"> 내가 있는 곳까지 와주셨어요</label><br>
				 <input type="checkbox" name="revContent" value="약속시간을 잘지켜요">
				 <label for="termCheck"> 약속시간을 잘지켜요</label><br>
				 <input type="checkbox"name="revContent" value="친절하고 매너가 좋아요">
				 <label for="termCheck">친절하고 매너가 좋아요</label><br>
				 <input type="checkbox" name="revContent" value="좋은 상품을 저렴하게 팔아요">
				 <label for="termCheck">좋은 상품을 저렴하게 팔아요</label><br>
			
				 
			</div>
			<div class="goodCk" style="display: none;">
			 <input type="checkbox"name="revContent" value="답장이 빨라요">
				 <label for="termCheck">답장이 빨라요</label><br>
				 <input type="checkbox"name="revContent" value="상품이 설명한 것과 같아요">
				 <label for="termCheck">상품이 설명한 것과 같아요</label><br>
				 <input type="checkbox" name="revContent" value="내가 있는 곳까지 와주셨어요">
				 <label for="termCheck">내가 있는 곳까지 와주셨어요</label><br>
				 <input type="checkbox"name="revContent"  value="약속시간을 잘지켜요">
				 <label for="termCheck"> 약속시간을 잘지켜요</label><br>
				 <input type="checkbox"name="revContent" value="친절하고 매너가 좋아요">
				 <label for="termCheck">친절하고 매너가 좋아요</label><br>
				 <input type="checkbox"name="revContent" value="좋은 상품을 저렴하게 팔아요">
				 <label for="termCheck">좋은 상품을 저렴하게 팔아요</label><br>
				 </div></div>
			<br> <br>
			
			<div style="text-align: center;">
				<button type="submit" value="등록" class="btn"
					style="text-align: center;">등록</button>
				<button type="button" class="modal-close"
					onclick="javascript:window.close()" style="text-align: center;">취소</button>
			</div>
		</form>
	</div>
</div>








<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/js/jquery-3.6.3.js"></script>
<script type="text/javascript">

$(document).ready(function() {
	$('#insertReview').submit(function() {
		window.close();
		
// 		alert('메세지');
		  });
	
	
	$('.review').click(reviewClick)	
});



function reviewClick(){
	var id = this.id;	// bad, soso, good
	
	$('.review').each(function(index, item){
		var name = '.' + item.id + 'Ck';
	    if(item.id == id){
	    	$(name).css('display', 'block');
	    } else {
	    	$(name).css('display', 'none');
	    }
	});
}
// $(document).ready(function() {
// 	$('.review_img_bad').click( function () {
// 		$('.badCk').css({	"display":"block" });
// 		$('.sosoCk').css({	"display":"none" });
// 		$('.goodCk').css({	"display":"none" });
// 	});
			
// 	$('.review_img_soso').click(function () {
// 		$('.badCk').css({	"display":"none" });
// 		$('.sosoCk').css({	"display":"block" });
// 		$('.goodCk').css({	"display":"none" });		
// 	});
	
// 	$('.review_img_good').click(function () {
// 		$('.badCk').css({	"display":"none" });
// 		$('.sosoCk').css({	"display":"none" });
// 		$('.goodCk').css({	"display":"block" });
// 	});
	
// });





</script>









