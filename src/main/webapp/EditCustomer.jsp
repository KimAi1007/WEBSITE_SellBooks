<%@ page import="Connection.DbCon"%>
<%@ page import="Model.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!Doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<div class="container col-md-5">
		<form action="UpdateCustomer" method="post">
			<div class="card">
				<div class="card-body">
					<h2>Edit Customer</h2>
					
					<fieldset class="form-group">
						<label>Id</label> <input value="${customerEdit.id}" type="text"
							class="form-control" name="id" required="required" readonly>
					</fieldset>

					<fieldset class="form-group">
						<label>Firstname</label> <input value="${customerEdit.firstname}" type="text"
							class="form-control" name="firstname" required="required" readonly>
					</fieldset>
					
					<fieldset class="form-group">
						<label>Lastname</label> <input value="${customerEdit.lastname}" type="text"
							class="form-control" name="lastname" readonly="readonly" >
					</fieldset>

					<fieldset class="form-group">
						<label>Admin</label> <input value="${customerEdit.isAdmin}" type="text"
							class="form-control" name="isAdmin" required="required">
					</fieldset>
					
					<fieldset class="form-group">
						<label>Customer</label> <input value="${customerEdit.isCustomer}" type="text"
							class="form-control" name="isCustomer" required="required">
					</fieldset>

					<button type="submit" class="btn btn-success">Save</button>

				</div>
			</div>
		</form>
	</div>
</body>
</html>

