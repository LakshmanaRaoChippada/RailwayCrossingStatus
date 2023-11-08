package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.DBConnection;


@WebServlet("/UpdateDetails")
public class UpdateDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Connection connection = DBConnection.getCon();
			PreparedStatement ps = connection.prepareStatement("update crossingdetails set address=?,landmark=?,schedule=?,status=?,personincharge=? where crossingname=?");
			ps.setString(1, request.getParameter("address"));
			ps.setString(2, request.getParameter("landmark"));
			ps.setString(3, request.getParameter("schedule"));
			ps.setString(4, request.getParameter("flexRadioDefault"));
			ps.setString(5, request.getParameter("personincharge"));
			ps.setString(6, request.getParameter("crossingname"));
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		response.sendRedirect("manageadmin.jsp");
	}

}
