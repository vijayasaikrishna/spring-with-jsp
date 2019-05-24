<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Home Page</title>
</head>
<body>

<!-- String password1 = request.getParameter("password1");
String password = request.getParameter("password");
 -->
<h3> 

<!-- <c:if test = "${password1==password}">
         <p> <c:out ${userName} }/> congrats your password is correct <p>
      </c:if>

 -->
User Information

<!--  <h3>Hi ${userName} please login with your username and password--> 
</h3>


<form method="POST" action = "User">

<table>

<tr>
<td><form:label path ="username">User Name</form:label></td>
<td><input type="text" id="userName" name="userName" value=""/></td>
</tr>




<!-- <form:input path = "name" />  IS SAME AS:   input id = "name" name = "name" type = "text" value = ""/>
 -->


<tr>
<td><form:label path="password"> Password</form:label></td>
<td><input type="password" id="password" name="password" /></td>
</tr>

<tr>


<td><form:label path ="address">Address</form:label></td>
<td><input type="textarea" name="address" id="address" rows="5" cols="30"/></td>

 


</tr>

<tr>
<td><form:label path="receivePaper">Subscribe Newsletter</form:label></td>
<td><input type="checkbox" name="receivePaper" id="receivePaper" /></td>
</tr>

<tr>
<td><form:label path ="Gender">Gender</form:label>
<input id = "gender1" name = "gender" type = "radio" value = "M" checked = "checked"/><label for = "gender1">Male</label>
<input id = "gender2" name = "gender" type = "radio" value = "F"/><label for = "gender2">Female</label>
</td>

<!--  <td><form:label path="gender">Gender</form:label></td>



<td>

  <input type="radiobutton" name="gender" id="gender" value="M" />
	 <input type="radiobutton" name="gender" id="gender" value="F" label="Female"/>
	
</td>-->


</tr>
<tr>

<td>
<select id="country" name="country">
<option value ="None">Select</option>
<option value="US">United States</option>
<option value="CH">China</option>
<option value="IN">India</option>
<option value="MY">Malaysia</option>
<option value="SG">Singapore</option>
 </select>
 
</td>
</tr>
<tr>
<td>

<select id="skills" name="skills" multiple ="multiple">
	<option value="Struts">Struts</option>
	<option value="Hibernate">Hibernate</option>
	<option value="Apache Wicket">Apache Wicket</option>
	<option value ="Spring"> Spring</option>
</select>

<!-- <input type="hidden" name="_skills" value="1"/>     -->
</td>

</tr>

<tr>





<td colspan="2">
	<input type="submit" value="Submit">
	</td>
	
</tr>

</table>
</form>
</body>
</html>