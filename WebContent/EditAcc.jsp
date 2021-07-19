<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="GiaoDien.css" rel="stylesheet" type="text/css"/>
<%if (request.getAttribute("message") != null) {%>
<% String message = (String)request.getAttribute("alertMsg");%>
<script type="text/javascript">
    var msg = "<%=message%>";
    alert(msg);
</script>
<%} %>
</head>
<body>
<%
            
            String name=(String)session.getAttribute("username");
			boolean check = (boolean) request.getAttribute("check");
        %>
	<jsp:include page="Newheader.jsp"></jsp:include>
	<div class="row">
 				<div class="col-md-4"><!-- left -->
 						<div class="list-group"><!-- products -->
						  <a href="Controller?page=MyAccount&username=<%= name %>" class="list-group-item" style="background:  #d6d4d3;">
						    Edit Information
						  </a>
						  <a href="Controller?page=edit-Account" class="list-group-item">Edit Account</a>
						  <a href="Controller?page=showcart" class="list-group-item">Show My Card</a>
						  
						</div> 
 				</div><!-- left -->
	<div class="signup-header">
	 	<h2>Edit Information with HoaCo</h2>
	 </div>
	<%
		if(check==false){
	%>
		 <form method="post" action="Controller">
		 
		 <input type="hidden" name="page" value="Check_Infor">
		 
		 	<!-- Validations errors -->
		 	<font color="#F24638"><c:out value="${msg }"></c:out></font> 	 	
		 	<div class="signup-group">
		 		<label>Username</label>
		 		<input type="text" name="username" placeholder="Username" value=<%=name %> required>
		 	</div>
		 	<div class="signup-group">
		 		<label>Passowrd</label>
		 		<input type="password" name="password" placeholder="Re-enter password" required>
		 	</div>
		 	<div class="signup-group">
		 		<button type="submit" name="register" class="signup-btn">Check</button>
		 	</div>
		 	</form>
		 	<%} else { %>
		 	
			 <form method="post" action="Controller">
			 
			 <input type="hidden" name="page" value="edit_Infor">
			 <font color="#F24638"><c:out value="${msg }"></c:out></font> 
				 <div class="signup-group">
			 		<label>Username</label>
			 		<input type="text" name="username" placeholder="Username" value=<%=name %> required>
			 	</div>
			 	<div class="signup-group">
			 		<label>New Passowrd</label>
			 		<input type="password" name="password_1" placeholder="Re-enter password" required>
			 	</div>
			 	<div class="signup-group">
			 		<label>Confirm Passowrd</label>
			 		<input type="password" name="password_2" placeholder="Re-enter password" required>
			 	</div>
			 	<div class="signup-group">
			 		<button type="submit" name="register" class="signup-btn">Done</button>
			 	</div>
			 	<p>
			 		Already have an account? <a href="Controller?page=login" style="color:#F24638;">Login!</a>
			 	</p>
			 </form>
			 <%} %>
</body>
</html>