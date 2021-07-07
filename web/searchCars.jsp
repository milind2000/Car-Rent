<html>
    <head>
        <title> Car Renting Portal
        </title>
    </head>
    <style>
        a{
            color:white;
            text-decoration: none;
        }
   .aa{
            font-family: fantasy;
            font-size: 100px;
            text-align: center;
            }     
        body {

        background-repeat:no-repeat;
        
        }
        .bb{
            font-family: fantasy;
            font-size: 25px;
           
           }
           .nav{
               font-size: 25px;
               font-family: fantasy;
               width: 10%;
               padding-top: 15px;
               border-radius: 50px;
               font-weight: bold;
               color:white;
               
           }
           .nav:hover{
               background-color:#d680c0  ;
               
           }
           .pa{
               font-family: fantasy;
               font-size: 40px;
               background-color: white;
               opacity: 0.8;
               margin-left: 150px;
               border-radius: 20px;
               width: 85%;
               height: 40%;
               font-weight: bold;
               
           }
           .pap{
               font-family: monospace;
               font-weight: bold;
               font-size: 25px;
           }
           .yo{
               font-family: fantasy;
               font-size: 40px;
               font-weight: bold;
               
           }
               
    </style>
    <body background="back_1.jpg">
        <div style="width: 100%; height:240px;background-color:white;opacity: 0.8">
            <table width="100%">
                <tr align="center">
                    <td> <img src="car.gif" > </td>
                    <td class="aa"> Online Car On-Rent Portal </td>
                </tr>
            </table>
        </div>
        <br>
           <table width="85%" align="center" >
                <tr bgcolor="#DC143C" align="center">
                    <td class="nav"> <a href="index.html" style="text-decoration:none"> Home </a> </td>
                    <td class="nav"> <a href="aboutus.html" style="text-decoration:none"> About Us  </a> </td>
                    <td class="nav"> <a href="rent.html" style="text-decoration:none"> Rent Your Car </a> </td>
                    <td class="nav"> <a href="search.jsp" style="text-decoration:none">Search Rented Car </a> </td>
                    <td class="nav"> <a href="views.jsp" style="text-decoration:none"> Your Views </a> </td>
                    <td class="nav"> <a href="developer.html" style="text-decoration:none">About Developers </a> </td> 
                </tr>
            </table> 
            <br>
            <table width="85%"  align="center" bgcolor='yellow' border='11'>
                <tr bgcolor="yellow" align="center">
                    <td class="yo" style="padding-top:15px"> Car Model</td>
                    <td class="yo" style="padding-top:15px"> Owner's Name</td>
                    <td class="yo" style="padding-top:15px"> City </td>
                    <td class="yo" style="padding-top:15px"> Amount for Rent </td>
                    <td class="yo" style="padding-top:15px"> Contact Number</td>
                    <td class="yo" style="padding-top:15px"> Days for Car Renting </td>
                    <td class="yo" style="padding-top:15px"> Car Number </td>
                    <td class="yo" style="padding-top:15px"> ID </td>
                                       </tr>
     <div>
         <table border="0" bgcolor="yellow" style=" margin-top:15px;border-radius:30px;" cellspacing="20" cellpadding="5">

                <tr align="center">
                    <td class="bb" style="padding-top:10px"> <b>CAR ID</b> </td>
                    <td> <input type="text" name="id" placeholder="Enter Car(unique) ID here" style="border-radius:10%;width:200px;height:30px;padding-left:20px;padding-right:20px;">  </td>
                </tr>
                         <tr align="center">
                         <td colspan="2">
                        <input type="submit" value="submit" style="border-radius:20%;width:100px; heigth:35px; background-color: #d680c0;color:white">
                        <input type="reset" value="Clear" style="border-radius:20%;width:100px; heigth:35px;background-color: #d680c0;color:white">
                    </td>
                     </tr>
         </table>
         
            </div>
            
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>

<%
         
  Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
            
            PreparedStatement st12= con.prepareStatement("select * from cardescription");
            ResultSet rs= st12.executeQuery();
            ArrayList list1= new ArrayList();
            ArrayList list2= new ArrayList();
            ArrayList list3= new ArrayList();
            ArrayList list4= new ArrayList();
            ArrayList list5= new ArrayList();
            ArrayList list6= new ArrayList();
            ArrayList list7= new ArrayList();
            ArrayList list8= new ArrayList();
            
            while(rs.next())
            {
                list1.add(rs.getString(1));
                list2.add(rs.getString(2));
                list3.add(rs.getString(3));
                list4.add(rs.getString(4));
                list5.add(rs.getString(5));
                list6.add(rs.getString(6));
                list7.add(rs.getString(7));
                list8.add(rs.getString(8));
            }
        
            for(int i=0;i<list1.size();i++)
            {
                
            
        %>
        
    <tr align='center'> 
        <td class="pap"> <%=list1.get(i)%> </td>
        <td class="pap"> <%=list2.get(i)%> </td>
        <td class="pap"> <%=list3.get(i)%> </td>
        <td class="pap"> <%=list4.get(i)%> </td>
        <td class="pap"> <%=list5.get(i)%> </td>
        <td class="pap"> <%=list6.get(i)%> </td>
        <td class="pap"> <%=list7.get(i)%> </td>
        <td class="pap"> <%=list8.get(i)%> </td>
            </tr>
            <%
                }
                %>
            </table>
    </body>
</html>
        
        
        
        
        
        