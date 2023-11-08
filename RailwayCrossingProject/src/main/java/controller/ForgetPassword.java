package controller;

import java.io.IOException;
import java.io.PrintWriter;
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

@WebServlet("/ForgetPassword")
public class ForgetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Connection connection = DBConnection.getCon();
			PreparedStatement ps = connection.prepareStatement("update usersignup set password=?,repassword=? where email=?");
			ps.setString(1, request.getParameter("password"));
			ps.setString(2, request.getParameter("password"));
			ps.setString(3, request.getParameter("gmail"));
			int num = ps.executeUpdate();
			if(num > 0) {
				response.sendRedirect("userlogin.jsp");
			}else {	
				RequestDispatcher rd = request.getRequestDispatcher("forgetpassword.jsp");
				rd.include(request, response);
				PrintWriter pw = response.getWriter();
				pw.print("<h2 style='color:red;'>");
				pw.println("User Details Not Exited in our Database");
				pw.print("</h2>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
