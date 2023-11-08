<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="dao.DBConnection,java.sql.Connection,java.sql.PreparedStatement,java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Railway Crossing</title>
        <link rel="icon" type="image/ico" href="https://logos-download.com/wp-content/uploads/2019/11/Indian_Railway_Logo_2.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> 
        <style>
            .menu{  
                background-color: aqua;
                width: 35%;
                border-radius: 3%;
                height: 600px;
                margin-left: 35%;
            }
            #lucky{
                width: 85%;
                margin-left: 10px;
            }
            .menu label{
                margin-left: 10px;
            }
        </style>
    </head>

    <body>
       
    	<% Connection con = DBConnection.getCon(); %>
		<% PreparedStatement ps = con.prepareStatement("select * from crossingdetails where crossingname=?"); %>
		<% ps.setString(1, request.getParameter("updateadmin")); %>	
		<% ResultSet rs = ps.executeQuery(); %>
		<form method="post" action="UpdateDetails">
		<% while(rs.next()){%>
        <div class="menu">
            <h1 style="margin-top: 5px; text-align: center;">Railway Crossing</h1>    
            <label>Enter Crossing Name : </label><br>
            <input type="text" placeholder="Enter Railway Crossing Name..." name="crossingname" required id="lucky" value=<%= rs.getString("crossingname") %> disabled><br><br>
            <label>Address : </label><br>
            <input type="text" placeholder="Enter Crossing Address" name="address" required id="lucky" value=<%= rs.getString("address") %>><br><br>
            <label>Landmark : </label><br>
            <input type="text" placeholder="Enter Landmark" name="landmark" required id="lucky" value=<%= rs.getString("landmark") %>><br><br>
            <label>Train schedule : </label><br>
            <input type="text" placeholder="Enter Train Timmings" name="schedule" required id="lucky" value=<%= rs.getString("schedule") %>><br><br>
            <label>Person In-Charge : </label><br>
            <input type="text" placeholder="Enter Person Name" name="personincharge" required id="lucky" value=<%= rs.getString("personincharge") %>><br><br>
            <label>Crossing Status : </label>
            <div style="margin-left: 10px;">
                <div class="form-check">
                    <input class="form-check-input"  type="radio" value="Open" name="flexRadioDefault">Open                
                </div>
                <div class="form-check">
                    <input class="form-check-input"  type="radio" value="Close" name="flexRadioDefault" checked>Close
                </div>
            </div><br>
            <input type="submit" value="Submit" style="width: 48%; margin-left:5px;" class="btn btn-success">
            <input type="reset" value="Cancel" style="width: 48%;" class="btn btn-success">
        </div>
        <%} %>
        </form>
    </body>
</html>