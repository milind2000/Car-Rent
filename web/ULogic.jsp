<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<%
    String userId=request.getParameter("user");
    String passwordu=request.getParameter("upass");
    
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");

PreparedStatement ps2= con.prepareStatement("select * from user where userId=? and passwordu=?");

ps2.setString(1,userId);
ps2.setString(2,passwordu);

ResultSet rs2=ps2.executeQuery();
if(rs2.next())
{
    
        response.sendRedirect("user.jsp");
    
}
else
        {
            out.println("Invalid Password!");
        }
        
        %>