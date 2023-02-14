<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selllist/selllist.jsp</title>
<style type="text/css">
table {
width: 100%;
border-top: 1px solid #444444;
border-collapse: collapse;
}

th,td{
border-bottom: 1px solid #444444;
padding: 30px;
}


</style>
</head>


<body>
<h1>판매내역</h1>

<input type="hidden" name="id" value="${dto.sellmemId}">
<a href="${pageContext.request.contextPath }/">메인페이지</a><br>
<a href="${pageContext.request.contextPath }/sell/판매페이지">판매하기</a><br>
<table>
<tr><td>등록일</td><td>이미지</td><td>상품명</td>
<td>금액</td><td>상태</td></tr>
<c:forEach var="dto" items="${sellList }">
<tr>
	<td>${dto.sellDate}</td>
	<td>${dto.prodPic}</td>
	    <td>
    <a href="${pageContext.request.contextPath }/selllist/prodName?num=${dto.sellNum}">
    ${dto.prodName}</a>
    </td>
	<td>${dto.prodPrice} 원</td>
	<td>${dto.prodStatus}</td>
</c:forEach>
</table>
<br>



<c:if test="${pageDto.startPage > pageDto.pageBlock }">
<a href="${pageContext.request.contextPath }/list/selllist?pageNum=${pageDto.startPage - pageDto.pageBlock}">[10페이지 이전] </a>
</c:if>
 
<c:forEach var="i" begin="${pageDto.startPage }" end="${pageDto.endPage }" step="1">
<a href="${pageContext.request.contextPath }/list/selllist?pageNum=${i}">${i}</a> 
</c:forEach>

<c:if test="${pageDto.endPage < pageDto.pageCount}">
<a href="${pageContext.request.contextPath }/list/selllist?pageNum=${pageDto.startPage + pageDto.pageBlock}">[10페이지 다음] </a>
</c:if>

</body>
</html>



