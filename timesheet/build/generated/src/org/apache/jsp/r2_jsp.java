package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class r2_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("    <script>\n");
      out.write("        var code;\n");
      out.write("        function createCaptcha() {\n");
      out.write("                var chr1 = Math.ceil(Math.random() * 10) + '';  \n");
      out.write("            var chr2 = Math.ceil(Math.random() * 10) + '';  \n");
      out.write("            var chr3 = Math.ceil(Math.random() * 10) + '';  \n");
      out.write("  \n");
      out.write("            var str = new Array(4).join().replace(/(.|$)/g, function () { return ((Math.random() * 36) | 0).toString(36)[Math.random() < .5 ? \"toString\" : \"toUpperCase\"](); });  \n");
      out.write("            var captchaCode = str + chr1 + ' ' + chr2 + ' ' + chr3;  \n");
      out.write("            document.getElementById(\"txtCaptcha\").value = captchaCode;\n");
      out.write("        }\n");
      out.write("        function validate()\n");
      out.write("            {\n");
      out.write("                var fname=/^[a-zA-Z]+$/;\n");
      out.write("                var fnm=document.Myform.fname.value;\n");
      out.write("                if(fname.test(fnm)==false) \n");
      out.write("                {\n");
      out.write("                    alert(\"Please Enter Only Alphabets in First Name...\");\n");
      out.write("                    document.Myform.fname.focus();                \n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                if(fnm.length<2)\n");
      out.write("                {\n");
      out.write("                    alert(\"Please Enter Firsr Name atleast 2 characters...\");\n");
      out.write("                    document.Myform.fname.focus();                \n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("                var lname=/^[a-zA-Z]+$/;\n");
      out.write("                var lnm=document.Myform.lname.value;\n");
      out.write("                if(lname.test(lnm)==false) \n");
      out.write("                {\n");
      out.write("                    alert(\"Please Enter Only Alphabets in Last Name...\");\n");
      out.write("                    document.Myform.lname.focus();                \n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                if(lnm.length<2)\n");
      out.write("                {\n");
      out.write("                    alert(\"Please Enter Last Name atleast 2 characters...\");\n");
      out.write("                    document.Myform.lname.focus();                \n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                var pass=document.Myform.psw.value;\n");
      out.write("                var compass=document.Myform.cpsw.value;\n");
      out.write("                if(pass.length<6)\n");
      out.write("                {\n");
      out.write("                    alert(\"Please Enter Password atleast 6 Characters...\");\n");
      out.write("                    document.Myform.psw.focus();                \n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                if(pass!=compass)\n");
      out.write("                {\n");
      out.write("                    alert(\"Please Enter Confirm Password Same as Password\");\n");
      out.write("                    document.Myform.cpsw.focus();                \n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("                var mob=/^[0-9]{10}$/;\n");
      out.write("                var mnumber = document.getElementById('mnm').value;\n");
      out.write("                if(mob.test(mnumber)==false)\n");
      out.write("                {\n");
      out.write("                    alert(\"mobile number must be 10 digits...!!\");\n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                var eml=document.Myform.email.value;\n");
      out.write("                var email=/^[a-z0-9]+@[a-z]+.(com|org)$/;\n");
      out.write("                if(email.test(eml)==false)\n");
      out.write("                {\n");
      out.write("                    alert(\"Please Enter in Formated Email Address...\");\n");
      out.write("                    document.Myform.email.focus();                \n");
      out.write("                    return false;\n");
      out.write("                }\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("        \n");
      out.write("            function validatecaptcha() {\n");
      out.write("            var str1 = removeSpaces(document.getElementById('txtCaptcha').value);  \n");
      out.write("            var str2 = removeSpaces(document.getElementById('txtCompare').value);            \n");
      out.write("            if (str1 != str2) {\n");
      out.write("                alert(\"Invalid Captcha...\");\n");
      out.write("                return false;\n");
      out.write("            }\n");
      out.write("            else{\n");
      out.write("                    return true; \n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        function removeSpaces(string) {  \n");
      out.write("            return string.split(' ').join('');  \n");
      out.write("        }\n");
      out.write("</script>\n");

    session.invalidate();
      out.write('\n');

    String m = request.getParameter("id");
    if (m != null && m.equalsIgnoreCase("exp")) {
        out.println("<script type=text/javascript>alert('Sorry, your session expired, login again '); </script>");
    }

      out.write("\n");
      out.write("\t<title></title>\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/r2.css\">\n");
      out.write("        \n");
      out.write("<link href=\"https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap\" rel=\"stylesheet\">\n");
      out.write("</head>\n");
      out.write("<body onload=\"createCaptcha()\">\n");
      out.write("\t<div class=\"main\">  \t\n");
      out.write("\t\t<input type=\"checkbox\" id=\"chk\" aria-hidden=\"true\">\n");
      out.write("\n");
      out.write("\t\t\t<div class=\"signup\">\n");
      out.write("                            <form name=\"Myform\" action=\"register.jsp\" method=\"post\" onsubmit=\"return validate();\">\n");
      out.write("\t\t\t\t\t<label>Sign up</label>\n");
      out.write("\t\t\t\t\t\n");
      out.write("                                        <input type=\"text\" name=\"fname\" placeholder=\"First name\" required=\"\">\n");
      out.write("                                        <input type=\"text\" name=\"lname\" placeholder=\"Last name\" required=\"\">\n");
      out.write("                                        <input type=\"text\" name=\"mnumber\" placeholder=\"Contact no\" maxlength=\"10\" required=\"\">\n");
      out.write("\t\t\t\t\t<input type=\"email\" name=\"email\" placeholder=\"Email\" id=\"eid\" required=\"\">\n");
      out.write("\t\t\t\t\t<input type=\"password\" name=\"psw\" placeholder=\"Password\" required=\"\">\n");
      out.write("                                        <input type=\"password\" name=\"cpsw\" placeholder=\"Confirm Password\" required=\"\">\n");
      out.write("                                        \n");
      out.write("                                        <div id=\"captcha\" align=\"center\">\n");
      out.write("                                        </div>\n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                                        <div>\n");
      out.write("                                            <td><input type=\"text\" id=\"txtCompare\" style=\" font-size: 20px; font-family: Garamond;\" placeholder=\"Enter Capcha\" />  </td>\n");
      out.write("                                             <td><input type=\"text\" id=\"txtCaptcha\" style=\"text-align: center; border: none;font-weight: bold; font-size: 20px; font-family: Modern\" />  </td>\n");
      out.write("                                        </div>\n");
      out.write("                                        \n");
      out.write("                                        <button onclick=\"createCaptcha()\">Refresh</button>\n");
      out.write("                                        \n");
      out.write("                                        \n");
      out.write("                                        <button onclick=\"return validatecaptcha();\">Sign up</button>\n");
      out.write("\t\t\t\t</form>\n");
      out.write("\t\t\t</div>\n");
      out.write("                \n");
      out.write("\n");
      out.write("\t\t\t\n");
      out.write("\t</div>\n");
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
