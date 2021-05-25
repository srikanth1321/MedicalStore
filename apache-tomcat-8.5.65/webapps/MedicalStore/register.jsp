<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
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
    background-color:  #00CC00;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
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
<body style="background-color:orange">
	<h1>Registration Form</h1>
	<table>
	<form action="Register" method="post">
	  <div class="container">
<tr>
		<th><label><b>First Name</b></label></th>
	    <th><input type="text" placeholder="Enter First Name" name="firstname" required></th>
</tr>
<tr>
	    <th><label><b>Last Name</b></label></th>
	    <th><input type="text" placeholder="Enter Lastt Name" name="lastname" required></th>
</tr>
	<tr>
	    <th><label><b>Password</b></label></th>
	    <th><input type="password" placeholder="Enter Password" name="pass" required></th>
</tr>
	<tr>
	    <th><label><b>Confirm Password</b></label></th>
	    <th><input type="password" placeholder="Enter ConfirmPassword" name="confirmpass" required></th>
</tr>
	<tr>
	    <th><label><b>Email</b></label></th>
	    <th><input type="text" placeholder="Enter Email" name="email" required><th>
	</tr>
	<tr>
	    <th><button type="submit">Register</button><th>
		</tr>
	  </div>
	</table>
</form>
</body>
</html>
