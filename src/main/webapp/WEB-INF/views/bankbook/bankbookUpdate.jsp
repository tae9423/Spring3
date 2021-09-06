<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
<c:import url="../temp/boot_head.jsp"></c:import>
</head>
<c:import url="../temp/boot_nav.jsp"></c:import>
<body>
	<h1>Update Page</h1>

	<div class="container-fluid">
		<form class="col-md-5 mx-auto" action="./bankbookUpdate" method="post">
			<input type="text" readonly="readonly" value="${dtov.bookNumber}" name="bookNumber">
			<div class="mb-3">
				<label for="bookName" class="form-label">Book Name</label> <input
					type="text" class="form-control" value="${dtov.bookName}"
					name="bookName" id="bookName" placeholder="Enter BookName">
			</div>
			<div class="mb-3">
				<label for="bookRate" class="form-label">Book Rate</label> <input
					type="text" class="form-control" value="${dtov.bookRate}"
					name="bookRate" id="bookRate" placeholder="0.00">
			</div>

			<c:choose>
				<c:when test="${dtov.bookSale eq 1}">
					<div class="form-check">
						<input class="form-check-input" type="radio" name="bookSale"
							value="1" id="flexRadioDefault1" checked="checked"> <label
							class="form-check-label" for="bookSale"> sale </label>
					</div>

					<div class="form-check">
						<input class="form-check-input" type="radio" name="bookSale"
							value="0" id="flexRadioDefault2"> <label
							class="form-check-label" for="bookSale"> not sale </label>
					</div>
				</c:when>
				<c:otherwise>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="bookSale"
							value="1" id="flexRadioDefault1"> <label
							class="form-check-label" for="bookSale"> sale </label>
					</div>

					<div class="form-check">
						<input class="form-check-input" type="radio" name="bookSale"
							value="0" id="flexRadioDefault2" checked="checked"> <label
							class="form-check-label" for="bookSale"> not sale </label>
					</div>
				</c:otherwise>

			</c:choose>

			<%-- <c:if test="${dtov.bookSale eq 1}">
			<div class="form-check">
				<input class="form-check-input" type="radio" name="bookSale"
					value="1" id="flexRadioDefault1" checked="checked"> <label
					class="form-check-label" for="bookSale"> sale </label>
			</div>
				
			<div class="form-check">
				<input class="form-check-input" type="radio" name="bookSale"
					value="0" id="flexRadioDefault2" > <label
					class="form-check-label" for="bookSale"> not sale </label>
			</div>
			
			</c:if>
			
			<c:if test="${dtov.bookSale eq 0}">
			<div class="form-check">
				<input class="form-check-input" type="radio" name="bookSale"
					value="1" id="flexRadioDefault1"> <label
					class="form-check-label" for="bookSale"> sale </label>
			</div>
				
			<div class="form-check">
				<input class="form-check-input" type="radio" name="bookSale"
					value="0" id="flexRadioDefault2" checked="checked"> <label
					class="form-check-label" for="bookSale"> not sale </label>
			</div>
			
			</c:if> --%>
			<div class="mt-3 ml-0">
				<button type="submit" class="btn btn-success">Update</button>
			</div>
		</form>
	</div>

</body>
</html>