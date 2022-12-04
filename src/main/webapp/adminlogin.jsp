<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>
<style>

body  {
  background: rgb(0,3,45);
background: linear-gradient(90deg, rgba(0,3,45,1) 0%, rgba(0,93,87,1) 100%);
}

.blink {
  animation: blink 1s steps(1, end) infinite;
}

@keyframes blink {
  0% {
    opacity: 1;
  }
  50% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}

.button {
  background-color: maroon;
  border-radius:25px;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

input[type=text],input[type=password],input[type=number],input[type=email],
select,input[type=date]
{

  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 20px;
  box-sizing: border-box;
}

label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
}


.box{
	background-color: white;
	padding: 20px;
	width: 350px;
	align: center;
	justify-content: center;
	text-align: center;
	width:400px;
	height:380px;
	margin-left:auto;
	margin-right:auto;
	border-radius: 15px;
}
</style>
</head>
<body>

<br>

<br><br>
<div class="box">
<h3 align=center>Admin Login</h3>

<span class="blink">
<h3 align=center style="color: red"><c:out value="${msg}"/></h3>
</span>


<br>

<form method="post" action="checkadminlogin">

<table align=center>

<tr>
<td><label>Username</label></td>
<td><input type="text" name="auname" required></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password</label></td>
<td><input type="password" name="apwd" required></td>
</tr>

<tr><td></td></tr>

<tr align=center>

<td colspan="2"><input type="submit" value="Login" class="button"></td>

</tr>

</table>

</form>

</div>


</body>
</html>

 
