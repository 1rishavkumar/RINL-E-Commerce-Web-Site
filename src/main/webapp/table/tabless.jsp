<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
try {
    Connection con = ConnectionProvider.getCon();
    if (con != null) {
        Statement st = con.createStatement();
        String q1 = "CREATE TABLE users ("
                + "name VARCHAR(100), "
                + "email VARCHAR(100) PRIMARY KEY, "
                + "MobileNumber BIGINT, "
                + "securityQuestion VARCHAR(200), "
                + "answer VARCHAR(200), "
                + "password VARCHAR(100), "
                + "address VARCHAR(500), "
                + "city VARCHAR(100), "
                + "state VARCHAR(100), "
                + "country VARCHAR(100)"
                + ")";
        String q2 = "create table product(id int,name varchar(500), category varchar(200), price int, active varchar(10))";
        String q3 = "create table cart(email varchar(100), product_id int, quantity int , price int , total int, address varchar(500), city  varchar(100), state varchar(100), country varchar(100), mobileNumber bigint, orderDate varchar(100), deliveryDate varchar(100), paymentMethod varchar(100), transactionId varchar(100), status varchar(10)) ";
        String q4 = "create table message(id int AUTO_INCREMENT,email varchar(100),subject varchar(200), body varchar(1000),PRIMARY KEY(id))";

      System.out.println(q1);
        System.out.println(q2);
        System.out.println(q3);
        System.out.println(q4);

       // st.execute(q1);
       //st.execute(q2);
        //st.execute(q3);
        st.execute(q4);


        System.out.println("Table created");
        con.close();
    } else {
        System.out.println("Failed to establish connection.");
    }
} catch (Exception e) {
    e.printStackTrace();
    out.println("An error occurred while creating the table: " + e.getMessage());
}
%>
