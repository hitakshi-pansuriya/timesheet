<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
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
                    try {
                        String uid = (String)session.getAttribute("user_id");
                        String pids = request.getParameter("pids");
                        String startDateStr = request.getParameter("date");
                        String stime = request.getParameter("stime");
                        String etime = request.getParameter("etime");
                        String hours = request.getParameter("hours");
                        String remarks = request.getParameter("remarks");
                        SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DD");
                        Date startDate = sdf.parse(startDateStr);
                        String dt = "" + startDateStr;
                        //out.println("id : "+pids);
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/timesheet", "root", "");

                        Statement stmt = conn.createStatement();
                        String s="update student set projectid='"+pids+"',date='"+dt+"',starttime='"+stime+"',endtime='"+etime+"',hours='"+hours+"',remarks='"+remarks+"' where user_id='"+uid+"'";
                        int i = stmt.executeUpdate(s);
                        
                        if (i < 1) {
                            
                        %>
                        <script>
                             alert('Something went wrong..!!');
                            window.location = 'addnew.jsp';
                        </script>
                        <%
                        } 
               else {
                %>
                <script>
                    alert('Your timesheet has been updated...');
                    window.location = 'userpage.jsp';
                </script>
                <%
                        }
                        stmt.close();
                        conn.close();

                    } catch (Exception e) {
                        out.println("" + e);
                    }


                %>  
            </div>

        </div>
    </body>
</html>