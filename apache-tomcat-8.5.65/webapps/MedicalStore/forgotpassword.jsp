<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ForgotPassword</title>
<style>
form {
    border: 3px solid #f1f1f1;
}

input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

button:hover {
    opacity: 0.8;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
}
table, th, td {
   padding: 20px 60px;
 }
</style>
</head>
<body style="background-color:Yellow">
	<h1>ForgotPassword</h1>
  <table>
	<form action="GetPassword" method="post">
	  <tr><div class="container">
	    <th><label><b>Email</b></label></th>
	    <th><input type="text" placeholder="Enter Email" name="email" required></th>
</tr>
<tr>
	   <th> <label><b>New Password</b></label></th>
	   <th> <input type="password" placeholder="Enter Password" name="newpassword" required></th>
</tr>
<tr>
	   <th> <label><b>Confirm Password</b></label></th>
	    <th><input type="password" placeholder="Enter ConfirmPassword" name="confirmpassword" required></th>

</tr>
<tr>
	  <th>  <button type="submit">Submit</button></th>
	  </div>
  </tr>
</table>
</form>
</body>
</html>
