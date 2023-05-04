<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Bilson Shop/Sales Point</title>
	<link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
	<link rel="stylesheet" href="asset/sales.css">
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
					<a href="" class="active"><span class="las la-list-alt"></span><span>Sales Point</span></a>
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
						Sales Point
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
        </div>
        <div class="title">
            <h2>Point Of Sales</h2>
            <div class="cart">
            <i class=" las la-shopping-cart"></i>
            </div>
        </div>
        <!-- Items grid  -->
        <%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.format.DateTimeFormatter" %>
        
        <div class="main-container">
        <main class="grid">
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
            <article>
              <img src="asset/img/brakepadandrotors.jpg" alt="Sample photo">
              <div class="text">
                <h3><%= select_query.getString("item_name") %></h3>
                <h3>&#8373;<%= select_query.getString("price") %></h3>
                <p>Corolla Model 2017</p>
                <button>Add to Cart</button>
              </div>
            </article>
            
            <% } %>
          </main>

          <div class="CartContainer">
            <div class="Header">
                <h3 class="Heading">Shopping Cart</h3>
                <h5 class="Action">Remove all</h5>
            </div>
  
            <div class="Cart-Items">
                  <div class="image-box">
                      <!-- <img src="images/apple.pn" /> -->
                  </div>
                  <div class="about">
                      <h2 class="title-2">Car Shock</h1>
                      <h3 class="subtitle">250ml</h3>
                      <img src="asset/img/carshock.jpg"/>
                  </div>
                  <div class="counter">
                      <div class="btn">+</div>
                      <div class="count">2</div>
                      <div class="btn">-</div>
                  </div>
                  <div class="prices">
                      <div class="amount">$2.99</div>
                      <div class="save"><u>Save for later</u></div>
                      <div class="remove"><u>Remove</u></div>
                  </div>
            </div>
  
            <div class="Cart-Items pad">
                  <div class="image-box">
                      <!-- <img src="assets/img/carbattery.jpg" /> -->
                  </div>
                  <div class="about">
                      <h1 class="title-2">Car Battery</h1>
                      <h3 class="subtitle">250ml</h3>
                      <img src="asset/img/carbattery.jpg" />
                  </div>
                  <div class="counter">
                      <div class="btn">+</div>
                      <div class="count">1</div>
                      <div class="btn">-</div>
                  </div>
                  <div class="prices">
                      <div class="amount">$3.19</div>
                      <div class="save"><u>Save for later</u></div>
                      <div class="remove"><u>Remove</u></div>
                  </div>
            </div>
          <hr> 
          <div class="checkout">
          <div class="total">
              <div>
                  <div class="Subtotal">Sub-Total</div>
                  <div class="items">2 items</div>
              </div>
              <div class="total-amount">$6.18</div>
          </div>
          <button class="button">Checkout</button></div>
     </div>
        </div>
</body>
</html>