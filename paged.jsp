<%@ page import="java.util.Date,java.lang.*,java.sql.*,java.text.*" %>
<%@ include file = "dbcon.jsp" %>
<%@ page language="java" %>
<%@ page import="java.io.*" %>

<html>
<head>
<title>
deletepage
</title>
</head>
<body>
<center>
<h2>
Data Deleted Successfully !!
<br><br><br><br>
</h2>
<style>
table{
 font-family:Times New Roman,sans-serif;
 border-collapse:collapse;
 width:40%;
 border:1px solid white;
 height:5%;
 margin-left:5%;
 margin-top:-3%;
}
a{
color:white;
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
  <center>
  <table>
  <tr>
<th>S.NO  </th>
<th>ROCD  </th>
<th>RONAME </th>
<th>BRCD  </th>
<th>BRNAME  </th>
<th>NAME </th>
<th>LAST_SANC_DT</th>
<th>FACILITY </th>
<th>RATE_OF_INTEREST</th>
<th>MARGIN</th>
<th>RENEWAL_DT</th>
<th>LIMIT</th>
<th>CUS_ID</th>

</tr>
<%
String no= request.getParameter("qno");

// int n= Integer.parseInt(no);
ResultSet  rs1 = null;
    String  st1 = null,sop;int cnt=0;
 String jf7=null,jf8=null,jf9=null,jf10=null,jf11=null,jf12=null,jf6 = null,jf5= null,jf4 = null,jf3= null,jf2 = null,jf1 = null,jf0=null;	
    PreparedStatement pstmt;
	 st1 = "delete from TEMP_INTERNSHIP where SNO = "+no;
    pstmt = cn.prepareStatement(st1);
		
 rs1= pstmt.executeQuery();  

 
    
    st1="select * from TEMP_INTERNSHIP";
    pstmt = cn.prepareStatement(st1);
rs1=	pstmt.executeQuery();   
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
				 jf0=rs1.getString(1);
				 
				 
				 %>
				 



<tr>
<td style="padding:0 0 0 0;"><input type="number" id="sno1" name="sno1" maxlength="20" value="<%=jf0%>" readonly style="text-align:right;margin:0 0 0 0;border:none;background-color:darkblue;color:white;height:35px;width:100%;"></td>
<td style="padding:0 0 0 0;text-align:right;margin:0 0 0 0;border:1px solid;background-color:darkblue;color:white;height:35px;width:100%;"><%out.print(jf4);%> </td>
<td style="padding:0 0 0 0;text-align:right;margin:0 0 0 0;border:1px solid;background-color:darkblue;color:white;height:35px;width:100%;"><%out.print(jf5);%> </td>
<td style="padding:0 0 0 0;text-align:right;margin:0 0 0 0;border:1px solid;background-color:darkblue;color:white;height:35px;width:100%;"><%out.print(jf2);%> </td>
<td style="padding:0 0 0 0;text-align:right;margin:0 0 0 0;border:1px solid;background-color:darkblue;color:white;height:35px;width:100%;"><%out.print(jf3);%> </td>
<td style="padding:0 0 0 0;text-align:right;margin:0 0 0 0;border:1px solid;background-color:darkblue;color:white;height:35px;width:100%;"><%out.print(jf7);%> </td>
<td style="padding:0 0 0 0;text-align:right;margin:0 0 0 0;border:1px solid;background-color:darkblue;color:white;height:35px;width:100%;"><%out.print(jf12);%> </td>
<td style="padding:0 0 0 0;text-align:right;margin:0 0 0 0;border:1px solid;background-color:darkblue;color:white;height:35px;width:100%;"><%out.print(jf8);%> </td>
<td style="padding:0 0 0 0;text-align:right;margin:0 0 0 0;border:1px solid;background-color:darkblue;color:white;height:35px;width:100%;"><%out.print(jf10);%> </td>
<td style="padding:0 0 0 0;text-align:right;margin:0 0 0 0;border:1px solid;background-color:darkblue;color:white;height:35px;width:100%;"><%out.print(jf11);%> </td>
<td style="padding:0 0 0 0;text-align:right;margin:0 0 0 0;border:1px solid;background-color:darkblue;color:white;height:35px;width:100%;"><%out.print(jf1);%></td>
<td style="padding:0 0 0 0;text-align:right;margin:0 0 0 0;border:1px solid;background-color:darkblue;color:white;height:35px;width:100%;"><%out.print(jf9);%> </td>
<td style="padding:0 0 0 0;text-align:right;margin:0 0 0 0;border:1px solid;background-color:darkblue;color:white;height:35px;width:100%;"><%out.print(jf6);%></td>



</tr>
<br>

<%

	
			}
		rs1.close();
		cn.close();
	
%>  
</table>
				 

</body>
</html>