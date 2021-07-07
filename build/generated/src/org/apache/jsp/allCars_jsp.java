package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

public final class allCars_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title> Car Renting Portal\n");
      out.write("        </title>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        a{\n");
      out.write("            color:white;\n");
      out.write("            text-decoration: none;\n");
      out.write("        }\n");
      out.write("   .aa{\n");
      out.write("            font-family: fantasy;\n");
      out.write("            font-size: 100px;\n");
      out.write("            text-align: center;\n");
      out.write("            }     \n");
      out.write("        body {\n");
      out.write("\n");
      out.write("        background-repeat:no-repeat;\n");
      out.write("        \n");
      out.write("        }\n");
      out.write("        .bb{\n");
      out.write("            font-family: fantasy;\n");
      out.write("            font-size: 25px;\n");
      out.write("           \n");
      out.write("           }\n");
      out.write("           .nav{\n");
      out.write("               font-size: 25px;\n");
      out.write("               font-family: fantasy;\n");
      out.write("               width: 10%;\n");
      out.write("               padding-top: 15px;\n");
      out.write("               border-radius: 50px;\n");
      out.write("               font-weight: bold;\n");
      out.write("               color:white;\n");
      out.write("               \n");
      out.write("           }\n");
      out.write("           .nav:hover{\n");
      out.write("               background-color:#d680c0  ;\n");
      out.write("               \n");
      out.write("           }\n");
      out.write("           .pa{\n");
      out.write("               font-family: fantasy;\n");
      out.write("               font-size: 40px;\n");
      out.write("               background-color: white;\n");
      out.write("               opacity: 0.8;\n");
      out.write("               margin-left: 150px;\n");
      out.write("               border-radius: 20px;\n");
      out.write("               width: 85%;\n");
      out.write("               height: 40%;\n");
      out.write("               font-weight: bold;\n");
      out.write("               \n");
      out.write("           }\n");
      out.write("           .pap{\n");
      out.write("               font-family: fantasy;\n");
      out.write("               font-weight: bold;\n");
      out.write("               font-size: 25px;\n");
      out.write("           }\n");
      out.write("               \n");
      out.write("    </style>\n");
      out.write("    <body background=\"back_1.jpg\">\n");
      out.write("        <div style=\"width: 100%; height:240px;background-color:white;opacity: 0.8\">\n");
      out.write("            <table width=\"100%\">\n");
      out.write("                <tr align=\"center\">\n");
      out.write("                    <td> <img src=\"car.gif\" > </td>\n");
      out.write("                    <td class=\"aa\"> Online Car On-Rent Portal </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("        <br>\n");
      out.write("           <table width=\"85%\" align=\"center\" >\n");
      out.write("                <tr bgcolor=\"#DC143C\" align=\"center\">\n");
      out.write("                    <td class=\"nav\"> <a href=\"index.html\" style=\"text-decoration:none\"> Home </a> </td>\n");
      out.write("                    <td class=\"nav\"> <a href=\"aboutus.html\" style=\"text-decoration:none\"> About Us  </a> </td>\n");
      out.write("                    <td class=\"nav\"> <a href=\"rent.jsp\" style=\"text-decoration:none\"> Rent Your Car </a> </td>\n");
      out.write("                    <td class=\"nav\"> <a href=\"search.jsp\" style=\"text-decoration:none\">Search Rented Car </a> </td>\n");
      out.write("                    <td class=\"nav\"> <a href=\"views.jsp\" style=\"text-decoration:none\"> Your Views </a> </td>\n");
      out.write("                    <td class=\"nav\"> <a href=\"developer.html\" style=\"text-decoration:none\">About Developers </a> </td> \n");
      out.write("                </tr>\n");
      out.write("            </table> \n");
      out.write("            <br>\n");
      out.write("            <table width=\"50%\" cellspacing=\"5\" align=\"center\">\n");
      out.write("                <tr bgcolor=\"yellow\" align=\"center\">\n");
      out.write("                    <td> Car Model</td>\n");
      out.write("                    <td> Owner's Name</td>\n");
      out.write("                    <td> City </td>\n");
      out.write("                    <td> Amount for Rent </td>\n");
      out.write("                    <td> Contact Number</td>\n");
      out.write("                    <td> Days for Car Renting </td>\n");
      out.write("                    <td> Car Number </td>\n");
      out.write("                    <td> ID </td>\n");
      out.write("                                       </tr>\n");
      out.write("            \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

         
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
                
            
        
      out.write("\n");
      out.write("        \n");
      out.write("    <tr align='center'> \n");
      out.write("        <td class=\"pap\"> ");
      out.print(list1.get(1));
      out.write(" </td>\n");
      out.write("        <td class=\"pap\"> ");
      out.print(list1.get(2));
      out.write(" </td>\n");
      out.write("        <td class=\"pap\"> ");
      out.print(list1.get(3));
      out.write(" </td>\n");
      out.write("        <td class=\"pap\"> ");
      out.print(list1.get(4));
      out.write(" </td>\n");
      out.write("        <td class=\"pap\"> ");
      out.print(list1.get(5));
      out.write(" </td>\n");
      out.write("        <td class=\"pap\"> ");
      out.print(list1.get(6));
      out.write(" </td>\n");
      out.write("        <td class=\"pap\"> ");
      out.print(list1.get(7));
      out.write(" </td>\n");
      out.write("        <td class=\"pap\"> ");
      out.print(list1.get(8));
      out.write(" </td>\n");
      out.write("            </tr>\n");
      out.write("            ");

                }
                
      out.write("\n");
      out.write("            </table>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
