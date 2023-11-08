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
 * Servlet implementation class ManageAdmin
 */
@WebServlet("/ManageAdmin")
public class ManageAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Connection connection = DBConnection.getCon();
		try {
			PreparedStatement ps = connection.prepareStatement("delete from crossingdetails where personincharge=?");
			ps.setNString(1, request.getParameter("manageadmin"));
			ps.executeUpdate();
			
			RequestDispatcher rd = request.getRequestDispatcher("manageadmin.jsp");
    		rd.forward(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
