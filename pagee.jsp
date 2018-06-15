<%@ page import="java.util.Date,java.lang.*,java.sql.*,java.text.*" %>
<%@ include file = "dbcon.jsp" %>
<%@ page language="java" %>
<%@ page import="java.io.*" %>
<html>
<head>
<title>
EditPage
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
			 st1 = "delete from TEMP_INTERNSHIP where SNO = "+no;
    pstmt = cn.prepareStatement(st1);
		
    rs1 = pstmt.executeQuery();  
			out.println("hell");
		
		
		
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


<form name="Savechanges" action="page4.jsp" method="post">
<table>
<tr>
<th>Attributes</th>
<th>Values</th>
</tr>
<tr>
<td>ROCD </td>
<td style="padding:0 0 0 0;"><input type="number" id="rocd3" name="rocd3" maxlength="20" value="<%=jf4%>"  style="text-align:left;margin:0 0 0 0;border:none;background-color:darkblue;color:white;height:35px;width:100%;"></td>

</tr>
<tr>
<td>RONAME</td>
<td style="padding:0 0 0 0;"><input type="number" id="roname3" name="roname3" maxlength="20" value="<%=jf5%>"  style="text-align:left;margin:0 0 0 0;border:none;background-color:darkblue;color:white;height:35px;width:100%;"></td>
</tr>
<tr>
<td>BRCD</td>
<td style="padding:0 0 0 0;"><input type="number" id="brcd3" name="brcd3" maxlength="20" value="<%=jf2%>"  style="text-align:left;margin:0 0 0 0;border:none;background-color:darkblue;color:white;height:35px;width:100%;"></td>
</tr>
<tr>
<td>BRNAME</td>
<td style="padding:0 0 0 0;"><input type="number" id="brname3" name="brname3" maxlength="20" value="<%=jf3%>"  style="text-align:left;margin:0 0 0 0;border:none;background-color:darkblue;color:white;height:35px;width:100%;"></td>
</tr>
<tr>
<td>NAME </td>
<td style="padding:0 0 0 0;"><input type="number" id="name3" name="name3" maxlength="20" value="<%=jf7%>"  style="text-align:left;margin:0 0 0 0;border:none;background-color:darkblue;color:white;height:35px;width:100%;"></td>
</tr>
<tr>
<td>LAST_SANC_DT</td>
<td style="padding:0 0 0 0;"><input type="number" id="lastsc" name="lastsc" maxlength="20" value="<%=jf12%>"  style="text-align:left;margin:0 0 0 0;border:none;background-color:darkblue;color:white;height:35px;width:100%;"></td>
</tr>
<tr>
<td>FACILITY</td>
<td style="padding:0 0 0 0;"><input type="number" id="facility3" name="facility3" maxlength="20" value="<%=jf8%>"  style="text-align:left;margin:0 0 0 0;border:none;background-color:darkblue;color:white;height:35px;width:100%;"></td>
</tr>
<tr>
<td>RATE_OF_INTEREST</td>
<td style="padding:0 0 0 0;"><input type="number" id="rot3" name="rot3" maxlength="20" value="<%=jf10%>"  style="text-align:left;margin:0 0 0 0;border:none;background-color:darkblue;color:white;height:35px;width:100%;"></td>
</tr>
<tr>
<td>MARGIN</td>
<td style="padding:0 0 0 0;"><input type="number" id="mar1" name="mar1" maxlength="20" value="<%=jf11%>"  style="text-align:left;margin:0 0 0 0;border:none;background-color:darkblue;color:white;height:35px;width:100%;"></td>
</tr>
<tr>
<td>RENEWALDT</td>
<td style="padding:0 0 0 0;"><input type="number" id="ren1" name="ren1" maxlength="20" value="<%=jf1%>"  style="text-align:left;margin:0 0 0 0;border:none;background-color:darkblue;color:white;height:35px;width:100%;"></td>
</tr>
<tr>
<td>CUS_ID</td>
<td style="padding:0 0 0 0;"><input type="number" id="cus3" name="cus3" maxlength="20" value="<%=jf9%>"  style="text-align:left;margin:0 0 0 0;border:none;background-color:darkblue;color:white;height:35px;width:100%;"></td>
</tr>
<tr>
<td>LIMIT</td>
<td style="padding:0 0 0 0;"><input type="number" id="lim1" name="lim1" maxlength="20" value="<%=jf6%>"  style="text-align:left;margin:0 0 0 0;border:none;background-color:darkblue;color:white;height:35px;width:100%;"></td>
</tr>

</table>
<br><br>

<div class="submit_button">
<input style="height:30 " type="submit" value="save changes">
</div>				 
</form>				 
 
</body>
</html>