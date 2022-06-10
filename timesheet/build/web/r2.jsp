<!DOCTYPE html>
<html>
<head>
    <script>
        var code;
        function createCaptcha() {
                var chr1 = Math.ceil(Math.random() * 10) + '';  
            var chr2 = Math.ceil(Math.random() * 10) + '';  
            var chr3 = Math.ceil(Math.random() * 10) + '';  
  
            var str = new Array(4).join().replace(/(.|$)/g, function () { return ((Math.random() * 36) | 0).toString(36)[Math.random() < .5 ? "toString" : "toUpperCase"](); });  
            var captchaCode = str + chr1 + ' ' + chr2 + ' ' + chr3;  
            document.getElementById("txtCaptcha").value = captchaCode;
        }
        function validate()
            {
                var fname=/^[a-zA-Z]+$/;
                var fnm=document.Myform.fname.value;
                if(fname.test(fnm)==false) 
                {
                    alert("Please Enter Only Alphabets in First Name...");
                    document.Myform.fname.focus();                
                    return false;
                }
                if(fnm.length<2)
                {
                    alert("Please Enter Firsr Name atleast 2 characters...");
                    document.Myform.fname.focus();                
                    return false;
                }
                
                var lname=/^[a-zA-Z]+$/;
                var lnm=document.Myform.lname.value;
                if(lname.test(lnm)==false) 
                {
                    alert("Please Enter Only Alphabets in Last Name...");
                    document.Myform.lname.focus();                
                    return false;
                }
                if(lnm.length<2)
                {
                    alert("Please Enter Last Name atleast 2 characters...");
                    document.Myform.lname.focus();                
                    return false;
                }
                var pass=document.Myform.psw.value;
                var compass=document.Myform.cpsw.value;
                if(pass.length<6)
                {
                    alert("Please Enter Password atleast 6 Characters...");
                    document.Myform.psw.focus();                
                    return false;
                }
                if(pass!=compass)
                {
                    alert("Please Enter Confirm Password Same as Password");
                    document.Myform.cpsw.focus();                
                    return false;
                }
                
                var mob=/^[0-9]{10}$/;
                var mnumber = document.getElementById('mnm').value;
                if(mob.test(mnumber)==false)
                {
                    alert("mobile number must be 10 digits...!!");
                    return false;
                }
                var eml=document.Myform.email.value;
                var email=/^[a-z0-9]+@[a-z]+.(com|org)$/;
                if(email.test(eml)==false)
                {
                    alert("Please Enter in Formated Email Address...");
                    document.Myform.email.focus();                
                    return false;
                }
                
            }
        
            function validatecaptcha() {
            var str1 = removeSpaces(document.getElementById('txtCaptcha').value);  
            var str2 = removeSpaces(document.getElementById('txtCompare').value);            
            if (str1 != str2) {
                alert("Invalid Captcha...");
                return false;
            }
            else{
                    return true; 
            }
        }
        function removeSpaces(string) {  
            return string.split(' ').join('');  
        }
</script>
<%
    session.invalidate();%>
<%
    String m = request.getParameter("id");
    if (m != null && m.equalsIgnoreCase("exp")) {
        out.println("<script type=text/javascript>alert('Sorry, your session expired, login again '); </script>");
    }
%>
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/r2.css">
        
<link href="https://fonts.googleapis.com/css2?family=Jost:wght@500&display=swap" rel="stylesheet">
</head>
<body onload="createCaptcha()">
	<div class="main">  	
		<input type="checkbox" id="chk" aria-hidden="true">

			<div class="signup">
                            <form name="Myform" action="register.jsp" method="post" onsubmit="return validate();">
					<label>Sign up</label>
					
                                        <input type="text" name="fname" placeholder="First name" required="">
                                        <input type="text" name="lname" placeholder="Last name" required="">
                                        <input type="text" name="mnumber" placeholder="Contact no" maxlength="10" required="">
					<input type="email" name="email" placeholder="Email" id="eid" required="">
					<input type="password" name="psw" placeholder="Password" required="">
                                        <input type="password" name="cpsw" placeholder="Confirm Password" required="">
                                        
                                        <div id="captcha" align="center">
                                        </div>
                                        
                                        
                                        <div>
                                            <td><input type="text" id="txtCompare" style=" font-size: 20px; font-family: Garamond;" placeholder="Enter Capcha" />  </td>
                                             <td><input type="text" id="txtCaptcha" style="text-align: center; border: none;font-weight: bold; font-size: 20px; font-family: Modern" />  </td>
                                        </div>
                                        
                                        <button onclick="createCaptcha()">Refresh</button>
                                        
                                        
                                        <button onclick="return validatecaptcha();">Sign up</button>
				</form>
			</div>
                

			
	</div>
</body>
</html>