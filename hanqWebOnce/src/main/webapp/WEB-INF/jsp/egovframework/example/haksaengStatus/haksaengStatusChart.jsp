<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div id="contents">
		<!-- 컨텐츠 -->
		<div class="content_wrap">
			<script>

		
}
var fieldC = {
		
	labelArrA 	: [],
	dataArrA	: [],
	mypieA		: null
		
}

var initC = {
		
		settingM : function() {
			
			chartC.createM.call(this);
			
			eventC.clickM.call(this); 	
		}

var eventC = {
		
		clickM : function() {
			
			var that = this;
			
			$("#chart-area").click(function(e) {
				
				
				
				var firstPoint = that.myPieA.getElementAtEvent(e)[0];
				
				if(firstPoint) {
					var label = that.myPieA.data.labels[firstPoint._index];
					
					if($("tbody > tr").length > 0) {
						$("tbody > tr").remove();
					}
					$.ajax({
						url : "/selectHaksaengStatusList.do",
						data : {"param" : label},
						
						success : function(data){
							
							data.forEach(function(item,index) {
								
							var tr = document.createElement("tr");
								
								for (var k in item) {
									
									var td = document.createElement("td");
									
									$(td).text(item[k]);
									
									$(tr).append(td);
								}
								$("tbody").append(tr);
								
							});
						}
						
					});
				}
			});
		}
}
var chartC = {
		
		configM : function(){
			
			<c:forEach items="${haksaengChartList}" var="chartList" varStatus="status">
			this.dataArrA["${status.index}"] = "${chartList.cnt}";
			this.labelArrA["${status.index}"] = "${chartList.classNm}";
			</c:forEach>
		
			var config = {
					type: 'pie',
					data: {
						datasets: [{
							data: this.dataArrA,
							backgroundColor: [
								window.chartColors.blue,
								window.chartColors.green,
								window.chartColors.yellow,
								window.chartColors.red,
							],
							label: 'Dataset 1'
						}],
						labels: this.labelArrA
					},
					options: {
						responsive: true
					}
				};
			return config;
			
		},
		
		createM : function() {

			var ctx = $("#chart-area")[0].getContext("2d");
			this.myPieA = new Chart(ctx, chartC.configM.call(this));
		}
}

			$(function() {
				
				initC.settingM.call(fieldC);
				
				
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
				<canvas id="chart-area" style="cursor:pointer; display: block; height: 242px; width: 484px;" width="605"
					height="302" class="chartjs-render-monitor"></canvas>
			</div>
		</div>
		<div class="btn-wrap mgt-20">
	  <div class="f-r">
		<ul>
		  <li>
			<button id="btn" type="button" class="btn type03 f-r">검색</button>
		  </li>
		</ul>
	  </div>
	</div>
	<h2 class="fs-18 fw-b">수강생 테이블</h2><br>
	<table class="tbl type02">
		<thead>
			<tr>
				<th scope="row">순번</th>
				<th scope="row">아이디</th>
				<th scope="row">이름</th>
				<th scope="row">나이</th>
				<th scope="row">닉네임</th>
				<th scope="row">핸드폰번호</th>
				<th scope="row">수업과정</th>
				<th scope="row">기수</th>
				<th scope="row">주차</th>
			</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
</div>