<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product/productlist.jsp</title>
<style type="text/css">
table {
width: 100%;
border-top: 1px solid #444444;
border-collapse: collapse;
}

th,td{
border-bottom: 1px solid #444444;
padding: 30px
}


</style>
</head>
<body>
<h1>판매상품</h1>
<form action="${pageContext.request.contextPath }/product/product">

<input type="hidden" name="sellmemId" value="">
<input type="hidden" name="buymemId" value="${memberId}">
<a href="${pageContext.request.contextPath }/">메인페이지</a><br>
<a href="${pageContext.request.contextPath }/sell/판매페이지">판매하기</a><br>


<table>
<tr><td>아이디</td>
		<td>이미지</td>
		<td>상품명</td>
		<td>가격</td>
		<td></td></tr>

<c:forEach var="dto" items="${productList}">
<tr><td>${dto.memberId}</td>
		<td>${dto.productPic}</td>
	    <td>${productTitle}</td>
	<td>${dto.productPrice} 원</td>
	<td><input type="submit" value="주문" class="insertbuylist"> </td>
</c:forEach>
</table>
<br>
					
					<!-- 페이징 넣기 -->
<c:if test="${pageDTO.startPage > pageDTO.pageBlock }">
<a href="${pageContext.request.contextPath }/product/productlist?pageNum=${pageDto.startPage - pageDto.pageBlock}">[10페이지 이전] </a>
</c:if>
 
<c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1">
<a href="${pageContext.request.contextPath }/product/productlist?pageNum=${i}">${i}</a> 
</c:forEach>

<c:if test="${pageDTO.endPage < pageDTO.pageCount}">
<a href="${pageContext.request.contextPath }/product/productlist?pageNum=${pageDTO.startPage + pageDTO.pageBlock}">[10페이지 다음] </a>
</c:if>
					
	






</form>
</body>

</html>



