<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <link rel="stylesheet" h  ref="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="css/a.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        
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
        const searchbyDate = () => {
            var startDateArr = [];
            var endDateArr = [];
            var myTab = document.getElementById('myTable');
            let InputStartDate = document.getElementById('date_input').value;
            let InputEndDate = document.getElementById('date_input2').value;
            for(i = 1; i < myTab.rows.length; i++) {
                var objCells = myTab.rows.item(i).cells;
                var t1 = new Date(objCells.item(2).innerHTML)
                startDateArr.push(t1);
                var t2 = new Date(objCells.item(2).innerHTML)
                endDateArr.push(t2);
            }
            var startDate = new Date(InputStartDate);
            var endDate = new Date(InputEndDate);
            startDate.setHours(0, 0, 0, 0);
            endDate.setHours(0, 0, 0, 0);
            let myTable = document.getElementById('myTable');
            let tr = myTable.getElementsByTagName('tr');
            if(+startDate > +endDate) {
                alert("Please Select Valid Date");
            } else {
                for(var j = 0; j < endDateArr.length; j++) {
                    var temp1 = new Date(startDateArr[j]);
                    var temp2 = new Date(endDateArr[j]);
                    if(startDate && !InputEndDate) {
                        if(+startDate <= +temp1 || +startDate === +temp1) {
                            tr[j + 1].style.display = "";
                        } else {
                            tr[j + 1].style.display = "none";
                        }
                    } else if(!InputStartDate && endDate) {
                        if(+endDate >= +temp2 || +endDate === +temp2) {
                            tr[j + 1].style.display = "";
                        } else {
                            tr[j + 1].style.display = "none";
                        }
                    } else if(startDate && endDate) {
                        if((+startDate <= +temp1 || +startDate === +temp1) && (+endDate >= +temp2 || +endDate === +temp2)) {
                            tr[j + 1].style.display = "";
                        } else {
                            tr[j + 1].style.display = "none";
                        }
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
                  <input id="myInput" onkeyup="return myFunction();" type="text" class="form-control"  placeholder="Search"  required>                 
                </div>                  
              </div>
                </div>           
            <div class="form-row">
                <div class="col-sm-5">
              <div class="col">
                <div class="form-group">
                  <label>Date From</label>
                  <input id="date_input" name="date_input" type="date" class="form-control"  required>                                
                </div>
              </div>
                </div>
                <div class="col-sm-5">
              <div class="col">
                <div class="form-group">
                  <label>Date To</label>
                 <input id="date_input2"  name="date_input2" type="date" class="form-control"  required>                
                </div>
              </div>
                </div>
                <div class="col-sm-2">
                <div class="col">
                <div class="form-group">                 
                  <input id="sbutton" name="sbutton" type="button" onclick="return searchbyDate();" class="btn button" value="Search"  required>
                </div>
              </div>
                </div> 
            </div>
	       
                <div class="col-sm-2">
                <div class="col">
                <div class="form-group">
                  <a href="addnew.jsp">
                  <input id="abutton" type="button" class="btn button1" value="Add New Timesheet"  required>
                  </a>
                </div>
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
                String uid = (String)session.getAttribute("user_id");
           Class.forName("com.mysql.jdbc.Driver");
           Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/timesheet","root","");
           Statement statement = connection.createStatement() ;
           ResultSet resultset = statement.executeQuery("select * from time_sheet where user_id='"+uid+"'") ;
            %>
            
            <table id="myTable" class="table table-striped table-hover">
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>Project ID</th>
                        <th>Date</th>
		        <th>Start Time</th>
                        <th>End Time</th>
                        <th>Total Hours</th>
                        <th>Remarks</th>
                        <th>Edit</th>
                        <th>Delete</th>
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
            </table>
             

</div>
        </div>
    </div>    

  <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
 
</body>
</html>
  