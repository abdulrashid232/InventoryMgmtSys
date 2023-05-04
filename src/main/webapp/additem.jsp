<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Bilson Shop Admin</title>
	<link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
	<link rel="stylesheet" href="asset/style.css">
</head>
<body> 
	<div class="sidebar">
		<div class="sidebar-brand">
			<h2 class="logo"><span class="lab la-accusoft"></span>BilSon <span id="auto">Auto</span></h2>
		</div>

		<div class="sidebar-menu">
			<ul>
				<li>
					<a href="dashboard.jsp" class=""><span class="las la-igloo"></span><span>Dashboard</span></a>
				</li>
				<li>
					<a href="salespoint.jsp"><span class="las la-list-alt"></span><span>Sales Point</span></a>
				</li>
				<li>
					<a href="stores.jsp"><span class="las la-truck"></span><span>Stores</span></a>
				</li>
				<li>
					<a href="additem.jsp" class="active"><span class="las la-truck"></span><span>Add Item</span></a>
				</li>
				<!-- <li>
					<a href=""><span class="las la-wallet"></span><span>Account</span></a>
				</li> -->
				<li>
					<a href="login.jsp"><span class="las la-power-off"></span><span>Logout</span></a>
				</li>
			</ul>
		</div>
	</div>	

		<div class="main-content">
			<header>
					<h2>
						<!-- <label for="">
							<span class="las la-bars"></span>
						</label>
	 -->
						Dashboard
					</h2>

					<div class="search-wrapper">
						<span class="las la-search"></span>
						<input type="search" placeholder="Search here">
					</div>

					<div class="user-wrapper">
						<a class = "notification"><span class = "las la-bell"></span></a>
						<img src="./asset/img/midas-hofstra-a6PMA5JEmWE-unsplash.jpg" width="40px"; height="40px"; alt="">
						<div>
						
							<h4>Joe Bilson</h4>
							<small>Super Admin</small>
						</div>
					</div>
			</header>

			<main>
				<form>
					<div class="container p-4">

						<div>
							<h4 class="text-white ml-4">Add New Item</h4>
						</div>
						<hr>

						<div class="row p-4">
							<div class="col-sm-6">

								<label class="text-white">Item Name</label><br>
								<input class="product_input" type="text" name="itemname" required><br><br>

								<label class="text-white">Item Code</label><br>
								<input class="product_input" type="text"name="itemcode" required><br><br>
								
								<label class="text-white">Number of Items</label><br>
								<input class="product_input" type="text"name="itemnumber" required><br><br>
								<label class="text-white">Price</label><br>
								<input class="product_input" type="text"name="price" required><br><br>
							</div>

							<div class="ml-auto mr-auto mt-4">
								<input class="btn btn-primary submit bg-blue-600" value="Add Product" type="submit" name="submit">
							</div>
						</div>
					</div>
				</form>
				
				
				
				
			</main>
		</div>

	
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
    String Iname = request.getParameter("itemname");
    String Icode = request.getParameter("itemcode");
    String Inumber = request.getParameter("itemnumber");
    String price = request.getParameter("price");
       
       if(request.getParameter("submit") != null){
    	   try {
           	//database connection
           	//database connection
				Class.forName("com.mysql.jdbc.Driver");
		    	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_mgnt_sys", "root", "");
               
               //creating sql statement
               //creating sql statement
               Statement statement = conn.createStatement();
               int insert_query = statement.executeUpdate("INSERT INTO products(item_name,item_code, item_number,price) VALUES ('"+Iname+"', '"+Icode+"', '"+Inumber+"', '"+price+"')");
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