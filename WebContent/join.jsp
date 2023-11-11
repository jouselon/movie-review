<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>JSP Bulletin Board Website</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
        }
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .custom-box {
            background-color: transparent;
            border-radius: 20px;
            padding: 20px;
            box-shadow: 0 2px 20px rgba(0, 0, 0, 0.5);
            max-width: 400px;
            width: 100%;
        }
        .custom-box h3 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group input[type="text"],
        .form-group input[type="password"],
        .form-group input[type="name"],
        .form-group input[type="email"] {
            width: 100%;
            padding: 5px 0;
            border: none;
            border-bottom: 2px solid #ccc;
            background-color: transparent;
            outline: none;
            transition: border-color 0.3s;
        }
        .form-group input[type="text"]:focus,
        .form-group input[type="password"]:focus,
        .form-group input[type="name"]:focus,
        .form-group input[type="email"]:focus {
            border-bottom-color: #2980b9;
        }
        .btn-primary {
            background: linear-gradient(45deg, #83a4d4, #b6fbff);
            color: #ffffff;
            border: none;
            border-radius: 25px;
            padding: 10px 20px;
            cursor: pointer;
            width: 400px;
        }
        .btn-primary:hover {
            background: linear-gradient(45deg, #9890e3, #b1f4cf);
        }
        .language-btn {
            display: flex;
            justify-content: center;
            margin-bottom: 10px;
        }
        .language-btn button {
            border: none;
            background: none;
            color: #2980b9;
            cursor: pointer;
            padding: 5px 10px;
        }
        .language-btn button:hover {
            text-decoration: underline;
        }
    </style>
    <script>
        function setLanguage(lang) {
            document.cookie = "language=" + lang;
            location.reload();
        }
    </script>
</head>
<body>
    <div class="container">
        <div class="custom-box">
            <div class="language-btn">
                <button onclick="setLanguage('ko')">한국어</button>
                <button onclick="setLanguage('en')">English</button>
            </div>
            <h3>Sign Up</h3>
            <form method="post" action="joinAction.jsp">
                <div class="form-group">
                    <input type="text" placeholder="Username" name="userID" maxlength="20">
                </div>
                <div class="form-group">
                    <input type="password" placeholder="Password" name="userPassword" maxlength="20">
                </div>
                <div class="form-group">
                    <input type="name" placeholder="LEE HEETAE" name="userName" maxlength="20">
                </div>
                <div class="form-group">
                    <input type="email" placeholder="Email" name="userEmail" maxlength="20">
                </div>
                <input type="submit" class="btn btn-primary" value="Sign Up">
            </form>
        </div>
    </div>
</body>
</html>
