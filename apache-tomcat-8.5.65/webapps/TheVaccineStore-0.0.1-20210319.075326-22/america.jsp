<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.mid
{
  text-align: center;
}
table,th
{
	padding: 10px 10px ;
	
}

</style>
</head>
<body style="background-color:#1E90FF">
<h1 class="mid">VACCINES AVAILABLE IN AMERICA</h1>
<%  

ArrayList<String> list = (ArrayList<String>)request.getAttribute("AmericanVaccines");		


for(String name : list) {
    %><table><tr><th><%
    out.println(name);}
  %></th></tr></table> 
</body>
</html>
