<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.min.css"/>
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css"/>
<link rel="stylesheet" type="text/css" href="css/a.css">

<script src="http://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
<script src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.11/jquery.mask.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>


<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.7.1/locales/bootstrap-datepicker.fr.min.js"></script>
<script>
$(document).ready(function() {
// Bootstrap datepicker
$('.input-daterange input').each(function() {
  $(this).datepicker('clearDates');
});

// Extend dataTables search
$.fn.dataTable.ext.search.push(
  function(settings, data, dataIndex) {
    var min = $('#min').val();
    var max = $('#max').val();
    var createdAt = data[1] || 1; // Our date column in the table

    if (
      (min == "" || max == "") ||
      (moment(createdAt).isSameOrAfter(min) && moment(createdAt).isSameOrBefore(max))
    ) {
      return true;
    }
    return false;
  }
);

// Re-draw the table when the a date range filter changes
$('.date-range-filter').change(function() {
    var table = $('#data-table').DataTable();
  table.draw();
});
   
 $.datepicker.setDefaults($.datepicker.regional['es']);
        
$('.date-range-filter').datepicker({
 todayHighlight: true

});
});
</script>
<body>
    <div class="container-sm">
			<div class="modal-content">					
			<div class="modal-body">
    
    <div class="col-sm-8">
                            <div class="input-group input-daterange">
                                <input type="text" class="form-control date-range-filter" placeholder="Date Start" data-date-format="dd-mm-yyyy" id="min" />
                            </div>
    </div>
    <div class="col-sm-8">
                            <div class="input-group input-daterange">
                                <input type="text" class="form-control date-range-filter" placeholder="Date End" data-date-format="dd-mm-yyyy" id="max"/>
                            </div>
                        </div>
                            </div>
                        </div>
    </div>
</body>

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
    <table id="data-table" class="table table-striped table-hover" >
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
            
                                 