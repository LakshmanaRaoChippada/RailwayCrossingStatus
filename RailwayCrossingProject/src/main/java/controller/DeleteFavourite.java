package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DBConnection;

/**
 * Servlet implementation class DeleteFavourite
 */
@WebServlet("/DeleteFavourite")
public class DeleteFavourite extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection connection = DBConnection.getCon();
		try {
			PreparedStatement ps = connection.prepareStatement("delete from favourite where personincharge=?");
			ps.setString(1,request.getParameter("deletefavourite"));
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
				
        	RequestDispatcher rd = request.getRequestDispatcher("userfavourite.jsp");
    		rd.forward(request, response);
		
	}

}
