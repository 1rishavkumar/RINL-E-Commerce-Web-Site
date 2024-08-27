<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>

<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String mobileNumber = request.getParameter("MobileNumber");
String securityQuestion = request.getParameter("securityQuestion");
String answer = request.getParameter("answer");
String password = request.getParameter("password");

try {
    Connection con = ConnectionProvider.getCon();
    if (con != null) {
        PreparedStatement ps = con.prepareStatement("INSERT INTO users (name, email, MobileNumber, securityQuestion, answer, password) VALUES (?, ?, ?, ?, ?, ?)");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, mobileNumber);
        ps.setString(4, securityQuestion);
        ps.setString(5, answer);
        ps.setString(6, password);
        int result = ps.executeUpdate();

        if (result > 0) {
            response.sendRedirect("signup.jsp?msg=valid");
        } else {
            response.sendRedirect("signup.jsp?msg=invalid");
        }
        con.close();
    } else {
        response.sendRedirect("signup.jsp?msg=invalid");
    }
} catch (Exception e) {
    e.printStackTrace();
    response.sendRedirect("signup.jsp?msg=invalid");
}
%>
