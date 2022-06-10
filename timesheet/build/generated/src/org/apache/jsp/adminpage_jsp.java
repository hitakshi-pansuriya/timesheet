package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.Connection;

public final class adminpage_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("  <meta charset=\"utf-8\">\n");
      out.write("  <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  \n");
      out.write("  <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Roboto|Varela+Round\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/icon?family=Material+Icons\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\" integrity=\"sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh\" crossorigin=\"anonymous\">\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"css/a.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("  <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js\"></script>\n");
      out.write("  <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("  <script>\n");
      out.write("      function myFunction() \n");
      out.write("        {\n");
      out.write("                var input, filter, table, tr, td, i, txtValue;\n");
      out.write("                input = document.getElementById(\"myInput\");\n");
      out.write("                filter = input.value.toUpperCase();\n");
      out.write("                table = document.getElementById(\"myTable\");\n");
      out.write("                tr = table.getElementsByTagName(\"tr\");\n");
      out.write("                for (i = 0; i < tr.length; i++) {\n");
      out.write("                  td = tr[i].getElementsByTagName(\"td\")[1];\n");
      out.write("                  if (td) {\n");
      out.write("                    txtValue = td.textContent || td.innerText;\n");
      out.write("                    if (txtValue.toUpperCase().indexOf(filter) > -1) {\n");
      out.write("                      tr[i].style.display = \"\";\n");
      out.write("                    } else {\n");
      out.write("                      tr[i].style.display = \"none\";\n");
      out.write("                    }\n");
      out.write("                  }       \n");
      out.write("          } \n");
      out.write("      }\n");
      out.write("      </script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"container-sm\">\n");
      out.write("\t\t\t<div class=\"modal-content\">\t\t\t\t\t\n");
      out.write("\t\t\t<div class=\"modal-body\">\n");
      out.write("            \n");
      out.write("            \n");
      out.write("\t    <div class=\"form-row\">\n");
      out.write("                <div class=\"col-sm-5\">\n");
      out.write("              <div class=\"col\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                  <label>Search</label>\n");
      out.write("                  <input id=\"myInput\" type=\"text\" class=\"form-control\" required>\n");
      out.write("                  <!--<button class=\"sbutton\" type=\"submit\"><i class=\"fa fa-search\"></i></button>-->\n");
      out.write("                </div>                  \n");
      out.write("              </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-5\">\n");
      out.write("              <div class=\"col\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                  <label>Users</label>\n");
      out.write("                  <select id=\"users\" id=\"users\" class=\"form-control\">\n");
      out.write("                                            <option>A</option>\n");
      out.write("                                            <option>B</option>\n");
      out.write("                                            <option>C</option>\n");
      out.write("                                            <option>D</option>\n");
      out.write("                                            <option>E</option>\n");
      out.write("                                            <option>F</option>\n");
      out.write("                                        </select>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-2\">\n");
      out.write("                <div class=\"col\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                  \n");
      out.write("                  <input id=\"tdate\" type=\"button\" class=\"btn button1\" value=\"Export as Excel\" required>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\t\t\t\t\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("                            <div class=\"form-row\">\n");
      out.write("                <div class=\"col-sm-5\">\n");
      out.write("              <div class=\"col\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                  <label>From date</label>\n");
      out.write("                  <input id=\"fdate\" type=\"date\" class=\"form-control\" required>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-5\">\n");
      out.write("              <div class=\"col\">\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                  <label>To date</label>\n");
      out.write("                  <input id=\"tdate\" type=\"date\" class=\"form-control\" required>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-sm-2\">\n");
      out.write("                <div class=\"col\">\n");
      out.write("                <div class=\"form-group\">                 \n");
      out.write("                  <input id=\"search\" type=\"button\" class=\"btn button\" value=\"Search\" required>\n");
      out.write("                </div>\n");
      out.write("              </div>\n");
      out.write("                </div> \n");
      out.write("            </div>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("        <div class=\"table-wrapper\">\n");
      out.write("            <div class=\"table-title\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-sm-12\">\n");
      out.write("\t\t\t\t\t\t          <h2>Timesheet</h2>\n");
      out.write("\t\t\t\t\t          </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("            ");

           Class.forName("com.mysql.jdbc.Driver");
           Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/timesheet","root","");
           Statement statement = connection.createStatement() ;
          ResultSet resultset = statement.executeQuery("select * from time_sheet") ;
      
      out.write("\n");
      out.write("            <table class=\"table table-striped table-hover\" id=\"myTable\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                        <th>User ID</th>\n");
      out.write("                        <th>Project ID</th>\n");
      out.write("                        <th>Date</th>\n");
      out.write("\t\t        <th>Start Time</th>\n");
      out.write("                        <th>End Time</th>\n");
      out.write("                        <th>Total Hours</th>\n");
      out.write("                        <th>Remarks</th>\n");
      out.write("                    </tr>\n");
      out.write("                    ");
 while(resultset.next()){ 
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                     <td> ");
      out.print( resultset.getString(1) );
      out.write("</td>\n");
      out.write("                     <td> ");
      out.print( resultset.getString(2) );
      out.write("</td>\n");
      out.write("                     <td> ");
      out.print( resultset.getString(3) );
      out.write("</td>\n");
      out.write("                     <td> ");
      out.print( resultset.getString(4) );
      out.write("</td>\n");
      out.write("                     <td> ");
      out.print( resultset.getString(5) );
      out.write("</td>\n");
      out.write("                     <td> ");
      out.print( resultset.getString(6) );
      out.write("</td>\n");
      out.write("                     <td> ");
      out.print( resultset.getString(7) );
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");
 } 
      out.write("\n");
      out.write("                </thead>\n");
      out.write("                <tbody id=\"employeeTableBody\">\n");
      out.write("\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("    </div>    \n");
      out.write("\n");
      out.write("  <script src=\"https://code.jquery.com/jquery-3.4.1.min.js\" integrity=\"sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=\" crossorigin=\"anonymous\"></script>\n");
      out.write("  <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js\" integrity=\"sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo\" crossorigin=\"anonymous\"></script>\n");
      out.write("  <script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\" integrity=\"sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6\" crossorigin=\"anonymous\"></script>\n");
      out.write("  <script src=\"script.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>");
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
