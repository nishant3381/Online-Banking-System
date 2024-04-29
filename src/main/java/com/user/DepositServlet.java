package com.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DepositServlet")
public class DepositServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		String name = request.getParameter("name");
		int amt = Integer.parseInt(request.getParameter("amt"));
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url= "jdbc:oracle:thin:@localhost:1521:xe";
		
		try {
			Class.forName(driver);
			Connection con  = DriverManager.getConnection(url, "system", "nishant");
			String query = "update account set balance=balance+? where num=?";
	  		  PreparedStatement ps = con.prepareStatement(query);
	  		  ps.setInt(1, amt);
	  		  ps.setInt(2, num);
	  		  int count = ps.executeUpdate();
  		    if(count>0) {
  		         System.out.println(amt + " deposited into acc num " + num + " successfully");
  		          RequestDispatcher rd =request.getRequestDispatcher("Done.jsp");
			      rd.include(request, response);
			      }
  		    
  		    else {
  		         System.out.println("Error : Invalid account number given");
  		       RequestDispatcher rd =request.getRequestDispatcher("Success.jsp");
 			    rd.include(request, response);}
		}
		     catch(Exception e){
			       System.out.println("<h1> Exception : " + e.getMessage() +" </h1>");}

	}

}
