<html>
<head>
<title>
Display the data
</title>
</head>
<body>
<style>
table{
 font-family:Times New Roman,sans-serif;
 border-collapse:collapse;
 width:40%;
 border:1px solid white;
 height:50%;
 margin-left:5%;
}
th{
  background-color:darkgrey;
  color:black;
  text-align:left;
  border:1px solid white;
  padding : 8px;
}
td{
  background-color:darkblue;
  color:white;
  text-align:left;
  border:1px solid white;
  padding : 8px;
}
tr:nth-child(odd)
{
background-color:blue;
}
</style>
<br><br><br>
<h1 style="text-align:center;"><u><i>Information</i> </u></h1>
<center>
<table>
<tr>
<th>Attributes</th>
<th>Values</th>
</tr>
<tr>
<td>First Name </td>
<td><%=request.getParameter("fname")%></td>
</tr>
<tr>
<td>Surname </td>
<td><%=request.getParameter("sname")%></td><br>
</tr>
<tr>
<td>First number </td>
<td><%=request.getParameter("fnumber")%></td><br>
</tr>
<tr>
<td>Second number  </td>
<td><%=request.getParameter("snumber")%></td><br>
</tr>
<tr>
<td>Start date </td>
<td><%=request.getParameter("fdate")%></td><br>
</tr>
<tr>
<td>End date </td>
<td><%=request.getParameter("sdate")%></td><br>
</tr>

</table>

</body>
</html>