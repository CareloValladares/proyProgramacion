<%
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection cn=java.sql.DriverManager.getConnection("jdbc:mysql://localhost/proyprogramacion?serverTimezone=UTC","root","1234");
    java.sql.Statement conex=cn.createStatement();
%>