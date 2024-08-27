<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%
String email = request.getParameter("email");
String MobileNumber = request.getParameter("MobileNumber");
String securityQuestion = request.getParameter("securityQuestion");
String answer = request.getParameter("answer");
String newPassword = request.getParameter("newPassword");

int check = 0;
try {
    Connection con = ConnectionProvider.getCon();
    PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE email = ? AND MobileNumber = ? AND securityQuestion = ? AND answer = ?");
    ps.setString(1, email);
    ps.setString(2, MobileNumber);
    ps.setString(3, securityQuestion);
    ps.setString(4, answer);
    ResultSet rs = ps.executeQuery();

    if (rs.next()) {
        check = 1;
        PreparedStatement psUpdate = con.prepareStatement("UPDATE users SET password = ? WHERE email = ?");
        psUpdate.setString(1, newPassword);
        psUpdate.setString(2, email);
        psUpdate.executeUpdate();
        response.sendRedirect("forgotPassword.jsp?msg=done");
    } 

    if (check == 0) {
        response.sendRedirect("forgotPassword.jsp?msg=invalid");
    }

    con.close();
} catch (Exception e) {
    e.printStackTrace();
    response.sendRedirect("forgotPassword.jsp?msg=invalid");
}
%>
