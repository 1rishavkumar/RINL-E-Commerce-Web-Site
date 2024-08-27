
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <form action="loginAction.jsp" method = "post">
  <input type = "email" name ="email" placeholder =" Enter Email" required>
    <input type = "password" name ="password" placeholder =" Enter Password" required>
    <input type = "submit" value ="login">
  
  </form>
     
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin'>
  <%
  String msg = request.getParameter("msg");
  if("notexist".equals(msg))
  {
	%>  
	  <h1>Incorrect Username or Password</h1>
	
<%} %>
<%if("invalid".equals(msg)) 
{%>
  <h1>Some thing Went Wrong! Try Again !</h1>
<% } %>
    <h2>Online Shopping</h2>
    <p>The mission of RINL is to produce high-quality steel products and provide customers with excellent service while promoting sustainable development and contributing to the growth of the Indian economy.</p>
  <img src="https://5.imimg.com/data5/SELLER/Default/2023/8/331299321/GN/UP/SP/11858590/vizag-tmt-bars-1000x1000.jpg" alt="Company Logo" style="display: block; margin: 10px auto 0; width: 100px; height: 100px;"> 
    
  </div>
</div>

</body>
</html>