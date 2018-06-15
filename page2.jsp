<%@ page import="java.util.Date,java.lang.*,java.sql.*,java.text.*,java.text.SimpleDateFormat" %>
<%@ include file = "dbcon.jsp" %>
<%@ page language="java" %>
<%@ page import="java.io.*" %>
<html>
<head>
<title>
Display the data</title>
<%

 String rocd1=null;
 String roname1=null;
 String brname1=null;
 String brcd1=null;
 String name1=null;
 String last_sanc_dt1=null;
 String facility1=null;
 String rot1=null;
 String margin1=null;
 String renewal1=null;
 String cusid1=null;
 String limit1=null;
 ResultSet rs1=null;
String stmt1=null;
 int cnt=1;
 rocd1=request.getParameter("rocd");
 roname1=request.getParameter("roname");
 brcd1=request.getParameter("brcd");
 brname1=request.getParameter("brname");
 name1=request.getParameter("name");
 last_sanc_dt1=request.getParameter("last_sanc_dt");
 facility1=request.getParameter("facility");
 rot1=request.getParameter("rate_of_interest");
 margin1=request.getParameter("margin");
 renewal1=request.getParameter("renewal_dt");
 cusid1=request.getParameter("cusid");
 limit1=request.getParameter("limit");
 
 String sql2=null;
 PreparedStatement pStmt;

 
%>
<script>
 function insert_and_save()
 {}
</script>
  <%
  PreparedStatement pstmt;

stmt1 = "select count(*) from temp_internship";
pstmt = cn.prepareStatement(stmt1);

rs1 = pstmt.executeQuery();    

while (rs1.next()) {             
cnt = rs1.getInt(1);
}
cnt++;
rs1.close();
pstmt.close();
  sql = " insert  into Temp_Internship (SNO,BR_CODE,BR_NAME,RO_CODE,RO_NAME,CUST_ID,CUST_NAME,FACILITY,LIMIT,ROI,MARGIN,LAST_SANC_DT,RENEWAL_DT) ";
  sql = sql + " values ("+cnt+",'"+brcd1+"','"+brname1+"','"+rocd1+"','"+roname1+"','"+cusid1+"','"+name1+"','"+facility1+"','"+limit1+"','"+rot1+"','";
  sql = sql + margin1+"','"+last_sanc_dt1+"','"+renewal1+"')";
						
		        		    out.println(sql);
			    prepStmt = cn.prepareStatement(sql);
            
				prepStmt.executeUpdate();

					cn.commit();
					cn.close();
				 
  %>

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
    Data Inserted succesfully !!!
  </h2>
<table>
<tr>
<th>Attributes</th>
<th>Values</th>
</tr>
<tr>
<td>ROCD </td>
<td><%rocd1=request.getParameter("rocd"); out.println(rocd1);%></td>

</tr>
<tr>
<td>RONAME</td>
<td><%roname1=request.getParameter("roname"); out.println(roname1);%></td><br>
</tr>
<tr>
<td>BRCD</td>
<td><%brcd1=request.getParameter("brcd");out.println(brcd1);%></td><br>
</tr>
<tr>
<td>BRNAME</td>
<td><%brname1=request.getParameter("brname"); out.println(brname1);%></td><br>
</tr>
<tr>
<td>NAME </td>
<td><%name1=request.getParameter("name"); out.println(name1);%></td><br>
</tr>
<tr>
<td>LAST_SANC_DT</td>
<td><%last_sanc_dt1=request.getParameter("last_sanc_dt"); out.println(last_sanc_dt1);%></td><br>
</tr>
<tr>
<td>FACILITY</td>
<td><%facility1=request.getParameter("facility"); out.println(facility1);%></td><br>
</tr>
<tr>
<td>RATE_OF_INTEREST</td>
<td><%rot1=request.getParameter("rate_of_interest");out.println(rot1);%></td><br>
</tr>
<tr>
<td>MARGIN</td>
<td><%margin1=request.getParameter("margin"); out.println(margin1);%></td><br>
</tr>
<tr>
<td>RENEWALDT</td>
<td><%renewal1=request.getParameter("renewal_dt");out.println(renewal1);%></td><br>
</tr>
<tr>
<td>CUS_ID</td>
<td><%cusid1=request.getParameter("cusid");out.println(cusid1);%></td><br>
</tr>
<tr>
<td>LIMIT</td>
<td><%limit1=request.getParameter("limit");out.println(limit1);%></td><br>
</tr>

</table>

<form name="SaveForm" action="page3.jsp" onsubmit="return insert_save()" method="post">

<div class="submit_button">
<input style="height:30 " type="submit" value="Retrieve">
   </div>
</form>

</body>
</html>