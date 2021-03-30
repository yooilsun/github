<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" id="viewPort" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<meta name="description" content="관리자 홈페이지">

	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" id="viewPort" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
	<meta name="description" content="관리자 홈페이지">
	<meta name="keywords" content="keywords, keywords">
	<meta name="format-detection" content="telephone=no">
	<meta property="og:title" content="">
	<meta property="og:type" content="">
	<meta property="og:url" content="">
	<meta property="og:description" content="">
	<meta property="og:image" content="common/img/common/.png">
	<!-- Chrome, Safari, IE -->
	<link rel="shortcut icon" href="#">
	<!-- Firefox, Opera -->
	<link rel="icon" href="#">
	<title>관리자페이지</title>
	<!-- html5shiv support of HTML5 -->
	<!--[if lt IE 9]>
    <script src="common/js/plugin/html5shiv.js"></script>
	<![endif]-->

	
	<!-- common css -->
	<link rel="stylesheet" href="css/common.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/chart.min.css">
	<link rel="stylesheet" href="css/selectric.css">

	<!-- common js -->
	<script src="js/jquery-2.2.4.min.js"></script>
	<script src="js/common.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/utils.js"></script>
	<script src="js/jquery.selectric.js"></script>

	<style type="text/css">
		/* Chart.js */
		@keyframes chartjs-render-animation {
			from {
				opacity: .99
			}

			to {
				opacity: 1
			}
		}

		.chartjs-render-monitor {
			animation: chartjs-render-animation 1ms
		}

		.chartjs-size-monitor,
		.chartjs-size-monitor-expand,
		.chartjs-size-monitor-shrink {
			position: absolute;
			direction: ltr;
			left: 0;
			top: 0;
			right: 0;
			bottom: 0;
			overflow: hidden;
			pointer-events: none;
			visibility: hidden;
			z-index: -1
		}

		.chartjs-size-monitor-expand>div {
			position: absolute;
			width: 1000000px;
			height: 1000000px;
			left: 0;
			top: 0
		}

		.chartjs-size-monitor-shrink>div {
			position: absolute;
			width: 200%;
			height: 200%;
			left: 0;
			top: 0
		}
		
	</style>