<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>

<%
    String id = request.getParameter("id");
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studydb", "root", "mysql");

        String sql = "SELECT * FROM USER WHERE userID = '" + id + "'";
        stmt = conn.createStatement();
        rs = stmt.executeQuery(sql);

        String name = "";
        String email = "";

        if (rs.next()) {
            name = rs.getString("userName");
            email = rs.getString("userEmail");
        }
%>

<!DOCTYPE html>
<html>
<head>
    <title>회원 정보 수정</title>
    <style>
        body {
            width: 100%;
            font-family: Arial, sans-serif;
        }
        h1 {
            text-align: center;
        }
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-top: 20px;
        }
        label {
            margin-bottom: 5px;
        }
        input[type="text"], input[type="email"] {
            width: 200px;
            padding: 5px;
            margin-bottom: 10px;
        }
        input[type="submit"] {
            padding: 5px 10px;
            background-color: #ccc;
            color: #fff;
            border: none;
            border-radius: 3px;
        }
        input[type="submit"]:hover {
            background-color: #999;
        }
    </style>
</head>
<body>
    <h1>회원 정보 수정</h1>
    <form action="update.jsp" method="post">
        <label for="name">이름:</label>
        <input type="text" id="name" name="name" value="<%= name %>" required>
        <label for="email">이메일:</label>
        <input type="email" id="email" name="email" value="<%= email %>" required>
        <input type="hidden" name="id" value="<%= id %>">
        <input type="submit" value="수정">
    </form>
    <div style="text-align: center; margin-top: 10px;">
        <a href="members.jsp">회원 목록으로 돌아가기</a>
    </div>
</body>
</html>

<%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) {
            try {
                rs.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (stmt != null) {
            try {
                stmt.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        if (conn != null) {
            try {
                conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
%>
