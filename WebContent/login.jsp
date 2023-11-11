<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<title>JSP 게시판 웹 사이트</title>
<style>
    body {
        padding-top: 20px;
    }
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    
    
    .login-form {
        background-color: #f7f7f7;
        border-radius: 5px;
        padding: 20px;
        box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
    }
    .login-form h3 {
        text-align: center;
        font-size: 24px;
        margin-bottom: 30px;
    }
    .login-form .form-group {
        margin-bottom: 20px;
    }
    .login-form .form-group label {
        font-weight: bold;
        display: block;
        margin-bottom: 5px;
    }
    .login-form .form-group input {
        width: 100%;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 3px;
    }
    .login-form .form-group input:focus {
        outline: none;
        box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.1);
    }
    .login-form .btn {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 3px;
        background-color: #007bff;
        color: #fff;
        font-size: 16px;
        font-weight: bold;
        transition: background-color 0.3s;
    }
    .login-form .btn:hover {
        background-color: #0056b3;
    }
   
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');
    body, html {
        height: 100%;
        font-family: 'Poppins', sans-serif;
    }
    .container-login100 {
        width: 100%;  
        min-height: 100vh;
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        align-items: center;
        padding: 15px;
        background: #f2f2f2;  
        
    }
    .wrap-login100 {
        width: 390px;
        background: #fff;
        border-radius: 10px;
        overflow: hidden;
        padding: 77px 55px 33px 55px;
        box-shadow: 0 5px 10px 0px rgba(0, 0, 0, 0.1);
        
    }
    .login100-form-title {
        font-family: 'Poppins-Bold';
        font-size: 30px;
        color: #333333;
        line-height: 1.2;
        text-align: center;
    }
            .wrap-input100 {
            width: 100%;
            position: relative;
            border-bottom: 2px solid #d9d9d9;
            margin-bottom: 30px;
            
        }
         .input100 {
        font-family: 'Poppins-Regular';
        font-size: 15px;
        line-height: 1.5;
        color: #666666;
        display: block;
        width: 100%;
        height: 45px;
        background: transparent;
        padding: 0 5px;
        border: none; /* Remove the border */
    }
        .focus-input100 {
            position: absolute;
            display: block;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            pointer-events: none;
        }
        .focus-input100::before {
            content: "";
            display: block;
            position: absolute;
            bottom: -2px;
            left: 0;
            width: 100%;
            height: 2px;
            background: #007bff;
            transition: all 0.4s;
            transform: scaleX(0);
            border: none;
        }
        .focus-input100::after {
            font-family: Material-Design-Iconic-Font;
            font-size: 22px;
            color: #999999;
            display: block;
            position: absolute;
            bottom: 7px;
            right: 0;
            z-index: 1;
            transform: translateY(-50%);
            border: none;
            
        }
        .input100:focus + .focus-input100::before {
            transform: scaleX(1);
            border: none;
        }
        
        
    .wrap-input100 input:focus {
        outline: none;
        box-shadow: none;
        border: none;
    }
        .btn-login {
		  font-family: 'Poppins-Medium';
		  font-size: 16px;
		  color: #fff;
		  display: inline-block;
		  height: 40px;
		  width: 400px;
		  background: linear-gradient(45deg, #acb6e5, #86fde8);
		  border-radius: 15px;
		  overflow: hidden;
		  transition: all 2s;
		  text-transform: uppercase;
		  cursor: pointer;
		  border: none:
		  box-shadow: none; /* 기존 box-shadow 속성 제거 */
  		 	outline: none;
  		 	border: none;
		}

		.btn-login:hover {
		  background: linear-gradient(45deg, #83a4d4, #b6fbff);
		  background-size: 200% 200%;
		  animation: gradientAnimate 2s ease-in-out infinite;
			box-shadow: none;
			border: none;
		}

@keyframes gradientAnimate {
  0% {
    background-position: 0% 50%;
  }
  50% {
    background-position: 100% 50%;
  }
  100% {
    background-position: 0% 50%;
  }
}
        .txt1 {
            font-family: 'Poppins-Regular';
            font-size: 14px;
            line-height: 1.5;
            color: #666666;
        }
        .txt2 {
            font-family: 'Poppins-Regular';
            font-size: 14px;
            line-height: 1.5;
            color: #007bff;
        }
        
        .container-login100-form-btn {
  text-align: center;
  margin-top: 20px;
}
</style>
</head>
<body>
<div class="container-login100">
    <div class="wrap-login100">
        <form method="post" action="loginAction.jsp">
            <div class="wrap-input100">
                <input class="input100" type="text" name="userID" placeholder="아이디">
                <span class="focus-input100"></span>
            </div>

            <div class="wrap-input100">
                <input class="input100" type="password" name="userPassword" placeholder="비밀번호">
                <span class="focus-input100"></span>
            </div>
            
            <div class="container-login100-form-btn">
                <button class="btn-login" type="submit" name="login">로그인</button>
            </div>
            <br><br><br><br><br><br>
            <div class="text-center p-t-46 p-b-20" style="display: flex; justify-content: center; align-items: center;">
    <span class="txt1">아직 회원이 아니신가요?</span>
    <a class="txt2" href="join.jsp">회원가입</a>
</div>

        </form>
    </div>
</div>



</body>
</html>
