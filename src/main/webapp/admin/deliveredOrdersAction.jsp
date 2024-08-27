<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%
String id = request.getParameter("id");
String email = request.getParameter("email");
String status = "delivered";
try {
    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();
    int result = st.executeUpdate("UPDATE cart SET status = '" + status + "' WHERE product_id = '" + id + "' AND email = '" + email + "' AND address IS NOT NULL");
    if (result > 0) {
        response.sendRedirect("ordersReceived.jsp?msg=delivered");
    } else {
        response.sendRedirect("ordersReceived.jsp?msg=wrong");
    }
} catch (Exception e) {
    System.out.println(e);
    response.sendRedirect("ordersReceived.jsp?msg=wrong");
}
%>
