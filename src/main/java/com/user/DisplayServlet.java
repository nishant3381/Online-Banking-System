package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DisplayServlet")
public class DisplayServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out =response.getWriter();
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url= "jdbc:oracle:thin:@localhost:1521:xe";
		
		try {
			Class.forName(driver);
			Connection con  = DriverManager.getConnection(url, "system", "nishant");
			
			String query = "select * from account where num=?";
			PreparedStatement ps = con.prepareStatement(query);
			
			ps.setInt(1, num);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				 String name = rs.getString(2);
	    		 int balance = rs.getInt(3);
				 out.println("<h1>Details : " + num + " , " + name + " , " + balance+"</h1>");
			}
			     
			else {
				System.out.println("<h1>  failed....try again</h1>");
			    RequestDispatcher rd1 =request.getRequestDispatcher("Success.jsp");
			    rd1.include(request, response);

		    }
		}
		     catch(Exception e){
			       System.out.println("<h1> Exception : " + e.getMessage() +" </h1>");}

	}

}
