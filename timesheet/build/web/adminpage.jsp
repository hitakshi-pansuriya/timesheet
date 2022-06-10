<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="css/a.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script>
      function myFunction() 
        {
                var input, filter, table, tr, td, i, txtValue;
                input = document.getElementById("myInput");
                filter = input.value.toUpperCase();
                table = document.getElementById("myTable");
                tr = table.getElementsByTagName("tr");
                for (i = 0; i < tr.length; i++) {
                  td = tr[i].getElementsByTagName("td")[1];
                  if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                      tr[i].style.display = "";
                    } else {
                      tr[i].style.display = "none";
                    }
                  }       
          } 
      }
      </script>
</head>
<body>
    <div class="container-sm">
			<div class="modal-content">					
			<div class="modal-body">
            
            
	    <div class="form-row">
                <div class="col-sm-5">
              <div class="col">
                <div class="form-group">
                  <label>Search</label>
                  <input id="myInput" onkeyup="return myFunction();" type="text" class="form-control" required>
                  <!--<button class="sbutton" type="submit"><i class="fa fa-search"></i></button>-->
                </div>                  
              </div>
                </div>
                <div class="col-sm-5">
              <div class="col">
                <div class="form-group">
                  <label>Users</label>
                  <select id="users" id="users" class="form-control">
                                            <option>A</option>
                                            <option>B</option>
                                            <option>C</option>
                                            <option>D</option>
                                            <option>E</option>
                                            <option>F</option>
                                        </select>
                </div>
              </div>
                </div>
                <div class="col-sm-2">
                <div class="col">
                <div class="form-group">
                  
                  <input id="tdate" type="button" class="btn button1" value="Export as Excel" required>
                </div>
              </div>
                </div>
            </div>				
					</div>
                            <div class="form-row">
                <div class="col-sm-5">
              <div class="col">
                <div class="form-group">
                  <label>From date</label>
                  <input id="fdate" type="date" class="form-control" required>
                </div>
              </div>
                </div>
                <div class="col-sm-5">
              <div class="col">
                <div class="form-group">
                  <label>To date</label>
                  <input id="tdate" type="date" class="form-control" required>
                </div>
              </div>
                </div>
                <div class="col-sm-2">
                <div class="col">
                <div class="form-group">                 
                  <input id="search" type="button" class="btn button" value="Search" required>
                </div>
              </div>
                </div> 
            </div>
	</div>

        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-12">
						          <h2>Timesheet</h2>
					          </div>
                </div>
            </div>
            <%
           Class.forName("com.mysql.jdbc.Driver");
           Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/timesheet","root","");
           Statement statement = connection.createStatement() ;
          ResultSet resultset = statement.executeQuery("select * from time_sheet") ;
      %>
            <table class="table table-striped table-hover" id="myTable">
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>Project ID</th>
                        <th>Date</th>
		        <th>Start Time</th>
                        <th>End Time</th>
                        <th>Total Hours</th>
                        <th>Remarks</th>
                    </tr>
                    <% while(resultset.next()){ %>
                    <tr>
                     <td> <%= resultset.getString(1) %></td>
                     <td> <%= resultset.getString(2) %></td>
                     <td> <%= resultset.getString(3) %></td>
                     <td> <%= resultset.getString(4) %></td>
                     <td> <%= resultset.getString(5) %></td>
                     <td> <%= resultset.getString(6) %></td>
                     <td> <%= resultset.getString(7) %></td>
                    </tr>
                    <% } %>
                </thead>
                <tbody id="employeeTableBody">

                </tbody>
            </table>
        </div>
    </div>    

  <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  <script src="script.js"></script>
</body>
</html>