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
                        int i = stmt.executeUpdate("insert into time_sheet(user_id,projectid,date,starttime,endtime,hours,remarks) values('"+uid+"','" + pids + "','" + dt + "','" + stime + "','" + etime + "','" + hours + "','" + remarks + "')");
                        //PreparedStatement ps=conn.prepareStatement("insert into time_sheet (user_id,projectid,date,starttime,endtime,hours,remarks) values(?,?,?,?,?,?,?)");
                        //ps.setString(2, pids);
                        //ps.setString(3, dt);
                        //ps.setString(4, stime);
                        //ps.setString(5, etime);
                        //ps.setString(6, hours);
                        //ps.setString(7, remarks);
                        //response.sendRedirect("userpage.jsp");  
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
                    alert('Your timesheet has been added...');
                    
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