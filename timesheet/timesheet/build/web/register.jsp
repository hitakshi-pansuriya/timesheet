
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="wrap">
            <div id="content">
              <%
                
                String fname=request.getParameter("fname");
                String lname=request.getParameter("lname");
                String password=request.getParameter("psw");
                String mobno=request.getParameter("mnumber");
                String email=request.getParameter("email");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/timesheet","root","");
          Calendar cal = Calendar.getInstance();
           String dt=cal.get(Calendar.YEAR)+"/"+cal.get(Calendar.MONTH)+"/"+cal.get(Calendar.DATE);
            
	Statement stmt=conn.createStatement();
        int i=stmt.executeUpdate("insert into usermaster(first_name,last_name,email,phone_number,password,createdon) values('"+fname+"','"+lname+"','"+email+"',"+mobno+",'"+password+"','"+dt+"')");
                
	 if(i<1)
        {
            %>
            <script>
                alert('Something went wrong..!!');
                window.location='r2.jsp';
            </script>
            <%
        }
        else
        {
           %>
            <script>
                <jsp:forward page="mail.jsp"/>
                //alert('Please Login....');
                window.location='login.html';
            </script>
            <%

        }stmt.close();
	conn.close();		

}
catch(Exception e)
{
	out.println(""+e);
}


%>  
            </div>
        
        </div>
    </body>
</html>
