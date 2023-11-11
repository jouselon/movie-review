<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="/css/style.css">
<meta charset="UTF-8">

<style>
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.profile-dropdown:hover .dropdown-content {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {
    background-color: #f1f1f1;
}

.profile-icon {
    width: 40px;
    height: 40px;
    border-radius: 50%; /* Add border-radius to make it circular */
    background-image: url("images/profile.png"); /* Set the image as the background */
    background-size: cover; /* Scale the image to cover the button */
    background-position: center; /* Center the image within the button */
    border: none;
    outline: none;
    cursor: pointer;
}

</style>

<body style="width:100%;">
<nav style="width:1725px;" class="navbar">
    <img src="images/logo.png" class="brand-logo" alt="" onclick="location.href='index.html'">

    <ul class="nav-links">
        <li class="nav-items"><a href="#">시리즈</a></li>
        <li class="nav-items"><a href="#">영화</a></li>
        <li class="nav-items"><a href="#">영화 예매</a></li>
    </ul>

    <div class="search-box">
        <input type="text" placeholder="검색..." id="search">
        <button><span class="fas fa-search" id="searchIcon"></span></button>
    </div>

    <c:choose>
        <c:when test="${empty sessionScope.userID}">
            <a href="login.jsp" class="profile-icon"></a>
        </c:when>
        <c:otherwise>
            <div class="profile-dropdown">
                <button class="profile-icon"></button>
                <div class="dropdown-content">
                    <a href="logoutAction.jsp">로그아웃</a>
                    <a href="update.jsp">내 정보</a>
                    <a href="members.jsp">회원 관리</a>
                </div>
            </div>
        </c:otherwise>
    </c:choose>
</nav>
</body>
