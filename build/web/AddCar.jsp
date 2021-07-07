
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>

<%
    String carmo=request.getParameter("cNm");
    String oname=request.getParameter("owner");
    String city=request.getParameter("city");
    int num=Integer.parseInt(request.getParameter("amount"));
    long contact = Long.parseLong(request.getParameter("contact"));
    int days=Integer.parseInt(request.getParameter("days"));
    String car=request.getParameter("cNu");
    String id=request.getParameter("id");
    
       
  Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            
            PreparedStatement st= con.prepareStatement("insert into cardescription values(?,?,?,?,?,?,?,?)");
            
            st.setString(1,carmo);
            st.setString(2,oname);
            st.setString(3,city);
            st.setInt(4,num);
            st.setLong(5,contact);
            st.setInt(6,days);
            st.setString(7,car);
            st.setString(8,id);
            
            st.executeUpdate();
          

            response.sendRedirect("user.jsp");


        
        %>