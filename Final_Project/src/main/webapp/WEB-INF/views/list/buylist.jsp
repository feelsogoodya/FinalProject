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

<input type="hidden" name="id" value="${dto.buymemId}">
<a href="${pageContext.request.contextPath }/">메인페이지</a><br>
<a href="${pageContext.request.contextPath }/buy/구매페이지">구매하기</a><br>
<table border="1">
<tr><td>구매일</td><td>이미지</td><td>상품명</td>
<td>금액</td><td>리뷰쓰기</td></tr>
<c:forEach var="dto" items="${buyList}">
<tr>
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
</table>
<br>



<c:if test="${pageDto.startPage > pageDto.pageBlock }">
<a href="${pageContext.request.contextPath }/list/buylist?pageNum=${pageDto.startPage - pageDto.pageBlock}">[10페이지 이전] </a>
</c:if>
 
<c:forEach var="i" begin="${pageDto.startPage }" end="${pageDto.endPage }" step="1">
<a href="${pageContext.request.contextPath }/list/buylist?pageNum=${i}">${i}</a> 
</c:forEach>

<c:if test="${pageDto.endPage < pageDto.pageCount}">
<a href="${pageContext.request.contextPath }/list/buylist?pageNum=${pageDto.startPage + pageDto.pageBlock}">[10페이지 다음] </a>
</c:if>

</body>
</html>



