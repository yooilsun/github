<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="contents">
				<!-- 컨텐츠 -->
				<div class="content_wrap">
					<script>
					$(function() {
						
						var dataArr 	= [],
						labelArr 		= [];
					
					<c:forEach items="${haksaengChartList}" var="chartList" varStatus="status">
					dataArr["${status.index}"] = "${chartList.cnt}";
					labelArr["${status.index}"] = "${chartList.classNm}";
					</c:forEach>
				
					var config = {
							type: 'pie',
							data: {
								datasets: [{
									data: dataArr,
									backgroundColor: [
										window.chartColors.blue,
										window.chartColors.green,
										window.chartColors.yellow,
										window.chartColors.red,
									],
									label: 'Dataset 1'
								}],
								labels: labelArr
							},
							options: {
								responsive: true
							}
						};
					
					var ctx = $("#chart-area")[0].getContext("2d");
					window.myPie = new Chart(ctx, config);
					});
						
					</script>
					<h2 class="fs-18 fw-b">수강생 현황 차트</h2>
					<div id=" canvas-holder" style="width:40%">
						<div class="chartjs-size-monitor">
							<div class="chartjs-size-monitor-expand">
								<div class="">
								</div>
							</div>
							<div class="chartjs-size-monitor-shrink">
								<div class="">
								</div>
							</div>
						</div>
						<canvas id="chart-area" style="display: block; height: 242px; width: 484px;" width="605"
							height="302" class="chartjs-render-monitor"></canvas>
				</div>

				<h2 class="fs-18 fw-b">수강생 테이블</h2><br>

				<table class="tbl type02">
					<colgroup>
						<col style="width:10%;">
						<col style="width:20%;">
						<col style="width:20%;">
						<col style="width:20%;">
						<col style="width:20%;">
					</colgroup>
					<tbody>
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
		</div>