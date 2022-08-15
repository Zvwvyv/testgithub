<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: ZYW
  Date: 2022/8/12
  Time: 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>40分钟回顾web程序开发</title>
  </head>
  <body>
  <%
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://192.168.188.100:3306/db","root","root");
    PreparedStatement preparedStatement = con.prepareStatement("select * from dept");
    ResultSet resultSet = preparedStatement.executeQuery();
    while(resultSet.next()){
      out.print(resultSet.getInt(1)+"\t"+resultSet.getString(2)+"<br/>");
    }
  %>
  </body>
</html>
