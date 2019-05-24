<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Spring MVC form handling</title>



</head>
<body>


<h2>
Submitted User Information
</h2>

<table>
<tr><td>Username</td>
<td>${userName}</td>
</tr>

<tr>
<td>Password</td>
<td>${password}</td> 
</tr>

<tr>
<td> Subscribed to Newsletter</td>
<td>${receivePaper}</td>
 

</tr>




<tr>
<td>Gender</td>
<td>${(gender=="M"? "Male" :"Female")}</td>

</tr>
<tr>
<td>Country </td>
<td>${country}</td>
</tr>
<tr>
<td>Skills</td>
<td><% String[] skills=(String[])request.getAttribute("skills");
for (String s:skills)
{
	
	out.println(s);
}
%>
</td>

</tr>
</table>
 
 
</body>
</html>