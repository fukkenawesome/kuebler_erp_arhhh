<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


    
<html>
	<head>
		<meta charset="utf-8">
		<title>Welcome</title>
	</head> 
	<body>
		<h2>${message}</h2>
		<h2>${something}</h2>
		
		
		<table>
		<c:forEach var="myComplexModel" items="${RequestModel.RequestModel}">
		<tr>
		  <td>${myComplexModel.id}</td>
		  <td>${myComplexModel.customer_Id}</td>
        </tr>
        </c:forEach>
        </table>
		<table>
		<tr>
		  <th>Anfrage Id</th>
		  <th>Kunden Id</th>
		  <th>Commissions Id</th>
		  <th>Erstelldatum</th>
		  <th>Zuletzt ge&auml;ndert</th>
		  <th>Erstellt von</th>
		  <th>Ge&auml;ndert von</th>
		  <th>In Bearbeitung</th>
		  <th>Produkt</th>
		  <th>Status</th>
		  <th>Art</th>
		</tr>
		<c:forEach var="myComplexModel" items="${complexModel}">
		<tr>
            <td><c:out value="${myComplexModel.id}" /></td>
            <td><c:out value="${myComplexModel.customer_Id}"/></td>
            <td><c:out value="${myComplexModel.comission_Id}"/></td>
            <td><c:out value="${myComplexModel.date_created}"/></td>
            <td><c:out value="${myComplexModel.last_changed}"/></td>
            <td><c:out value="${myComplexModel.created_by}"/></td>
            <td><c:out value="${myComplexModel.last_changed_by}"/></td>
            <td><c:out value="${myComplexModel.in_process_by}"/></td>
            <td><c:out value="${myComplexModel.product}"/></td>
            <td><c:out value="${myComplexModel.status}"/></td>
            <td><c:out value="${myComplexModel.type}"/></td>
        </tr>
          </c:forEach>
		</table>
	</body>
</html>
