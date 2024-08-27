<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String category = request.getParameter("category");
String price = request.getParameter("price");
String active = request.getParameter("active");

try {
    Connection con = ConnectionProvider.getCon();
    String query = "UPDATE product SET name = ?, category = ?, price = ?, active = ? WHERE id = ?";
    PreparedStatement pstmt = con.prepareStatement(query);

    pstmt.setString(1, name);
    pstmt.setString(2, category);

    // Ensure price is a valid DOUBLE
    if (price != null && !price.isEmpty()) {
        try {
            pstmt.setDouble(3, Double.parseDouble(price));
        } catch (NumberFormatException e) {
            // Handle invalid number format
            pstmt.setNull(3, java.sql.Types.DOUBLE);
        }
    } else {
        pstmt.setNull(3, java.sql.Types.DOUBLE);
    }

    // Ensure active is a valid value
    if (active != null && !active.isEmpty()) {
        pstmt.setString(4, active);
    } else {
        pstmt.setNull(4, java.sql.Types.VARCHAR);
    }

    pstmt.setString(5, id);
    pstmt.executeUpdate();

    if ("No".equals(active)) {
        String deleteQuery = "DELETE FROM cart WHERE product_id = ? AND address IS NULL";
        PreparedStatement deleteStmt = con.prepareStatement(deleteQuery);
        deleteStmt.setString(1, id);
        deleteStmt.executeUpdate();
    }

    response.sendRedirect("allProductEditProduct.jsp?msg=done");
} catch (Exception e) {
    e.printStackTrace();
    response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
}
%>
