<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*"  %>
    
    
<% 
if(request.getParameter("submit") != null){
	//etrieving data fro the login form
	String Email =request.getParameter("email");
	String Password =request.getParameter("password");

	try{
		Class.forName("com.mysql.jdbc.Driver");
    	Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory_mgnt_sys", "root", "");
		// creating statement
		Statement stmt1 = conn.createStatement();
		ResultSet admin_login =stmt1.executeQuery("SELECT * FROM login WHERE email='"+Email+"' AND password='"+Password+"'");
			if(admin_login.next()){
				response.sendRedirect("dashboard.jsp");
			}else{
				%>
				<script type="text/javascript">
					alert("Invalid email or password");
				</script>
				<%
			}
		
		
	}catch(Exception e){
		out.print(e);
	}
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Webpage Design</title>
    <link rel="stylesheet" href="asset/login.css">
    <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>
<body>

    <div class="main">
        <div class="navbar">
            <div class="icon">
                <h2 class="logo"><span class="lab la-accusoft"></span>BilSon <span id="auto">Auto</span></h2>
            </div>

            <!-- <div class="menu">
                <ul>
                    <li><a href="#">HOME</a></li>
                    <li><a href="#">ABOUT</a></li>
                    <li><a href="#">SERVICE</a></li>
                    <li><a href="#">DESIGN</a></li>
                    <li><a href="#">CONTACT</a></li>
                </ul>
            </div> -->

           

        </div> 
        <div class="content">
           
               <form method="post" action="login.jsp">
                   <h2>Admin Login</h2>
                    <input type="email" name="email" placeholder="Enter Email Here" value="" required >
                    <input type="password" name="password" placeholder="Enter Password Here" value="" required>
                    
          
                    <button class="btnn" type="submit" name="submit"><a href="#">Login</a></button>

                    <p class="link">Forgot Password?<br>
                    <a href="#">Click</a> here</a></p>
               </form>
                    </div>
                </div>
        </div>
    </div>
    <script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
</body>
</html>
