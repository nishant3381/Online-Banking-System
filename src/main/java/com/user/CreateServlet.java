package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CreateServlet")
public class CreateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		int num = Integer.parseInt(request.getParameter("num"));
		String name = request.getParameter("name");
		int balance = Integer.parseInt(request.getParameter("balance"));
		
		String driver = "oracle.jdbc.driver.OracleDriver";
		String url= "jdbc:oracle:thin:@localhost:1521:xe";
		
		try {
			Class.forName(driver);
			Connection con  = DriverManager.getConnection(url, "system", "nishant");
			
			String query = "insert into account values(?, ?, ?)";
			PreparedStatement ps = con.prepareStatement(query);
			
			ps.setInt(1, num);
			ps.setString(2, name);
			ps.setInt(3, balance);
			
			int count = ps.executeUpdate();
			if(count>0) {
				System.out.println("<h1> Account Created Successfuly</h1>");
			    RequestDispatcher rd =request.getRequestDispatcher("Done.jsp");
			    rd.include(request, response);}
			     
			else {
				System.out.println("<h1> Insertion failed....try again</h1>");
			    RequestDispatcher rd1 =request.getRequestDispatcher("Create.jsp");
			    rd1.include(request, response);

		    }
		}
		     catch(Exception e){
			       System.out.println("<h1> Exception : " + e.getMessage() +" </h1>");}

}	
}
		
	
		    

		
		





