<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>

	$(function() {
		
		$("tbody > tr").click(function() {
		
			
			$("#tableName").val($(this).children().eq(2).text());
			
			leftConF.leftClkM("haksaengStatusTable");
	
		});

	});

</script>
 
<div id="contents">
<h2 class="fs-18 fw-b">수강생 테이블</h2><br>
<table class="tbl type02">
	<colgroup>
		<col style="width:10%;">
		<col style="width:20%;">
		<col style="width:20%;">
		<col style="width:20%;">
		<col style="width:20%;">
	</colgroup>
	<thead>
		<tr>
			<th scope="row">순번</th>
			<th scope="row">아이디</th>
			<th scope="row">이름</th>
			<th scope="row">나이</th>
			<th scope="row">카페닉네임</th>
			<th scope="row">번호</th>
			<th scope="row">신청한 수업</th>
			<th scope="row">기수</th>
			<th scope="row">주차</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${haksaengList}" var="haksaeng">
		<tr>
			<td class="ta-c"><c:out value="${haksaeng.num}"></c:out></td>
			<td class="ta-c"><c:out value="${haksaeng.userId}"></c:out></td>
			<td class="ta-c"><c:out value="${haksaeng.userNm}"></c:out></td>
			<td class="ta-c"><c:out value="${haksaeng.age}"></c:out></td>
			<td class="ta-c"><c:out value="${haksaeng.cafeNick}"></c:out></td>
			<td class="ta-c"><c:out value="${haksaeng.phone}"></c:out></td>
			<td class="ta-c"><c:out value="${haksaeng.classNm}"></c:out></td>
			<td class="ta-c"><c:out value="${haksaeng.gisuNm}"></c:out></td>
			<td class="ta-c"><c:out value="${haksaeng.juchaNm}"></c:out></td>
			</c:forEach>
		</tr>
		</tbody>
	</table>
</div>