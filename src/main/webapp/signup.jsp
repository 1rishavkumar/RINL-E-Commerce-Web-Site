<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="css/signup-style.css">
  <title>SIGNUP</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    <form action="signupAction.jsp" method="post">
      <input type="text" name="name" placeholder="Enter Name" required>
      <input type="email" name="email" placeholder="Enter Email" required>
      <input type="number" name="MobileNumber" placeholder="Enter Mobile Number" required>
      <select name="securityQuestion" required>
        <option value="What is the name of your first pet?">What is the name of your first pet?</option>
        <option value="In what city were you born?">In what city were you born?</option>
        <option value="What is the name of your favorite teacher?">What is the name of your favorite teacher?</option>
        <option value="What is your favorite color?">What is your favorite color?</option>
      </select>
      <input type="text" name="answer" placeholder="Enter Answer" required>
      <input type="password" name="password" placeholder="Enter Password" required>
      <input type="submit" value="Sign Up">
    </form>
    <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
  <%
  String msg = request.getParameter("msg");
  if ("valid".equals(msg)) {
  %>
    <h1>Successfully Registered</h1>
  <% } else if ("invalid".equals(msg)) { %>
    <h1>Something Went Wrong! Try Again!</h1>
  <% } %>
  
    <h2>Online Shopping</h2>
    <p>The mission of RINL is to produce high-quality steel products, provide customers with excellent service, promote sustainable development, and contribute to the growth of the Indian economy.</p>
  <img src="https://5.imimg.com/data5/SELLER/Default/2023/8/331299321/GN/UP/SP/11858590/vizag-tmt-bars-1000x1000.jpg" alt="Company Logo" style="display: block; margin: 10px auto 0; width: 300px; height: 250px;"> 
  </div>
</body>
</html>
