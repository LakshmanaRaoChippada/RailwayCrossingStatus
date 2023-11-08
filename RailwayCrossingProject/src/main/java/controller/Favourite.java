package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DBConnection;

/**
 * Servlet implementation class Favourite
 */
@WebServlet("/Favourite")
public class Favourite extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection connection = DBConnection.getCon();
		try {
			PreparedStatement ps1 = connection.prepareStatement("select * from crossingdetails where crossingname=?");
			ps1.setString(1, request.getParameter("userfavourite"));
			ResultSet rs = ps1.executeQuery();
			PreparedStatement ps2 = connection.prepareStatement("insert into favourite values(?,?,?,?,?,?)");
			while(rs.next()) {
				ps2.setString(1, rs.getString(1));
				ps2.setString(2, rs.getString(2));
				ps2.setString(3, rs.getString(3));
				ps2.setString(4, rs.getString(4));
				ps2.setString(5, rs.getString(5));
				ps2.setString(6, rs.getString(6));
			}
			ps2.executeUpdate();
			
	        	RequestDispatcher rd = request.getRequestDispatcher("userfavourite.jsp");
	    		rd.forward(request, response);
	        
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
