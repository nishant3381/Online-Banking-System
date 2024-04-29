package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		String cnfm= request.getParameter("cnfm");
		
		PrintWriter out = response.getWriter();
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url= "jdbc:oracle:thin:@localhost:1521:xe";
		
		if(pwd.equals(cnfm)) {
			try {
				Class.forName(driver);
				Connection con  = DriverManager.getConnection(url, "system", "nishant");
				
				String query = " Insert into register values(?,?)";
				PreparedStatement ps = con.prepareStatement(query);
				
				ps.setString(1, uname);
				ps.setString(2, pwd);
				
				ResultSet rs = ps.executeQuery();
				
				if(rs.next()) {
					out.println("Successfully registered");
				}
				else {
					out.println("Not register");
				}
			}catch(Exception e) {
				out.println("exception :: "+e);
				
			}
			
		}
	
	}

}
