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
	["fname"].value;
	var a = document.forms["myForm"]
	["sdate"].value;
	var b = document.forms["myForm"]
	["fdate"].value;
	
	var d = document.forms["myForm"]
	["snumber"].value;
	var e = document.forms["myForm"]
	["fnumber"].value;
	
	var g = document.forms["myForm"]
	["sname"].value;
	if(x=="" || a=="" || b=="" || d=="" || e=="" || g=="")
	{
		alert("Field(s) Incomplete.....");
	   return false;
	}
	if(isNaN(d)||isNaN(e))
	{ 
	  alert("Datatype mismatch (Numeric)....");
	  return false;
	}
	if(!isNaN(x)|| !isNaN(g))
	{ 
	  alert("Datatype mismatch (Text)....");
	  return false;
	}
	var inp1=document.getElementById("fdate");
	var inp2=document.getElementById("sdate");
	if(!inp1.checkValidity()||!inp2.checkValidity())
	{
	  alert("Datatype mismatch (date)");
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
<br><br>
 <form name="myForm" action="page2.jsp" onsubmit="return validateForm()" method="post">
<br><br><br>
<div style="background-color:#4EB1BA" class="attributes">
  <h3 style="margin-left=1%"> Start Date </h3> <br>
  <h3 style="margin-left=1%"> End Date </h3> <br>
  <h3 style="margin-left=1%"> First number </h3> <br>
  <h3 style="margin-left=1%"> Second number </h3> <br>
  <h3 style="margin-left=1%"> First name </h3> <br>
  <h3 style="margin-left=1%"> Surname </h3> <br>
</div>

<div class="values">
  <input type="date" name="fdate" id="fdate"><br><br><br>

<input type="date" name="sdate" id="sdate" ><br><br><br>

  <input type="number" name="fnumber" id="fnumber"><br><br><br>

  <input type="number" name="snumber" id="snumber" ><br><br><br>
  <input type="text" name="fname" id="fname"><br><br><br>

  <input type="text" name="sname" id="sname" ><br><br><br>

</div>
<br><br><br><br>
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
   margin-top:-22%;
   margin-right :35%;
   
}
h3{
  font-size:28px;
}
 input{
   font-size:100%;
   height:28px;
}
 .submit_button
{
   margin-left:48.5%;
}

</style>
</body>
</html>