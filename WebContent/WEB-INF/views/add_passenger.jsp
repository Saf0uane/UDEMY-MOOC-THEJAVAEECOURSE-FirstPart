<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Adding Passenger</title>
</head>
<body>

	<div class="container">
		<div class="title">Add a passenger</div>
		<%
			if(request.getAttribute("errors") != null) {
			    
	    %>
			    <fieldset>
			    	<legend>Errors</legend>
			    	<ul>
			    		<% if(request.getAttribute( "firstname_error" ) != null){ %>
			    			<li class = "error"> First name error </li>
			    			
			    		<% } %>
			    		
			    		<% if(request.getAttribute( "lastname_error" ) != null){ %>
			    			<li class = "error"> Last name error </li>
			    			
			    		<% } %>
			    		
			    		<% if(request.getAttribute( "date_format_error" ) != null){ %>
			    			<li class = "error"> Date of birth error </li>
			    			
			    		<% } %>
			    	</ul>
			    </fieldset>
	    <%
			}
		%>
		
		<form action="AddPassenger" method="POST">

			<fieldset>
				<div class="inputfield">

					<label for="firt-name" class="inputLabel">First name :</label> <input
						name="first-name" type="text" value = "<%= request.getAttribute("first_name") %>"/>

				</div>

				<div class="inputfield">

					<label for="last-name" class="inputLabel">Last name :</label> <input
						name="last-name" type="text" value = "<%= request.getAttribute("last_name") %>"/>

				</div>

				<div class="inputfield">

					<label for="dob" class="inputLabel">Date of birth :</label> <input
						name="dob" type="text" value = "<%= request.getAttribute("dob") %>"/>

				</div>

				<div class="inputfield">

					<label for="gender" class="inputLabel">Gender :</label> <select
						name="gender">
						<option value="Male">Male</option>
						<option value="Female">Female</option>
					</select>

				</div>

			</fieldset>

			<div class="inputfield" id="submitfield">
				<input id="submitBtn" type="submit" value="Add new passenger">
			</div>

		</form>
	</div>

</body>
</html>