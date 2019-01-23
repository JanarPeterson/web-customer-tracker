<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Customers</title>

<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>
<body>
<div id="wrapper">
	<div id="header">
		<h2>CRM - Customer Relationship Manager</h2>
	</div>
	

</div>
	<div id="container">
		<div id="content">
		
		<input type="button" value="Add customer" onclick="window.location.href='showFormForAdd'; return false;"
		class="add-button">
		
		<table>
			<tr>
				<th>First name</th>
				<th>Last name</th>
				<th>Email</th>
				<th>Action</th>
			</tr>
			<c:forEach var="temp" items="${customers}">
				
				<c:url var="updateLink" value="/customer/showFormForUpdate">
					<c:param name="customerId" value="${temp.id}"/>
				</c:url>
			
				<c:url var="deleteLink" value="/customer/delete">
					<c:param name="customerId" value="${temp.id}"/>
				</c:url>
				
				<tr>
					<td>${temp.firstName}</td>
					<td>${temp.lastName}</td>
					<td>${temp.email}</td>
					<td>
						<a href="${updateLink}">Update </a>| 
						<a href="${deleteLink}"
							onclick="if (!(confirm('Are you a sure?'))) return false;">Delete</a>
					</td>
 				</tr>
			</c:forEach>
			
		</table>
		</div>
	</div>
</body>
</html>