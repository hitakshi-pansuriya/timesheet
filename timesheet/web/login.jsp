<%-- 
    Document   : checkLogIn
    Created on : 19 Mar, 2022, 11:27:54 AM
    Author     : vrush
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try
    {
        String eml = request.getParameter("email");
        String pass = request.getParameter("password");

        if(eml.equals("admin") && pass.equals("admin"))
        {
            %>
            <script>
                window.location='adminpage.jsp';
            </script>
            <%
        }
        else
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/timesheet", "root", "");
            Statement stmt = con.createStatement();
            String sql = "select * from usermaster where email='"+eml+"' and password='"+pass+"'";
            ResultSet rs = stmt.executeQuery(sql);
            if(rs.next())
            {

                //String user_id = rs.getString(1);
                //String sqlin = "update  set user_id="+user_id;
                //stmt.executeUpdate(sqlin);
                
                session.setAttribute("user_id",rs.getString(1));
                %>
                <script>
                    window.location='userpage.jsp';
                </script>
                <%
            }
            else
            {
                %>
                <script>
                    alert('Invalid User..!!Please create new account');
                    window.location='r2.jsp';
                </script>
                <%
            }
        }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
%>