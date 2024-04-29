package com.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/WithdrawServlet")
public class WithdrawServlet extends HttpServlet {
  
  public static Connection getcon(PrintWriter out) {
    try {
      Class.forName("oracle.jdbc.driver.OracleDriver");      
      Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","nishant");
      return con;
    }catch(ClassNotFoundException e) {
      out.println("<h1>No Such Driver Found</h1>");
    } catch (SQLException e) {
      out.println("<h1>Function Exception: "+e.getMessage()+"</h1>");
    }
    return null;
  }

    public static void withdraw(PrintWriter out, HttpServletRequest request,HttpServletResponse response,  Connection con, int num, int amt) {
    try {
      String query="select balance from account WHERE num = ?";
      PreparedStatement ps=con.prepareStatement(query);
      
      ps.setInt(1, num);
      ResultSet rs=ps.executeQuery();
      if(rs.next()) {
        if(rs.getInt(1)>=amt) {
          String query1="UPDATE account SET Balance = Balance-? WHERE num = ?";
          PreparedStatement ps1=con.prepareStatement(query1);
          
          ps1.setInt(1, amt);
          ps1.setInt(2, num);
          ps1.executeUpdate();
          out.println("<h1>Amount Withdrawn</h1>");
          RequestDispatcher rd =request.getRequestDispatcher("Done.jsp");
	      rd.include(request, response);
        }else {
          out.println("<h1>Error: Insufficient Balance</h1>");
        }
      }else {
        out.println("<h1>Error: Invalid Account Num</h1>");
      }
    }catch(Exception e) {
      out.println("<h1>Function Exception: "+e.getMessage()+"</h1>");
    }
  }
  
  private static final long serialVersionUID = 1L;

  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int num=Integer.parseInt(request.getParameter("num"));
    int amt=Integer.parseInt(request.getParameter("amt"));
    
    PrintWriter out=response.getWriter();
    response.setContentType("text/html");
    
    withdraw(out , request, response, getcon(out), num,amt);

  }
}