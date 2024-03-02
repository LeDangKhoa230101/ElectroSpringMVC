<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<title><decorator:title default="Mater-Layout"/></title>

		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="<c:url value="/assets/user/css/bootstrap.min.css"/> "/>

		<!-- Slick -->
		<link type="text/css" rel="stylesheet" href="<c:url value="/assets/user/css/slick.css"/> "/>
		<link type="text/css" rel="stylesheet" href="<c:url value="/assets/user/css/slick-theme.css"/> "/>

		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="<c:url value="/assets/user/css/nouislider.min.css"/> "/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="<c:url value="/assets/user/css/font-awesome.min.css"/> ">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="<c:url value="/assets/user/css/style.css"/> "/>

    </head>
	<body>
		<!-- HEADER -->
		<%@include file="/WEB-INF/views/layouts/user/header.jsp" %>
		
		<decorator:body></decorator:body>

		<!-- FOOTER -->
		<%@include file="/WEB-INF/views/layouts/user/footer.jsp" %>
		<!-- /FOOTER -->

		<!-- jQuery Plugins -->
		<script src="<c:url value="assets/user/js/jquery.min.js"/> "></script>
		<script src="<c:url value="assets/user/js/bootstrap.min.js"/> "></script>
		<script src="<c:url value="assets/user/js/slick.min.js"/> "></script>
		<script src="<c:url value="assets/user/js/nouislider.min.js"/> "></script>
		<script src="<c:url value="assets/user/js/jquery.zoom.min.js"/> "></script>
		<script src="<c:url value="assets/user/js/main.js"/> "></script>

	</body>
</html>


