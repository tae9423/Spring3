<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../temp/boot_head.jsp"></c:import>
<title>Insert title here</title>
</head>
<body>
	<c:import url="../temp/boot_nav.jsp"></c:import>

	<h1>List Renewal</h1>

	<div class="container-fluid">
		<div class="col-md-7 my-2 mx-auto my-0">

			<table class="table table-striped table-hover">
				<tr>
					<td>번호</td>
					<td>이름</td>
					<td>이자율</td>
				</tr>


				<c:forEach items="${list}" var="dto">
					<tr>
						<td>${dto.bookNumber}</td>
						<td><a href="bankbookSelect?bookNumber=${dto.bookNumber}">${dto.bookName}</td>
						<td>${dto.bookRate}</td>

					</tr>

				</c:forEach>


			</table>
			
			<a href="./bankbookInsert" class="btn btn-danger">ADD</a>
		</div>
	</div>

</body>
</html>