
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SuccessPage</title>
<style>
.mid
{
  text-align: left;
}
.siz
{
  font-size: 30px;
}
.col
{
  color: white;
}
table, th, td {
   padding: 20px 60px;
   align: center;
   }
   .button {
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
.button:hover {
    opacity: 0.8;
}
</style>
</head>
<body style="background-color:lightblue">
<h2>Login successful</h2>

<br>
<br><br>
<h1 class="mid col">Search For Medicines</h1>
<br>
<br>
<div class="mid siz">
<table>
<tr>
<th>
  <form action="ADD" method="post">
  <label for="rname">Medicine name:</label><br>
    <input type="text" placeholder="Enter Medicine" name="Medicines" required><br><br>
    <br><input type="submit" class="button" value="Add Medicine">
      </form>
      <form action="SEE" method="post">
      <input type="submit" class="button" value="See Medicine">
          </form>

</th>
</table>
</div>

</body>
</html>
