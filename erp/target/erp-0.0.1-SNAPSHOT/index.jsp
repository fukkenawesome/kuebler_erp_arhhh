<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		 <!-- Bootstrap -->
         <link href="/res/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
	</head> 
	<body>
		<c:url value="/testHomeRedirect.html" var="messageUrl" />
		<a href="${messageUrl}">Click to enter</a>
		<script src="http://code.jquery.com/jquery.js"></script>
        <script src="/res/bootstrap/js/bootstrap.min.js"></script>
	</body>
</html>
