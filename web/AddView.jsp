
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<%
    String views=request.getParameter("views");
    String feedback=request.getParameter("feedback");
    String complain =request.getParameter("complain");
  Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            
            PreparedStatement st= con.prepareStatement("insert into views values(?,?,?)");
            
            st.setString(1,views);
            st.setString(2,feedback);
            st.setString(3,complain);
            st.executeUpdate();
        
        %>