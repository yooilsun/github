<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles"  prefix="tiles" %>

<!DOCTYPE html>
<html>
	<head>
		<tiles:insertAttribute name="head"/>
	</head>
	
  	<body>
 		<div id="wrap">
	  		<tiles:insertAttribute name="header"/>
  			<hr>
  			<section id="container">
  				<tiles:insertAttribute name="left"/>
				<tiles:insertAttribute name="content"/>
 			</section>
 			<hr>
		  	<tiles:insertAttribute name="footer"/>
	  		<!--// wrapper -->
  		</div>
  	</body>
</html>
</html>