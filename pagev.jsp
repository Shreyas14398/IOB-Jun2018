<%@ page import="java.util.Date,java.lang.*,java.sql.*,java.text.*" %>
<%@ include file = "dbcon.jsp" %>
<%@ page language="java" %>
<%@ page import="java.io.*" %>
<html>
<head>
<title>
viewpage
</title>
</head>
<body>
<%

String no= request.getParameter("qno");

// int n= Integer.parseInt(no);
ResultSet  rs1 = null;
    String  st1 = null;
	String jf7=null,jf8=null,jf9=null,jf10=null,jf11=null,jf12=null,jf6 = null,jf5= null,jf4 = null,jf3= null,jf2 = null,jf1 = null;Double jf0=0.0;
    PreparedStatement pstmt;
	 st1 = "select * from TEMP_INTERNSHIP where SNO = "+no;
    pstmt = cn.prepareStatement(st1);
		
    rs1 = pstmt.executeQuery();  

        while(rs1.next())
			{
				 jf12 = rs1.getString(12);
				 jf11 = rs1.getString(11);
				 jf10 = rs1.getString(10);
				 jf9=  rs1.getString(9);
				 jf8= rs1.getString(8);
				 jf7 = rs1.getString(7);
				 jf6=  rs1.getString(6);
				 jf5= rs1.getString(5);
				 jf4= rs1.getString(4);
				 jf3 = rs1.getString(3);
				 jf2=  rs1.getString(2);
				 jf1= rs1.getString(13);
				 jf0=rs1.getDouble(1);
				 	
			}
		rs1.close();
		cn.close();
		
				 %>
				 <style>
table{
 font-family:Times New Roman,sans-serif;
 border-collapse:collapse;
 width:40%;
 border:1px solid white;
 height:50%;
 margin-left:5%;
 margin-top:-3%;
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
  <h2>
    
  </h2>
<table>
<tr>
<th>Attributes</th>
<th>Values</th>
</tr>
<tr>
<td>ROCD </td>
<td><%out.println(jf4);%></td>

</tr>
<tr>
<td>RONAME</td>
<td><% out.println(jf5);%></td><br>
</tr>
<tr>
<td>BRCD</td>
<td><%out.println(jf2);%></td><br>
</tr>
<tr>
<td>BRNAME</td>
<td><% out.println(jf3);%></td><br>
</tr>
<tr>
<td>NAME </td>
<td><% out.println(jf7);%></td><br>
</tr>
<tr>
<td>LAST_SANC_DT</td>
<td><% out.println(jf12);%></td><br>
</tr>
<tr>
<td>FACILITY</td>
<td><% out.println(jf8);%></td><br>
</tr>
<tr>
<td>RATE_OF_INTEREST</td>
<td><%out.println(jf10);%></td><br>
</tr>
<tr>
<td>MARGIN</td>
<td><% out.println(jf11);%></td><br>
</tr>
<tr>
<td>RENEWALDT</td>
<td><%out.println(jf1);%></td><br>
</tr>
<tr>
<td>CUS_ID</td>
<td><%out.println(jf9);%></td><br>
</tr>
<tr>
<td>LIMIT</td>
<td><%out.println(jf6);%></td><br>
</tr>

</table>
				 
				 
 
</body>
</html>