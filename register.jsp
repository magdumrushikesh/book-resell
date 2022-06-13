<%@ page import ="java.sql.*"%>

<%
	String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String email=request.getParameter("email"); 
    String userid=request.getParameter("userid");
    String pass=request.getParameter("password");
{
	try {
            Class.forName ("oracle.jdbc.OracleDriver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } 
	try{
	 
        Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","932932","932932"); 
		PreparedStatement ps = conn.prepareStatement("insert into users values(?,?,?,?,?)");
		ps.setString(1,fname);
		ps.setString(2,lname);
		ps.setString(3,email);
		ps.setString(4,userid);
		ps.setString(5,pass);
		
		int x= ps.executeUpdate();
		if(x!=0){
			out.print("Signup done Successfully...");
		}else{
			out.print("Something went worng...");
		}
		
	}catch(Exception e)
		{
		out.print(e);
		}
	
	
}

%>