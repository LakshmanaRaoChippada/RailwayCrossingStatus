<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="dao.DBConnection,java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Railway Crossing</title>
        <link rel="icon" type="image/ico" href="https://logos-download.com/wp-content/uploads/2019/11/Indian_Railway_Logo_2.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> 
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
			  const value = document.getElementById("status").innerHTML.toLowerCase();
			  const element = document.getElementById("status");
			  if (value == "open") {
			    element.className = "btn btn-success";
			  } else {
			    element.className = "btn btn-danger";
			  }
			}
		</script>       
    </head>
	<body onload="myFunction()">
		<nav class="navbar">
            <div class="container-fluid">
                <h1>Admin HomePage</h1>
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
                <a href="adminhomepage.jsp"><input type="submit" value="All" class="btn btn-secondary"></a>
                <a href="adminfavourite.jsp"><input type="submit" value="Your Favourate Crossing" class="btn btn-secondary"></a>
            </div>
        </nav>
        <% Connection con = DBConnection.getCon(); %>
		<% PreparedStatement ps = con.prepareStatement("select * from adminfavourite"); %>
		<% ResultSet rs = ps.executeQuery(); %> 
		<% while(rs.next()){ %>
			<div class="card">
	  		<div class="card-body">
	    		<h5 class="card-title"><%= rs.getString(1)%></h5>
	    		<p class="card-text">Crossing Status : <span class="btn btn-success" id="status"> <%= rs.getString(6)%> </span></p>
	    		<p class="card-text">Person In-Charge : <%= rs.getString(5)%></p>
	    		<p class="card-text">Train Schedule : <%= rs.getString(4)%></p>
	    		<p class="card-text">Landmark : <%= rs.getString(3)%></p>
	    		<p class="card-text">Address : <%= rs.getString(2)%></p>
				<form action="AdminDelete">
					<input type="text" value=<%= rs.getString("personincharge") %> name="deletefavourite" hidden=hidden/>
			    	<button class="btn btn-outline-primary" type="submit" >Remove Favourite</button>
			    </form>		  		
			   </div>
		</div>
		<%} %>
	</body>
</html>