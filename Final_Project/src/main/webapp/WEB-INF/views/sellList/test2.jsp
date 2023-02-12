<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<h1>구매내역</h1>
<c:if test="${ empty sessionScope.id }">
	<c:redirect url="/member/login"/>
</c:if>

	<div class="sell-list">
		<div class="sell-list-condition">
			<p class="sell-info tit">판매 정보</p>
			<select id="sell-status">
				<option value="전체">전체</option>
				<option value="판매중">판매중</option>
				<option value="예약중">예약중</option>
				<option value="판매완료">판매완료</option>
			</select>
		</div>

		<div class="myselling-list">
			<table class="table">
				<thead>
					<tr>
						<th class="pimg">상품이미지</th>
						<th class="pinfo">상품정보</th>
						<th class="psellstatus">판매상태</th>
					</tr>
				</thead>
				<tbody class="sell-list-tbody" id="sell-list-tbody">
				</tbody>
			</table>
</body>
</html>