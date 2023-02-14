<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list/buylist.jsp</title>
</head>
<body>
<h1>구매내역</h1>

<input type="hidden" name="id" value="${dto.sellmemId}">
<a href="${pageContext.request.contextPath }/">메인페이지</a><br>
<a href="${pageContext.request.contextPath }/buy/구매페이지">구매하기</a><br>


				<div class="mybuying-list">
					<table class="table">
						<thead>
							<tr>
								<th class="prodPic">상품이미지</th>
								<th class="prodPrice">가격</th>
							</tr>
						</thead>
						<tbody class="buy-list-tbody" id="buy-list-tbody">
						</tbody>
						
						<thead>
							<tr>
								<th class="prodPic">${dto.prodPic}</th>
								<th class="prodPrice">${dto.prodPrice }</th>
							</tr>
						</thead>
						<tbody class="buy-list-tbody" id="buy-list-tbody">
						</tbody>
					</table>
					
					<!-- 페이징 넣기 -->
<c:if test="${pageDto.startPage > pageDto.pageBlock }">
<a href="${pageContext.request.contextPath }/list/buylist?pageNum=${pageDto.startPage - pageDto.pageBlock}">[10페이지 이전] </a>
</c:if>
 
<c:forEach var="i" begin="${pageDto.startPage }" end="${pageDto.endPage }" step="1">
<a href="${pageContext.request.contextPath }/list/buylist?pageNum=${i}">${i}</a> 
</c:forEach>

<c:if test="${pageDto.endPage < pageDto.pageCount}">
<a href="${pageContext.request.contextPath }/list/buylist?pageNum=${pageDto.startPage + pageDto.pageBlock}">[10페이지 다음] </a>
</c:if>
					
				</div>
		</div>
	</div>
	
</div>
























<div>
<div id="buyinfo"></div>
<fieldset>
<td>구매일</td>
<td>이미지</td>
<td>상품명</td>
<td>금액</td>
<td>리뷰쓰기</td>

<br>
<c:forEach var="dto" items="${buyList}">

	<td>${dto.buyDate}</td>
	<td>${dto.prodPic}</td>
	    <td>
    <a href="${pageContext.request.contextPath }/buylist/prodName?num=${dto.buyNum}">
    ${dto.prodName}</a>
    </td>
	<td>${dto.prodPrice} 원</td>
	<td>
	<a href="${pageContext.request.contextPath }/review/reviewForm"> 거래후기 작성
	</td>
</c:forEach>
</fieldset>
</div>
<br>





</body>
</html>



