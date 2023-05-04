<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>


	<!-- ASSETS -->
	<!-- ASSETS -->
	<link rel="stylesheet" href="css/nav.css">
	<link rel="stylesheet" href="css/add_product.css">
	<link rel="stylesheet" href="css/admin_dashboard.css">
	<link rel="stylesheet" href="./assets/all.css">
	<link rel="stylesheet" href="./assets/bootstrap.css">
	 <link rel="stylesheet" href="./assets/fonts/fonts.css">
	 <script src="./assets/tailwind.js"></script>
	 
	

</head>

<body style="font-family:poppins;" class="dark:bg-gray-800">
	
	<!-- including navigation bar -->
		<!-- including navigation bar -->

						
					
		
	  	<div class="pageContent">
	  	
	  	<div class="topnav pt-3 dark:bg-gray-600">
             <h5 class="text-white">AUTO SHOP</h5>
                  <div class="d-flex text-white" style="margin-top:-30px;">
                        <div class="admin-image ml-auto">
                              <img class="admin-image" alt="" src="images/IMG-20210215-WA0080~2.jpg">
                         </div>
                          	<p class="ml-2 mt-2">Admin</p>
                   </div>
       	</div>

	  	
		<form>
			<div class="container p-4">

				<div>
					<h4 class="text-white ml-4">Add New Employee</h4>
				</div>
				<hr>

				<div class="row p-4">
					<div class="col-sm-6">

						<label class="text-white">First Name</label><br>
						<input class="product_input" type="text" name="EFname" required><br><br>

						<label class="text-white">Last Name</label><br>
						<input class="product_input" type="text"name="ELname" required><br><br>
						
						<label class="text-white">Gender</label><br>
						<select class="product_input" name="Egender">
							<option>Male</option>
							<option>Female</option>
						</select><br><br>
					</div>



					<div class="col-sm-6">

						<label class="text-white">Phone</label><br>
						<input class="product_input" type="number" name="Ephone" required><br><br>

						<label class="text-white">Email</label><br>
						<input class="product_input" type="email" name="Eemail" required><br><br>

						<label class="text-white">Role</label><br>
						<input class="product_input" type="text" name="Erole" required><br><br>
					</div>

					<div class="ml-auto mr-auto mt-4">
						<input class="btn btn-primary submit bg-blue-600" value="Add Customer" type="submit" name="submit">
					</div>
				</div>
			</div>
		</form>
	</div>








	<!-- SCRIPTS -->
	<!-- SCRIPTS -->
	<script src="./assets/jquery-3.6.0.min.js"></script>
	<script src="./assets/bootstrap.js"></script>
	<script src="./assets/all.js"></script>
	<script type="chart.min.js"></script>
</body>

</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>

<%
	//retrieving data from the input field
	//retrieving data from the input field
    String EFname = request.getParameter("EFname");
    String ELname = request.getParameter("ELname");
    String Egender = request.getParameter("Egender");
    String Ephone = request.getParameter("Ephone");
    String Eemail =request.getParameter("Eemail");
    String Erole = request.getParameter("Erole");
    
    LocalDateTime currentTime = LocalDateTime.now();
   	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
    String formattedDateTime = currentTime.format(formatter);

       if(request.getParameter("submit") != null){
    	   try {
           	//database connection
           	//database connection
               Class.forName("org.postgresql.Driver");
               Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "root");
               
               //creating sql statement
               //creating sql statement
               Statement statement = conn.createStatement();
               int insert_query = statement.executeUpdate("INSERT INTO employees(E_F_Name,E_L_Name, E_Gender,E_Phone,E_Email,E_Role,Date) VALUES ('"+EFname+"', '"+ELname+"', '"+Egender+"', '"+Ephone+"', '"+Eemail+"', '"+Erole+"', '"+ formattedDateTime +"')");
               if(insert_query>0) {
                  %>
                  		<script>
   						alert("Product has been added successfully");
   					</script>
                  <% 
               } else {
               	 %>
               		<script>
   						alert("Product has been added successfully");
   					</script>
               	<% 
               }
               conn.close();
           } catch (Exception e) {
               out.println("Error: " + e);
           }
       }

%>