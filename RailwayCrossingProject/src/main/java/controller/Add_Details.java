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

@WebServlet("/AddDetails")
public class Add_Details extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("insert into crossingdetails values(?,?,?,?,?,?)");
			ps.setNString(1, request.getParameter("crossingname"));
			ps.setNString(2, request.getParameter("address"));
			ps.setNString(3, request.getParameter("landmark"));
			ps.setNString(4, request.getParameter("time"));
			ps.setNString(5, request.getParameter("personincharge"));
			ps.setNString(6, request.getParameter("flexRadioDefault"));
			
			ps.executeUpdate();
			
			RequestDispatcher rd = request.getRequestDispatcher("manageadmin.jsp");
			rd.forward(request, response);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
