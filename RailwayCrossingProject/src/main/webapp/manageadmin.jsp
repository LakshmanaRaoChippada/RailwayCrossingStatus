<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="dao.DBConnection,java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Railway Crossing</title>
        <link rel="icon" type="image/ico" href="https://logos-download.com/wp-content/uploads/2019/11/Indian_Railway_Logo_2.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"> 
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
            th, td {
		      border-bottom: 1px solid;
		    }
		    table, th, td {
		      border-collapse: collapse;
		      padding: 10px;
		    }
        </style>
        
    </head>
    <body>   
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
        <div>
            <a href="adminhomepage.jsp"><input type="submit" value="Home" class="btn btn-secondary"></a>
            <a href="add_details.jsp"><input type="submit" value="Add Railway Crossing" class="btn btn-secondary"></a>
            <input type="text" placeholder="Search..." class="search"/>
            <input type="submit" value="Go"> 
        </div>
        <br>
        <table style="width:100%">
        	<thead>
        		<tr>
        			<th>Sr.No</th>
        			<th>Crossing Name</th>
        			<th>Address</th>
        			<th>Landmark</th>
        			<th>Train Schedule</th>
        			<th>Person In-Charge</th>
        			<th>Status</th>
        			<th>Action</th>
        		</tr>
        	</thead>        	
        <% Connection con = DBConnection.getCon(); %>
		<% PreparedStatement ps = con.prepareStatement("select * from crossingdetails"); %>	
		<% ResultSet rs = ps.executeQuery(); %>
		<% int i=1; %>
		<% while(rs.next()){%>
        	<tbody>
        		<tr>
        			<td><%= i %></td>
        			<td><%= rs.getString(1)%></td>
        			<td><%= rs.getString(2)%></td>
        			<td><%= rs.getString(3)%></td>
        			<td><%= rs.getString(4)%></td>
        			<td><%= rs.getString(5)%></td>
        			<td><%= rs.getString(6)%></td>
        			<td>
        			<form action="updateadmin.jsp">
        			    <input type="text" value=<%= rs.getString("crossingname") %> name="updateadmin" hidden=hidden/>
        				<input type="submit" value="Update" class="btn btn-outline-primary">
        			</form>
        			<form action="ManageAdmin">
        				<input type="text" value=<%= rs.getString("personincharge") %> name="manageadmin" hidden=hidden/>
        				<input type="submit" value="Delete" class="btn btn-outline-primary">
        			</form>
        			</td>
        		</tr>
        		<% i++; %>
        	</tbody>
        <%} %>
        </table>
    </body>
</html>