<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<style type="text/css">
table tr:not(first-child) th {
	float: right;
}
</style>

<script language="javascript">

	function myfun()
	{
		
		
		
		var uname=document.getElementById("idname").value;
		len=uname.length;
		
		if(len==0)
		{
			alert("UserName filed can't be kept blank");
			document.getElementById("idname").focus();
			return false;
		}
		
		var pass=document.getElementById("idpass").value;
		
		if(pass.length==0)
		{
			alert("Password filed can't be kept blank");
			document.getElementById("idpass").focus();
			return false;
		}

		

		var pass1=document.getElementById("idpass1").value;
		
		if(pass1.length==0)
		{
			alert("Confirm Password filed can't be kept blank");
			document.getElementById("idpass1").focus();
			return false;
		}
		else if(pass!=pass1)
		{
			alert("Confirm password dosen't match the password filed");
			document.getElementById("idpass1").focus();
			return false;
			
		}

		var fname=document.getElementById("idfname").value;
		
		if(fname.length==0)
		{
			alert("FirstName filed can't be kept blank");
			document.getElementById("idfname").focus();
			return false;
		}	

		var lname=document.getElementById("idlname").value;
		
		if(lname.length==0)
		{
			alert("LastName filed can't be kept blank");
			document.getElementById("idlname").focus();
			return false;
		}	

			
		var x = document.getElementById("idemail").value;
	    var atpos = x.indexOf("@");
	    var dotpos = x.lastIndexOf(".");
		if(atpos<1 || dotpos<(atpos+2) || (dotpos+2)>=x.length) 
	      {
		  		alert("Invalid Email ID");        
				document.getElementById("idemail").focus();
				return false;
	       }

		
		var phone=document.getElementById("idphone").value;
		
		
		if(phone.length>10 || phone.length<10)
		{
			alert("Phone No. should not be less than or greater than 10 digits");
			document.getElementById("idphone").focus();
			return false;
		}	
		
				
	var loc=document.getElementById("idloc").value;
		
		if(loc.length==0)
		{
			alert("Location filed can't be kept blank");
			document.getElementById("idloc").focus();
			return false;
		}	


	}

</script>

</head>

<body>

<a href="List">Show</a>
	<form action="Register">
		<table align="center">

			<tr>
				<th colspan="2" align="center">Register</th>
			</tr>
			<tr>
				<th>UserName</th>
				<td><input type="text" name="uname" id="idname"></td>
			</tr>

			<tr>
				<th>Password</th>
				<td><input type="password" name="pass" id="idpass"></td>
			</tr>

			<tr>
				<th>Confirm Password</th>
				<td><input type="password" name="pass1" id="idpass1"></td>
			</tr>

			<tr>
				<th>FirstName</th>
				<td><input type="text" name="fname" id="idfname"></td>
			</tr>

			<tr>
				<th>LastName</th>
				<td><input type="text" name="lname" id="idlname"></td>
			</tr>

			<tr>
				<th>Email</th>
				<td><input type="text" name="email" id="idemail"></td>
			</tr>

			<tr>
				<th>Phone No</th>
				<td><input type="text" name="phone" id="idphone"></td>
			</tr>

			<tr>
				<th>Location</th>
				<td><input type="text" name="loc" id="idloc"></td>
			</tr>

			<tr>
				<td colspan="2" align="center">
				<input type="submit" name="Submit" value="Register" onclick="return myfun()">
				</td>
				<td><input type="reset" value="Reset"></td>
			</tr>
			

		</table>

	</form>
</body>
</html>