<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<%
    String adminId=request.getParameter("admin");
    String password=request.getParameter("apass");
    
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");

PreparedStatement ps1= con.prepareStatement("select * from admin where adminId=? and password=?");

ps1.setString(1,adminId);
ps1.setString(2,password);

ResultSet rs1=ps1.executeQuery();
if(rs1.next())
{
        response.sendRedirect("admin.jsp");

}
else
        {
            out.println("Invalid Password!");
        }
        
        %>