<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <script>
   		var leftConF = {
   				
   				leftClkM : function(listr){
   					
   					if(listr === 'haksaengStatusChart' || listr === 'haksaengStatusTable') {
   						
   						$("#leftFrm").attr("action", "/initOneMapping.do");
   						$("#listr").val(listr);
   					} else {
   						
   						$("#leftFrm").attr("action","/" + listr + ".do");
   	   					$("#listr").val(listr);
   					}
   					
   					$("#leftFrm").submit();
   				}
   		}
   	$(function() {
   		$("#${param.listr}").attr("class","on");
   		$(".depth2 > li").click(function() { 
   			
   			leftConF.leftClkM($(this).attr("id"));
   		});
   		
   	});
   		
   </script>
   
   <form id="leftFrm" method="post">
   	<input type="hidden" name="listr" id="listr">
   	<input type="hidden" name="tableName" id="tableName">
   	<input type="hidden" name="tableNumber" id="tableNumber">
   	<input type="hidden" id="chkBo" name="chkBo">
   </form>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<section id="container">
			<!-- lnb -->
			<nav id="lnb">
				<button type="button" class="btn btn-lnb"><i class="ico-arr-left01"></i><span
						class="hidden"></span></button>
				<div class="scrollbar-inner">
					<ul class="depth1">
						<li class="on">
							<div>
								<a href="javascript:;">메뉴</a>
							</div>
							<ul class="depth2">
							<li id="haksaengStatus">
									<div>
										<a href="#">종합정보</a>
										<button type="button" class="btn-bookmark"><span
												class="hidden">즐겨찾기</span></button>
									</div>
								</li>
								<li id="haksaengStatusChart">
									<div>
										<a href="#">차트</a>
										<button type="button" class="btn-bookmark"><span
												class="hidden">즐겨찾기</span></button>
									</div>
								</li>
								<li id="haksaengStatusTable">
									<div>
										<a href="#">테이블</a>
										<button type="button" class="btn-bookmark"><span
												class="hidden">즐겨찾기</span></button>
									</div>
								</li>
									<li id="haksaengStatusTable">
									<div>
										<a href="#">테이블</a>
										<button type="button" class="btn-bookmark"><span
												class="hidden">즐겨찾기</span></button>
									</div>
								</li>
								<li id="multiSelectBox">
									<div>
										<a href="#">멀티셀렉트박스</a>
										<button type="button" class="btn-bookmark"><span
												class="hidden">즐겨찾기</span></button>
									</div>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</nav>
			</section>
</html>