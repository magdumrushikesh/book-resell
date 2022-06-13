<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% @page import="java.sql.*,java.util.*"%>
    <%
    String userid=request.getParameter("userid");
    session.putvalue("userid",userid);
    String password=request.getparameter("password");
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection(  
    		"jdbc:oracle:thin:@localhost:1521:xe","932932","932932");  
    		  
    		//step3 create the statement object  
    		Statement stmt=con.createStatement();  
    		  
    		//step4 execute query  
    		ResultSet rs=stmt.executeQuery("select * from users where userid='"+userid+"'and password'"+password+"'");  
   try{
	   rs.next();
	   if(rs.getString("password").equals(password)&&rs.getString("userid").equals(userid)){
		   out.println("Welcome " +userid);
	   }
	   else{
		   out.println("Invalid password or username.");
	   }
   }catch(Exception e){
	   e.printStackTrace();
   }
   
   %>
