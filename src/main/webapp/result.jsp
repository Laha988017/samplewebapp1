<!DOCTYPE html>
<html>
<head>
	<title>Test</title>
	<script type="text/javascript">
	function fun()
	{
  	var p=document.getElementById("Roll").value;
  	var q=document.getElementById("Name").value;
  	var m1 = document.getElementById("Marks1").value;
  	var m2 = document.getElementById("Marks2").value;
  	var m3 = document.getElementById("Marks3").value;

  	if(p=="")
    {
	  alert("Roll cannot be empty");
	  document.getElementById("Roll").focus();
	  return false;
	}
   	if(q=="")
    {
	  alert("Name cannot be empty");
	  document.getElementById("Name").focus();
	  return false;
	}
	if(Marks1=="" || Marks1>100)
    {
	  alert("Name cannot be empty");
	  document.getElementById("Name").focus();
	  return false;
	}	
  	return true;
}

function check_data1(x)
   {
      
      var str="0123456789";
	  i=0;
	  //number_of_decimal_point=0;
	  while(i<x.value.length)
	      {
		    
		    if(str.indexOf(x.value.charAt(i))==-1)
			    {
				  x.value=x.value.substring(0,i);
				  return false;
				}
			 /*if(".".indexOf(x.value.charAt(i))!=-1)
			    {
				  number_of_decimal_point++;
				  if(number_of_decimal_point>1)
				    {
					   x.value=x.value.substring(0,i);
				       return false;
					 }
				}*/
			 i++;
		  }
	 
   }
  function check_data2(x)
   {
      
      var str="0123456789.";
	  i=0;
	  number_of_decimal_point=0;
	  while(i<x.value.length)
	      {
		    
		    if(str.indexOf(x.value.charAt(i))==-1)
			    {
				  x.value=x.value.substring(0,i);
				  return false;
				}
			 if(".".indexOf(x.value.charAt(i))!=-1)
			    {
				  number_of_decimal_point++;
				  if(number_of_decimal_point>1)
				    {
					   x.value=x.value.substring(0,i);
				       return false;
					 }
				}
			 i++;
		  }
 
   }
  function check_data3(x)
   {
      
      var str="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopurstuvwxyz ";
	  i=0;
	  //number_of_decimal_point=0;
	  while(i<x.value.length)
	      {
		    
		    if(str.indexOf(x.value.charAt(i))==-1)
			    {
				  x.value=x.value.substring(0,i);
				  return false;
				}
			 /*if(".".indexOf(x.value.charAt(i))!=-1)
			    {
				  number_of_decimal_point++;
				  if(number_of_decimal_point>1)
				    {
					   x.value=x.value.substring(0,i);
				       return false;
					 }
				}*/
			 i++;
		  }
	 
   }
   function calcutate()
   {
   		var Marks1 = document.getElementById("Marks1").value;
   		var Marks2 = document.getElementById("Marks2").value;
   		var Marks3 = document.getElementById("Marks3").value;
   		var m1,m2,m3;
   		m1 = Marks1 - 0 ;
   		m2 = Marks2 - 0;
   		m3 = Marks3 - 0;
   		var Total = m1+m2+m3;
   		document.getElementById("Total").value = Total;
   }
	</script>
</head>
<body>
	<center>
		<%@include file = "header.jsp"%>
		<br><br><br>
		<form method="post" action="resultmarksheet.jsp" onsubmit="return fun();">
			<table>
			<tr>
				<td>Enter Roll No.</td>
				<td><input type="text" name="Roll" id="Roll" onkeyup="check_data1(Roll);"></td>
			</tr>
			<tr>
				<td>Enter Your Name</td>
				<td><input type="text" name="Name" id="Name" onkeyup="check_data3(Name)"></td>
			</tr>
			<tr>
				<td>Enter Marks obtained in Physics</td>
				<td><input type="text" name="Marks1" id="Marks1" onkeyup="check_data2(Marks1);calcutate();" ></td>
			</tr>
			<tr>
				<td>Enter Marks obtained in Chemistry</td>
				<td><input type="text" name="Marks2" id="Marks2" onkeyup="check_data2(Marks2);calcutate();" ></td>
			</tr>
			<tr>
				<td>Enter Marks obtained in Mathametics</td>
				<td><input type="text" name="Marks3" id="Marks3" onkeyup="check_data2(Marks3);calcutate();" ></td>
			</tr>
			<tr>
				<td>Total</td>
				<td><input type="text" name="Total" id="Total" readonly="true" value=""></td>
			</tr>
		</table>
		<br><br>
		<input type="submit" name="Submit" value="SUBMIT">&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" name="Clear" value="CLEAR">
		</form>
	</center>
	<br><br><br>
	<%@include file= "footer.jsp"%>
</body>
</html>