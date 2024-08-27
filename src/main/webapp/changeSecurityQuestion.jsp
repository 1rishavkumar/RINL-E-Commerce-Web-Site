<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%@ include file = "changeDetailsHeader.jsp" %>
<%@ include file = "footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>
<%
String msg = request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%
}%>
<%

if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>

<form action ="changeSecurityQuestionAction.jsp"method = "post">
<h3>Select Your New Securtiy Question</h3>
  <select class = "input-style" name = "securityQuestion">
  <option value ="your fvrt food ? ">your fvrt food ? </option>
  <option value = "your fvrt place ?"> your fvrt place ?</option>
  <option value = "your fvrt person?">your fvrt person?</option>
  <option value = "your pet name ? ">your pet name ? </option>
  <option value = "your hobbies?">your hobbies?</option>
  
  </select>
 <hr>
 <h3>Enter Your New Answer</h3>
 <input class = "input-style" type = "text" name = "newAnswer" placeholder = "Enter your answer" required>
<hr>
<h3>Enter Password (For Security)</h3>
 <input class = "input-style" type = "password" name = "password" placeholder = "Enter password(for security)" required>

<hr>
 <button class = "button" type = "submit"> Save <i class='far fa-arrow-alt-circle-right'></i></button>
 </form>

</body>
<br><br><br>
</html>