package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class demo_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\"/>\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css\"/>\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css\"/>\n");
      out.write("\n");
      out.write("\n");
      out.write("<script src=\"http://code.jquery.com/jquery-3.2.1.min.js\" integrity=\"sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js\"></script>\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/locales/bootstrap-datepicker.fr.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("$(document).ready(function() {\n");
      out.write("// Bootstrap datepicker\n");
      out.write("$('.input-daterange input').each(function() {\n");
      out.write("  $(this).datepicker('clearDates');\n");
      out.write("});\n");
      out.write("\n");
      out.write("// Extend dataTables search\n");
      out.write("$.fn.dataTable.ext.search.push(\n");
      out.write("  function(settings, data, dataIndex) {\n");
      out.write("    var min = $('#min').val();\n");
      out.write("    var max = $('#max').val();\n");
      out.write("    var createdAt = data[1] || 1; // Our date column in the table\n");
      out.write("\n");
      out.write("    if (\n");
      out.write("      (min == \"\" || max == \"\") ||\n");
      out.write("      (moment(createdAt).isSameOrAfter(min) && moment(createdAt).isSameOrBefore(max))\n");
      out.write("    ) {\n");
      out.write("      return true;\n");
      out.write("    }\n");
      out.write("    return false;\n");
      out.write("  }\n");
      out.write(");\n");
      out.write("\n");
      out.write("// Re-draw the table when the a date range filter changes\n");
      out.write("$('.date-range-filter').change(function() {\n");
      out.write("    var table = $('#data-table').DataTable();\n");
      out.write("  table.draw();\n");
      out.write("});\n");
      out.write("\n");
      out.write("      $.datepicker.regional['es'] = {\n");
      out.write(" closeText: 'Cerrar',\n");
      out.write(" prevText: '< Ant',\n");
      out.write(" nextText: 'Sig >',\n");
      out.write(" currentText: 'Hoy',\n");
      out.write(" monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],\n");
      out.write(" monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],\n");
      out.write(" dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],\n");
      out.write(" dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],\n");
      out.write(" dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','Sá'],\n");
      out.write(" weekHeader: 'Sm',\n");
      out.write(" dateFormat: 'dd/mm/yy',\n");
      out.write(" firstDay: 1,\n");
      out.write(" isRTL: false,\n");
      out.write(" showMonthAfterYear: false,\n");
      out.write(" yearSuffix: ''\n");
      out.write(" };\n");
      out.write(" $.datepicker.setDefaults($.datepicker.regional['es']);\n");
      out.write("        \n");
      out.write("$('.date-range-filter').datepicker({\n");
      out.write(" todayHighlight: true\n");
      out.write("\n");
      out.write("});\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("<div class=\"col-md-8\">\n");
      out.write("                            <div class=\"input-group input-daterange\">\n");
      out.write("                                <input type=\"text\" class=\"form-control date-range-filter\" placeholder=\"Date Start\" data-date-format=\"dd-mm-yyyy\" id=\"min\" />\n");
      out.write("                                <span class=\"input-group-addon\">Hasta</span>\n");
      out.write("                                <input type=\"text\" class=\"form-control date-range-filter\" placeholder=\"Date End\" data-date-format=\"dd-mm-yyyy\" id=\"max\"/>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"panel-body\">\n");
      out.write("                <table id=\"data-table\" class=\"table table-striped table-bordered nowrap\" width=\"100%\">\n");
      out.write("                    <thead>\n");
      out.write("                        <tr>\n");
      out.write("                            <th>Name</th>\n");
      out.write("                            <th>Date</th>\n");
      out.write("                            <th>Time</th>\n");
      out.write("                            <th></th>\n");
      out.write("                            <th>Status</th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody>\n");
      out.write("                        <tr class=\"odd gradeX\">\n");
      out.write("                            <td>Name</td>\n");
      out.write("                            <td>06/06/2021</td>\n");
      out.write("                            <td>6:31:43 PM</td>\n");
      out.write("                            <td>CDT</td>\n");
      out.write("                            <td>All Systems Normal</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr class=\"odd gradeX\">\n");
      out.write("                            <td>Name</td>\n");
      out.write("                            <td>06/05/2021</td>\n");
      out.write("                            <td>1:22:33 PM</td>\n");
      out.write("                            <td>CDT</td>\n");
      out.write("                            <td><font color=\"red\"> LOW Voltage</font></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr class=\"odd gradeX\">\n");
      out.write("                            <td>Name</td>\n");
      out.write("                            <td>06/04/2021</td>\n");
      out.write("                            <td>6:11:25 AM</td>\n");
      out.write("                            <td>CDT</td>\n");
      out.write("                            <td><font color=\"red\">Main Power Failure</font></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr class=\"odd gradeX\">\n");
      out.write("                            <td>Name</td>\n");
      out.write("                            <td>06/03/2021</td>\n");
      out.write("                            <td>5:31:43 PM</td>\n");
      out.write("                            <td>CDT</td>\n");
      out.write("                            <td><font color=\"red\">Main Power Failure <br> LOW DC Voltage</font></td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr class=\"odd gradeX\">\n");
      out.write("                            <td>Name</td>\n");
      out.write("                            <td>06/02/2021</td>\n");
      out.write("                            <td>2:20:43 PM</td>\n");
      out.write("                            <td>CDT</td>\n");
      out.write("                            <td>All Systems Normal</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr class=\"odd gradeX\">\n");
      out.write("                            <td>Name</td>\n");
      out.write("                            <td>06/01/2021</td>\n");
      out.write("                            <td>3:50:21 AM</td>\n");
      out.write("                            <td>CDT</td>\n");
      out.write("                            <td><font color=\"red\">Digital Input 1</font></td>\n");
      out.write("                        </tr>\n");
      out.write("\n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("            </div>");
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
