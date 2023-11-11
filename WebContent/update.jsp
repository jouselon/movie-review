<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/style.css">
<meta charset="UTF-8">

<style>
    @font-face {
        font-family: 'SUIT-Regular';
        src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Regular.woff2') format('woff2');
        font-weight: normal;
        font-style: normal;
    }

    .info-box {
        font-family: 'SUIT-Regular', sans-serif;
        border: 1px solid #ccc;
        border-radius: 25px;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
        padding: 20px;
        width: 300px;
        margin: 0 auto;
    }

    .info-box label {
        display: block;
        margin-bottom: 10px;
    }

    .info-box input[type="password"],
    .info-box input[type="text"] {
        width: 100%;
        padding: 5px;
        margin-bottom: 10px;
    }

    .info-box input[type="submit"] {
        width: 300px;
        padding: 10px 20px;
        background: linear-gradient(to bottom, #3498db, #2980b9);
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .info-box input[type="submit"]:hover {
        background: linear-gradient(to bottom, #2980b9, #3498db);
    }
</style>

<body style="width:100%;">
    <%
        // 세션 또는 데이터베이스에서 사용자 정보를 가져옵니다.
        String userID = (String) session.getAttribute("userID");
        String userPassword = "userPassword"; // 사용자의 현재 비밀번호를 가져오는 로직으로 변경해주세요.
        String userName = "userName"; // 사용자의 닉네임을 가져오는 로직으로 변경해주세요.
        // ...

        // 제출된 정보 변경 처리
        String newPassword = request.getParameter("newPassword");
        String newNickname = request.getParameter("newNickname");
        if (newPassword != null && newNickname != null) {
            // 정보 변경 로직을 여기에 구현합니다.
            // ...

            // 변경된 정보를 적용합니다.
            userPassword = newPassword;
            userName = newNickname;
        }
    %>

    <div class="info-box">
        <h1>내 정보</h1>
        <label for="userID">아이디:</label>
        <p><%= userID %></p>

        <form action="memberupdate.jsp" method="post">
            <label for="newPassword">새 비밀번호:</label>
            <input type="password" name="newPassword" id="newPassword" required>

            <label for="newNickname">새 닉네임:</label>
            <input type="text" name="newNickname" id="newNickname" value="<%= userName %>" required>

            <input type="submit" value="정보 변경">
        </form>
    </div>
</body>
