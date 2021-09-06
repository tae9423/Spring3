<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../temp/boot_head.jsp"></c:import>

<title>Insert title here</title>
</head>
<body>
	<c:import url="../temp/boot_nav.jsp"></c:import>
	<h1>Bankbook Select Page</h1>

	<div class="container-fluid">

		<h1>BookNumber : ${dtov.bookNumber}</h1>
		<h1>BookName : ${dtov.bookName}</h1>
		<h1>BookRate : ${dtov.bookRate}</h1>
		<h1>BookSale : ${dtov.bookSale }</h1>
		
		<a href="./bankbookDelete?bookNumber=${dtov.bookNumber}">Delete</a>
		<a href="./bankbookUpdate?bookNumber=${dtov.bookNumber}">Update</a>
	</div>
</body>
</html>