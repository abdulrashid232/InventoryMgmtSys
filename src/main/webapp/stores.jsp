<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Bilson Shop Admin</title>
	<link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
	<link rel="stylesheet" href="./asset/stores.css">
	<!-- ASSETS -->
	<!-- ASSETS -->
	<script src="./assets/chart.min.js" type="text/javascript"></script>
	<link rel="stylesheet" href="css/customers.css">
	<link rel="stylesheet" href="css/admin_dashboard.css">
	<link rel="stylesheet" href="./asset/bootstrap.css">
	<link rel="stylesheet" href="./asset/all.css">
	
	<style type="text/css">
		thead {
			background-color: #0095FF !important;	
		}
	</style>
</head>
<body> 
	<div class="sidebar">
		<div class="sidebar-brand">
			<h2 class="logo"><span class="lab la-accusoft"></span>BilSon <span id="auto">Auto</span></h2>
		</div>

		<div class="sidebar-menu">
			<ul>
				<li>
					<a href="dashboard.jsp" ><span class="las la-igloo"></span><span>Dashboard</span></a>
				</li>
				<li>
					<a href="salespoint.jsp"><span class="las la-list-alt"></span><span>Sales Point</span></a>
				</li>
				<li>
					<a href="stores.jsp"class="active"><span class="las la-truck"></span><span>Stores</span></a>
				</li>
				
				<li>
					<a href="login.html"><span class="las la-power-off"></span><span>Logout</span></a>
				</li>
			</ul>
		</div>
	</div>	

		<div class="main-content">
			<header>
					<h2>
						<label for="">
							<span class="las la-bars"></span>
						</label>
	
						Stores
					</h2>

					
					<!--  <div class="user-wrapper">
						<img src="./asset/img/midas-hofstra-a6PMA5JEmWE-unsplash.jpg" width="40px"; height="40px"; alt="">
						<div>
							<h4>Joe Bilson</h4>
							<small>Super Admin</small>
						</div>
					</div>-->
			</header>

			<main>
				<div class="recent-grid">
					<div class="projects">
						<div class="card-header">
							<h2>ITEMS</h2>

							
						</div>
						
						<div class="card-body">
<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>


		
		<div class="containe">
			<table class="table table-striped" >
				<thead>
					<tr style="height:8px !important">
						<th class="text-white "> ID</th>
						<th class="text-white "> Item Name</th>
						<th class="text-white ">Item Code</th>
						<th class="text-white "> Number of Items</th>
						<th class="text-white "> Price</th>
						<th class="text-white ">Action</th>
					</tr>
				</thead>
				
				<tbody>
				
				
				
				<%
					//database connection
					//database connection
					//database connection
        	//database connection
           	Class.forName("com.mysql.jdbc.Driver");
    	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_mgnt_sys", "root", "");
			
            //Creating statement
            //Creating statement
            Statement statement = conn.createStatement();
            ResultSet select_query= statement.executeQuery("SELECT * FROM products");
            
           
            while(select_query.next()){
				%>
				 
					<tr class="text-white" style="height: 8px !important;">
						<td><%= select_query.getString("ID") %></td>
						<td><%= select_query.getString("item_name") %></td>
						<td><%= select_query.getString("item_code") %></td>
						<td><%= select_query.getString("item_number") %></td>
						<td><%= select_query.getString("price") %></td>
						<td class="d-flex">
						<button style="background-color:#0095FF; border:1px solid #0095FF;" class="rounded text-white h-7 w-7 p-1"><i class="fa fa-edit "></i></button>
						<button style="background-color:red; border:1px solid red;" class="ml-2 rounded text-white h-7 w-7 p-1" name="delete"><i class="fa fa-trash" ></i></button></td>
						
					</tr>
				<% 
            }
            %>
            
            
            <% 
             String Iname = request.getParameter("itemname");
    String Icode = request.getParameter("itemcode");
    String Inumber = request.getParameter("itemnumber");
    String price = request.getParameter("price");
       
       if(request.getParameter("delete") != null){
    	   try {
           	//database connection
           	//database connection
				
               
               //creating sql statement
               //creating sql statement
                Statement delete = conn.createStatement();
               int delete_query = delete.executeUpdate("DELETE FROM products WHERE itemcode = "+Icode+"");
                 
           		if(delete_query>0) {
                  %>
                  		<script>
   						alert("Product has been added deleted" );
   					</script>
                  <% 
               } else {
               	 %>
               		<script>
   						alert("Product has been added deleted");
   					</script>
               	<% 
               }
               conn.close();
           } catch (Exception e) {
               out.println("Error: " + e);
           }
       }

%>
				</tbody>
			</table>
		</div>
	</div>

	<!-- SCRIPTS -->
	<!-- SCRIPTS -->
	<script src="./asset/jquery-3.6.0.min.js"></script>
	<script src="./asset/bootstrap.js"></script>
	<script src="./asset/all.js"></script>
	

					</div>
					</div>
					<div class="grid-button">
						<a href="additem.jsp"><button>Add Product<span class="las la-arrow-right"></span></button></a>
						<!-- <button>Update <span class="las la-arrow-right"></span></button> -->
					</div>
				<!-- </div> -->
				
				
				
			
			</main>
		</div>
	</div>
	
</body>
</html>