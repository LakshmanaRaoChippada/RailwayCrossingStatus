package controller;

import java.io.IOException;
import java.io.PrintWriter;
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

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("select email,password from usersignup where email=? and password=?");
			
			String email1 = request.getParameter("email");
			String password1 = request.getParameter("password");
			ps.setString(1, email1);
			ps.setString(2, password1);
			ResultSet rs = ps.executeQuery();
			String email2 = null,password2 = null;
			while(rs.next()) {
				email2 = rs.getString(1);
				password2 = rs.getString(2);
			}
			
			if(email1.equals(email2) || password1.equals(password2)) {
				response.sendRedirect("userhomepage.jsp");
			}else {
				
				RequestDispatcher rd =  request.getRequestDispatcher("userlogin.jsp");
				rd.include(request, response);
				PrintWriter pw = response.getWriter();
				pw.print("<h2 style='color:red;'>");
				pw.println("E-mail and Password not Exited");
				pw.print("</h2>");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}