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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script>
           $(document).ready(function()   {
            var dtToday = new Date();

            var month = dtToday.getMonth() + 1;
            var day = dtToday.getDate();
            var month1 = dtToday.getMonth() + 1;
            var day2 = dtToday.getDate()-7;
            
            var year = dtToday.getFullYear();

            if(month < 10)
                month = '0' + month.toString();
            if(day < 10)
                day = '0' + day.toString();
            if(month1 < 10)
                month1 = '0' + month1.toString();
            if(day2 < 10)
                day2 = '0' + day2.toString();
            var maxDate = year + '-' + month + '-' + day;    
            var minDate = year + '-' + month1 + '-' + day2;    

            $('#date').attr('max', maxDate);
            $('#date').attr('min', minDate);

})
      <%-- String time1 = document.getElementById("stime").value.toString();
           String time2 = document.getElementById("stime").value.toString();
           SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss");
           Date date1 = simpleDateFormat.parse(time1);
           Date date2 = simpleDateFormat.parse(time2);
           long differenceInMilliSeconds= Math.abs(date2.getTime()-date1.getTime());
           long differenceInHours= (differenceInMilliSeconds / (60 * 60 * 1000))% 24;
           System.out.println("Difference is " + differenceInHours + " hours ");
 --%>
            </script>
    </head>
    <body>
        <form action="addnewtimesheet.jsp" method="get">
        <div class="container-sm">
            <div class="modal-content">
                <div class="modal-header">						
                    <h4 class="modal-title">Add New Timesheet</h4>
                </div>
                <div class="modal-body">
                    <div class="form-row">
                        <div class="col">
                            <div class="form-group">
                                <label>Project id</label>
                                <select id="pids" name="pids" class="form-control">
                                    <option value="" selected disabled>A101</option>
                                    <option>A102</option>
                                    <option>A103</option>
                                    <option>B201</option>
                                    <option>B202</option>
                                    <option>B203</option>
                                </select>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label>Date</label>
                                <input id="date" name="date" type="date"   class="form-control" required>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col">
                            <div class="form-group">
                                <label>Start Time</label>
                                <input id="stime" type="time" name="stime" class="form-control" min="09:00:00"  value="16:32:55" required>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label>End Time</label>
                                <input id="etime" type="time" name="etime" class="form-control"  max="18:00:00" value="16:32:55" required>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-group">
                                <label>Total Hours</label>
                                <input id="hours" type="text" name="hours" class="form-control"required>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Remarks</label>
                        <textarea pattern="[A-z0-9 ]+" title="Does not allow special symbols " id="remarks" name="remarks" class="form-control" required></textarea>
                    </div>				
                </div>
                
                <div class="modal-footer">
                    <input id="addEmployeeButton" type="submit" class="btn btn-success" value="Add">
                </div>
            </div>
        </form>
            <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
            <script src="script.js"></script>
    </body>
</html>