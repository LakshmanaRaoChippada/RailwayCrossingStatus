<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="dao.DBConnection,java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet" isELIgnored = "false"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Railway Crossing</title>
        <link rel="icon" type="image/ico" href="https://logos-download.com/wp-content/uploads/2019/11/Indian_Railway_Logo_2.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"> 
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
        <style>
            .navbar{
                background-color: black;
                color: white;
            }
            
            .search{
                margin: 0%;
                width: 20%;
                height: 5.8vh;
            }
            
        </style>
        <script>
			function myFunction() {
			  var value = document.getElementById("status");
			  
			  if (value == "Open") {
			    value.className = "btn btn-success";
			  } else {
			    value.className = "btn btn-danger";
			  }
			}
		</script>
		
    </head>
    <body onload="myFunction()">
        <nav class="navbar">
            <div class="container-fluid">
                <h1>User HomePage</h1>
                <tr>
                	<td>Hi Lakshman</td><br>
                </tr>
                <tr>
                	<td><%= java.util.Calendar.getInstance().getTime() %></td>
                </tr>
                <a href="index.jsp"><input type="submit" value="Logout" class="btn btn-secondary" ></a>
            </div>
        </nav>
        <nav class="menu">
            <div>
                <a href="userhomepage.jsp"><input type="submit" value="All" class="btn btn-secondary"></a>
                <a href="userfavourite.jsp"><input type="submit" value="Favourate Crossing" class="btn btn-secondary"></a>               
                <form method="post">
                	<input type="search" placeholder="Search..." name="crossingname" class="search"/>
                	<input type="submit" value="Go">    
                </form>           
            </div>
        </nav>
        <% Connection con = DBConnection.getCon(); %>
		<% PreparedStatement ps1 = con.prepareStatement("select * from crossingdetails"); %>	
		<% ResultSet rs1 = ps1.executeQuery(); %>
		<% PreparedStatement ps2 = con.prepareStatement("select * from crossingdetails where crossingname=?"); %>
		<% ps2.setString(1, request.getParameter("crossingname")); %>	
		<% ResultSet rs2 = ps2.executeQuery(); %>
		<% if(rs2.next()){ %>	
				<div class="card">
		  			<div class="card-body">
			    		<h5 class="card-title"><%= rs2.getString(1)%></h5>
			    		<p class="card-text">Crossing Status : <span class="btn btn-success" id="status"> <%= rs2.getString(6)%> </span></p>
			    		<p class="card-text">Person In-Charge : <%= rs2.getString(5)%></p>
			    		<p class="card-text">Train Schedule : <%= rs2.getString(4)%></p>
			    		<p class="card-text">Landmark : <%= rs2.getString(3)%></p>
			    		<p class="card-text">Address : <%= rs2.getString(2)%></p>
						<form action="Favourite">
							<input type="text" value=<%= rs2.getString("crossingname") %> name="userfavourite" hidden=hidden/>
			    			<button class="btn btn-outline-primary" type="submit" >Add to Favourite</button>
			    		</form>		  			
			    	</div>
				</div>
		<% }else{%>
			<% while(rs1.next()){ %>
				<div class="card">
		  			<div class="card-body">
			    		<h5 class="card-title"><%= rs1.getString(1)%></h5>
			    		<p class="card-text">Crossing Status : <span class="btn btn-success" id="status"> <%= rs1.getString(6)%> </span></p>
			    		<p class="card-text">Person In-Charge : <%= rs1.getString(5)%></p>
			    		<p class="card-text">Train Schedule : <%= rs1.getString(4)%></p>
			    		<p class="card-text">Landmark : <%= rs1.getString(3)%></p>
			    		<p class="card-text">Address : <%= rs1.getString(2)%></p>
						<form action="Favourite">
							<input type="text" value=<%= rs1.getString("crossingname") %> name="userfavourite" hidden=hidden/>
			    			<button class="btn btn-outline-primary" type="submit" >Add to Favourite</button>
			    		</form>		  			
			    	</div>
				</div>
				<%} %>	
		<%} %>
		
    </body>
</html>