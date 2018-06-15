<%@ include file = "dbcon.jsp" %>
<%@ page language="java" %>
<%@ page import="java.util.Date,java.lang.*,java.sql.*,java.text.*" %>
<%@ page import="java.io.*" %>
<html>
<head>
<title></title>
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
 rocd1=request.getParameter("rocd3");
 roname1=request.getParameter("roname3");
 brcd1=request.getParameter("brcd3");
 brname1=request.getParameter("brname3");
 name1=request.getParameter("name3");
 last_sanc_dt1=request.getParameter("lastsc");
 facility1=request.getParameter("facility3");
 rot1=request.getParameter("rot3");
 margin1=request.getParameter("mar1");
 renewal1=request.getParameter("ren1");
 cusid1=request.getParameter("cus3");
 limit1=request.getParameter("lim1");
 
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
<center>
<h2>
EDITED SUCCESSFULLY !!!!!!</h2>
<br><br><br>
<a href="page3.jsp"><h2>Back</h2></a>


</body>
</html>