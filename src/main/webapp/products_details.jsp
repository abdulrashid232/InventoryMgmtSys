<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>





<!DOCTYPE html>
<html lang="en">

<head>
	<style type="text/css">
		thead {
			background-color: #0095FF !important;
			

		}
		tr:nth-child(even){
			background-color:#404040;
		}
		
		.fa-edit{
			height:13px !important;
		}
		
		.fa-trash{
			height:13px !important;
		}
		
		
	</style>

	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>


	<!-- ASSETS -->
	<!-- ASSETS -->
	<link rel="stylesheet" href="css/nav.css">
	<script src="./assets/chart.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="css/customers.css">
	<link rel="stylesheet" href="css/admin_dashboard.css">
	<link rel="stylesheet" href="./assets/all.css">
	<link rel="stylesheet" href="./assets/bootstrap.css">
	<script src="./assets/tailwind.js"></script>
	<link rel="stylesheet" href="./assets/fonts/fonts.css">
	
	
  

</head>

<body class="dark:bg-gray-800" style="font-family:poppins;" >
	

 	 	<!-- including navigation bar -->
		<!-- including navigation bar -->
						
						
	<div class="pageContent ">
	
		<div class="topnav pt-3 dark:bg-gray-600 "> 
             <h5 class="text-white">AUTO SHOP</h5>
                     <div class="d-flex text-white" style="margin-top:-30px;">
                            <div class="admin-image ml-auto">
                                <img class="admin-image" alt="" src="images/IMG-20210215-WA0080~2.jpg">
                              </div>
                                <p class="ml-2 mt-2">Admin</p>
                      </div>
          </div>
	
		<div class="p-4 mb-4 ml-4 ">
			<div class="d-flex">
				<h4 class="text-white mt-3">
					 Product Details
				</h4>
				<a href="add_products.jsp">
					<button class="btn btn-primary ml-4"><i class="fa fa-plus"></i></button>
				</a>
				 
			</div>
			<hr>
		</div>
		
		
		<div class="containe">
			<table class="table table-striped" >
				<thead>
					<tr style="height:8px !important">
						<th class="text-white "> ID</th>
						<th class="text-white "> Name</th>
						<th class="text-white ">Manufacturer</th>
						<th class="text-white "> Model</th>
						<th class="text-white "> Category</th>
						<th class="text-white ">Price</th>
						<th class="text-white ">Quantity</th>
						<th class="text-white "> Amount</th>
						<th class="text-white ">Date/Time</th>
						<th class="text-white ">Action</th>
					</tr>
				</thead>
				
				<tbody>
				<%
					//database connection
					//database connection
					//database connection
        	//database connection
            Class.forName("org.postgresql.Driver");
            Connection conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "root");
			
            //Creating statement
            //Creating statement
            Statement statement = conn.createStatement();
            ResultSet select_query= statement.executeQuery("SELECT * FROM products");
            
           
            while(select_query.next()){
				%>
				 
					<tr class="text-white" style="height: 8px !important;">
						<td><%= select_query.getString("id") %></td>
						<td><%= select_query.getString("P_Name") %></td>
						<td><%= select_query.getString("P_Manufacturer") %></td>
						<td><%= select_query.getString("P_Y_Model") %></td>
						<td><%= select_query.getString("P_Category") %></td>
						<td><%= select_query.getString("P_Price") %></td>
						<td><%= select_query.getString("P_Quantity") %></td>
						<td><%= select_query.getString("p_t_amount") %></td>
						
						<td class="d-flex">
						<button style="background-color:#0095FF; border:1px solid #0095FF;" class="rounded text-white h-7 w-7"><i class="fa fa-edit "></i></button>
						<button style="background-color:red; border:1px solid red;" class="ml-2 rounded text-white h-7 w-7"><i class="fa fa-trash"></i></button></td>
						
					</tr>
				<% 
            }
            %>
				</tbody>
			</table>
		</div>
	</div>

	<!-- SCRIPTS -->
	<!-- SCRIPTS -->
	<script src="./assets/jquery-3.6.0.min.js"></script>
	<script src="./assets/bootstrap.js"></script>
	<script src="./assets/all.js"></script>
	<script type="chart.min.js"></script>
</body>

</html>