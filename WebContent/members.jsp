<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>

<%
    // 데이터베이스 연결 및 조회 로직을 수행합니다.
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        // 데이터베이스 연결을 수행합니다.
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studydb", "root", "mysql");

        // 회원 정보를 조회하는 SQL 쿼리를 작성합니다.
        String sql = "SELECT * FROM USER";
        stmt = conn.createStatement();
        rs = stmt.executeQuery(sql);
%>

<!DOCTYPE html>

<html>
<meta charset="UTF-8">
<head>
    <title>회원 목록</title>
    <style>
        body {
            width: 100%;
            font-family: Arial, sans-serif;
        }
        h1 {
            text-align: center;
        }
        .container {
            width: 80%;
            margin: 0 auto;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            background-color: #fff;
            border-radius: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th {
            padding: 10px;
            border: 1px solid #ccc;
            background-color: gold;
        }
        td {
            padding: 10px;
            border: 1px solid #ccc;
        }
        .btn-container {
            display: flex;
            justify-content: center;
            margin-top: 10px;
        }
        .btn-container a {
            margin-right: 10px;
            padding: 5px 10px;
            background-color: rgba(12, 148, 255, 0.42);
            color: #fff;
            text-decoration: none;
            border-radius: 25px;
        }
        .btn-container a:hover {
            background-color: #999;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>회원 목록</h1>
        <table>
            <tr>
                <th>아이디</th>
                <th>이름</th>
                <th>이메일</th>
                <th>수정</th>
                <th>삭제</th>
                <!-- 추가적인 회원 정보 컬럼을 필요에 따라 추가할 수 있습니다. -->
            </tr>
            <% while (rs.next()) { %>
            <tr>
                <td><%= rs.getString("userID") %></td>
                <td><%= rs.getString("userName") %></td>
                <td><%= rs.getString("userEmail") %></td>
                <td><a href="edit.jsp?id=<%= rs.getString("userID") %>">수정</a></td>
                <td><a href="delete.jsp?id=<%= rs.getString("userID") %>">삭제</a></td>
                <!-- 추가적인 회원 정보 컬럼 값을 가져오고 출력할 수 있습니다. -->
            </tr>
            <% } %>
        </table>
        <div class="btn-container">
            <a href="join.jsp">회원 추가</a>
        </div>
    </div>
</body>
</html>

<%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // 사용한 자원을 정리합니다.
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
