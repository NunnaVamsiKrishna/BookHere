<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>

<html>
<head>
<style>

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
body{
    background-color: #080710;
    font-family: sans-serif;    
}
.form-box
{
    height: 650px;
    width: 400px;
    background-color: rgba(255,255,255,0.13);
    position: relative;
    transform: translate(-50%,-50%);
    backdrop-filter: blur(10px);
    top: 50%;
    left: 50%;
    border-radius: 10px;
    border: 2px solid rgba(255,255,255,0.1);
    box-shadow: 0 0 40px rgba(8,7,16,0.6);
    padding: 50px 35px;
    margin-top: 100px;
}
.button {
  background-color: red;
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
select,input[type=date],textarea
{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 3px;
  box-sizing: border-box;
  font-size: 14px;
  font-weight: 300;
  
}
label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
  color: #fff
}
ul 
{
  list-style-type: none;
  margin: 0;
  padding: 0px;
  overflow: hidden;
  background-color: lightgreen;
}

li 
{
  float: left;
    border-right: 1px solid blue;
}

li a 
{
  display: block;
  color: black;
 font-size:20px;
  text-align: center;
  padding: 10px 20px;
  text-decoration: none;
}
.active
{
background-color: black;
color: white;
}
li a:hover {
  background-color: orange;
  color: white;
}
h2{
    color : #fff;
    font-size: 32px;
    font-weight: 400;
    line-height: 42px;
    text-align: center;
}
.background .shape{
    height: 200px;
    width: 200px;
    position: absolute;
    border-radius: 50%;
}
.shape:first-child{
    background: linear-gradient(
        #1845ad,
        #23a2f6
    );
    left: 280px;
    top: -80px;
}
.shape:last-child{
    background: linear-gradient(
        to right,
        #ff512f,
        #f09819
    );
    right: 300px;
    bottom: -300px;
}
</style>
</head>
<body>
 <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>


<span class="blink">
<h3 align=center style="color: red"><c:out value="${msg}"/></h3>
</span>

<br>

<div class="form-box">
<h2 align=center>Customer Registration</h2>
<br>

<form:form action="addcustomer" method="post" modelAttribute="customer" autocomplete="off">

<table align=center>

<tr>
<td><label>Name</label></td>
<td>
<form:input path="name" required="required" placeholder="name"></form:input>
</td>
</tr>


<tr><td></td></tr>

<tr>
<td><label>Gender</label></td>
<td>
<form:radiobutton path="gender" value="Male" required="required" /><label>Male</label>
<form:radiobutton path="gender" value="Female" required="required"/><label>Female</label>
</td>
</tr>


<tr>
<td><label>Email ID	</label></td>
<td><form:input path="gmail" required="required" placeholder="email"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Contactno</label></td>
<td><form:input path="contactno" required="required" placeholder="contact no"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>Password </label></td>
<td><form:input type="password" path="password" required="required" placeholder="password"/></td>
</tr>


<tr><td></td></tr>
<tr>
<td><label>Area</label></td>
<td><form:textarea path="location" required="required" placeholder="location"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>City</label></td>
<td><form:input path="city" required="required" placeholder="city"/></td>
</tr>

<tr><td></td></tr>

<tr>
<td><label>PINCODE</label></td>
<td><form:input path="pincode" required="required" placeholder="pincode"/></td>
</tr>

<tr><td></td></tr>

<tr align=center>
<td colspan=2><input type="submit" value="Register" class="button"></td>
</tr>

</table>

</form:form>

</div>

</body>
</html>