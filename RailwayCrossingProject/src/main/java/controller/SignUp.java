package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Beans.UserSignup;
import dao.DBConnection;



@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			Connection con = DBConnection.getCon();
			PreparedStatement ps = con.prepareStatement("insert into usersignup values(?,?,?,?,?)");
			
			UserSignup us = new UserSignup();
			us.setF_last(request.getParameter("firstname"));
			us.setL_last(request.getParameter("lastname"));
			us.setEmail(request.getParameter("email"));
			us.setPass1(request.getParameter("password"));
			us.setPass2(request.getParameter("re-password"));
		
			ps.setString(1, us.getF_last());
			ps.setString(2, us.getL_last());
			ps.setString(3, us.getEmail());
			ps.setString(4, us.getPass1());
			ps.setString(5, us.getPass2());
			
			ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
			
		response.sendRedirect("userlogin.jsp");
		
	}

}
