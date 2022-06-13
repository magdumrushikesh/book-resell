<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% @page import="java.sql.*,java.util.*"%>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot Password</title>
    </head>
    <body>
    <% 
    try{
    	
    
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection(  
    		"jdbc:oracle:thin:@localhost:1521:xe","932932","932932");  
    		  
    		Statement stmt=con.createStatement();  
    		  
    		String email=request.getParameter("email");
    		String strQuery ="select password from users where email=' "+email+" ' ";
    		ResultSet rs=stmt.executeQuery(strQuery);  
    		rs.next();
    		String Countrow = rs.getString(1);
    		if(Countrow.equals("1")'){
    			/*mail code
    			paste your mail code here*/
    			out.println("Invalid Email id !");
    		}
  
    }catch(Exception e){
    	e.printStackTrace();
    }
    %>
    </body>
    </html>
  
  
  
  
  
  