


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
					<a href="" class="active"><span class="las la-igloo"></span><span>Dashboard</span></a>
				</li>
				<li>
					<a href="salespoint.jsp"><span class="las la-list-alt"></span><span>Sales Point</span></a>
				</li>
				<li>
					<a href="stores.jsp"><span class="las la-truck"></span><span>Stores</span></a>
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
				<div class="cards">
					<div class="card-single">
						<div>
							<h1>6</h1>
							<span>Total Number of Parts</span>
						 </div>
						 <div>
							<span class="las la-box-open"></span>
						 </div>
					</div>
					<div class="card-single">
						<div>
							<h1>600</h1>
							<span>Items in Stock</span>
						 </div>
						 <div>
							<span class="las la-exclamation-triangle"></span>
						 </div>
					</div>
					<div class="card-single">
						<div>
							<h1>0</h1>
							<span>Items Purchased</span>
						 </div>
						 <div>
							<span class="las la-shopping-cart"></span>
						 </div>
					</div>
					<div class="card-single">
						<div>
							<h1>0</h1>
							<span>Items Out of Stock</span>
						 </div>
						 <div>
							<span class="las la-wallet"></span>
						 </div>
					</div>
				</div>
				
				
				 <%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
				
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
      
            
            <div class="card-items">
					<div class="card-item-1">
						<!-- <div class=""> -->
							<h1><%= select_query.getString("item_name") %></h1>
							<span>&#8373;<%= select_query.getString("price") %></span>
							<div>
							<h2>Quantity</h2>
							<h3><%= select_query.getString("item_number") %></h3>
							</div>
						<!-- </div> -->
					</div>
				</div>
            
            <% } %>
				
				
				
				
				
				
			</main>
		</div>

	
</body>
</html>