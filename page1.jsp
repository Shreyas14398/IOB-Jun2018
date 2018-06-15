<%@ page import="java.util.Date,java.lang.*,java.sql.*,java.text.*" %>
<%@ include file = "dbcon.jsp" %>
<%@ page language="java" %>
<%@ page import="java.io.*" %>

<html>
<head>
<script>
function validateForm()
  {
    var x = document.forms["myForm"]
	["rocd"].value;
	var a = document.forms["myForm"]
	["brcd"].value;
	var b = document.forms["myForm"]
	["roname"].value;
	var d = document.forms["myForm"]
	["brname"].value;
	var e = document.forms["myForm"]
	["name"].value;
	var g = document.forms["myForm"]
	["last_sanc_dt"].value;
	var h = document.forms["myForm"]
	["facility"].value;
	var i = document.forms["myForm"]
	["rate_of_interest"].value;
	var j = document.forms["myForm"]
	["margin"].value;
	var k = document.forms["myForm"]
	["renewal_dt"].value;
	var l = document.forms["myForm"]
	["cusid"].value;
	var m= document.forms["myForm"]
	["limit"].value;

	if(x=="" || a=="" || b=="" || d=="" || e=="" || g==""|| h=="" || i=="" || j=="" || k==""|| l==""|| m=="")
	{
		alert("Field(s) Incomplete.....");
	   return false;
	}
	if(isNaN(x)||isNaN(a)||isNaN(h)||isNaN(i)||isNaN(j)||isNaN(l)||isNaN(m))
	{ 
	  alert("Datatype mismatch (Numeric)....");
	  return false;
	}

  }
</script>
<title>

</title>
</head>
<body style= "background-color:#232B2B ">
 <br><br>
<h1 style="text-align = center ; font-size:45px ; color:WHITE" >Form</h1>
<br>
 <form name="myForm" action="page2.jsp" onsubmit="return validateForm()" method="post">

<div style="background-color:#4EB1BA" class="attributes">
  <h3 style="margin-left=1%"> RO_CD </h3> <br>
  <h3 style="margin-left=1%"> RO_NAME </h3> <br>
  <h3 style="margin-left=1%"> CUS_ID </h3> <br>
  <h3 style="margin-left=1%"> CUS_NAME </h3> <br>
  <h3 style="margin-left=1%">  BR_CD </h3> <br>
  <h3 style="margin-left=1%">  BR_NAME </h3> <br>
  
  <h3 style="margin-left=1%">  LIMIT </h3> <br>
  <h3 style="margin-left=1%"> LAST_SANC_DT </h3> <br>
  <h3 style="margin-left=1%"> FACILITY </h3> <br>
  <h3 style="margin-left=1%"> RATE_OF_INTEREST </h3> <br>
  <h3 style="margin-left=1%"> MARGIN </h3> <br>
  <h3 style="margin-left=1%"> RENEWAL_DT </h3> <br>
</div>

<div class="values">
  <input type="number" name="rocd" id="rocd"><br><br><%//f3%><br>

<input type="text" name="roname" id="roname" ><br><br><%//f4%><br>
  <input type="number" name="cusid" id="cusid"><br><br><%//f5%><br>
    <input type="text" name="name" id="name"><br><br><%//f6%><br>
  <input type="number" name="brcd" id="brcd"><br><br><%//f1%><br>


  <input type="text" name="brname" id="brname" ><br><br><%//f2%><br>
     <input type="number" name="limit" id="limit"><br><br><%//f8%><br>


  <input type="date" name="last_sanc_dt" id="last_sanc_dt" ><br><br><%//f11%><br>
   <input type="number" name="facility" id="facility"><br><br><%//f7%><br>


<input type="number" name="rate_of_interest" id="rate_of_interest" ><br><br><%//f9%><br>

  <input type="number" name="margin" id="margin"><br><br><%//f10%><br>

  <input type="date" name="renewal_dt" id="renewal_dt" ><br><br><%//f12%><br>

</div>
<br><br>
<div class="submit_button">
<input style="height:30 " type="submit" value="Submit">
</div>
</form>

<style>
 .attributes{
   border:2px solid darkgrey;
   margin-left:35%;
   margin-right:30%;
   }
 .values{

   margin-left :57%;
   margin-top:-39.5%;
   margin-right :35%;
   
}
h3{
  font-size:20px;
}
 input{
   font-size:105%;
   height:22 px;
}
 .submit_button
{
   margin-left:48.5%;
}

</style>
</body>
</html>