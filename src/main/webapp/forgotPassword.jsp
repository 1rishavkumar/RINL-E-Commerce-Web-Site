<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="forgotPasswordAction.jsp" method="post">
      <input type="email" name="email" placeholder="Enter Email" required>
      <input type="number" name="MobileNumber" placeholder="Enter Mobile Number" required>
      <select name="securityQuestion" required>
        <option value="What is the name of your first pet?">What is the name of your first pet?</option>
        <option value="In what city were you born?">In what city were you born?</option>
        <option value="What is the name of your crush?">What is the name of your crush?</option>
        <option value="What is your pet name?">What is your pet name?</option>
      </select>
      <input type="text" name="answer" placeholder="Enter Answer" required>
      <input type="password" name="newPassword" placeholder="Enter new password to set" required>
      <input type="submit" value="Save">
    </form>
    <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  <%
  String msg = request.getParameter("msg");
  if ("done".equals(msg)) {
  %>
    <h1>Password Changed Successfully!</h1>
  <% } else if ("invalid".equals(msg)) { %>
    <h1>Something Went Wrong! Try Again!</h1>
  <% } %>
    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>
