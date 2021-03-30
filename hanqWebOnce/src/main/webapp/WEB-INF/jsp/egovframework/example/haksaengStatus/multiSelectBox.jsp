<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>

secondPartsOpt = function(data) {
	

	var optHtml = "";
	
	 $("#partsDtl > option").remove();
	 
	if(data.length > 0) {
		
		data.forEach(function(item,i) {
			
				 optHtml = "<option value=" + item.partsCd + ">" + item.optNm 
					     + "</option>";
				 $("#partsDtl").append(optHtml);
		});
		
	} else {
			     optHtml = "<option>없음</option>";
			     $("#partsDtl").append(optHtml);
		
	}
	
	 $("#partsDtl").selectric("refresh");
	
	
}

$(function() {
	$(".sel").selectric();
	
	$("#partsMst").change(function() {
			
		$.ajax({
				url : "/secondOptAjax.do",
				data : {parts : $("#partsMst").val()}, 
				
				success : function(data) {
				
					secondPartsOpt(data);
				}
		});
		
	});  
});

</script>

<div id="contents">
	<table class="tbl type02">	
		<tbody> 
			<tr>
				<th scope="row">컴퓨터 부품 선택</th>
				<td class="ta-l">
					<select id="partsMst" name="partsMst" class="sel short">
						<option>없음</option>
						<c:forEach items="${partsList}" var="parts">
							<option value= "${parts.partsCd}"><c:out value="${parts.partsNm}"></c:out></option>
						</c:forEach>
					</select>
					<select id="partsDtl" name="partsDtl" class="sel middle">
					</select>        
				</td>   
			</tr>
		</tbody>
	</table>
</div>

