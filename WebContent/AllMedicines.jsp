<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.util.Map"%>

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
</style>
</head>
<body style="background-color:red">
<h1 class="mid">MedicalStore</h1>
  <%

	Map<String,String> list1 = (Map<String,String>)request.getAttribute("AllMedicines");
	%><h2><% out.println(list1); %></h2>


   </body>
</html>
