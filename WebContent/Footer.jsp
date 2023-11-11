<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <style>
  /* Footer 스타일 */
  
  footer {
    background-color: white;
    color: black;
    padding: 40px 0;
    border-radius: 25px;
    box-shadow: 0px 0px 20px 0px rgb(50, 50, 50);
  }
footer {
  position: relative;
  z-index: 2;
}
  
  .footer-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    max-width: 1200px;
    margin: 0 auto;
  }
  
  .footer-column {
    width: 200px;
  }
  
  .footer-column h3 {
    font-size: 18px;
    margin-bottom: 20px;
  }
  
  .footer-column p,
  .footer-column ul {
    font-size: 14px;
    margin-bottom: 10px;
    list-style-type: none;
    padding-left: 0;
     
  }
  
  .footer-column a {
    color: black;
    text-decoration: none;
    transition: color 0.3s ease;
    
  }
   .footer-column li {
    list-style: none;
    margin-bottom: 10px;
  }
  .footer-column a:hover {
    color: #aaa;
  }
  
  .social-media-icons {
    list-style: none;
    padding: 0;
    display: flex;
    align-items: center;
  }
  
  .social-media-icons li {
    margin-right: 10px;
    list-style: none;
  }
  
  .social-media-icons a {
    color: black;
    font-size: 16px;
    transition: color 0.3s ease;
  }
  
  .social-media-icons a:hover {
    color: #aaa;
  }
  
  .footer-bottom {
    margin-top: 40px;
    text-align: center;
    font-size: 14px;
  }
  
/* 이미지 크기 조정 */
  .social-media-icons img {
    width: 40px; 
    height: 40px; 
  }

  .fab {
    font-size: 24px;
  }
</style>
    
<footer>
  <div class="footer-container" >
    <div class="footer-column">
      <h3>회사</h3>
      <p>HOMEPARTY</p>
      <p>주소: 서울 마포구 신촌로 176 </p>
      <p>전화번호: 02-1234-5678</p>
    </div>
    
    
    <div class="footer-column">
      <h3>고객 지원</h3>
      <ul>
        <li><a href="#">자주 묻는 질문</a></li>
        <li><a href="#">문의하기</a></li>
        <li><a href="#">이용 약관</a></li>
        <li><a href="#">개인 정보 처리 방침</a></li>
      </ul>
    </div>
    
    <div class="footer-column">
      <h3>팔로우하기</h3>
      <ul class="social-media-icons">
        <li><a href="#"><img src="images/Instagram.png" alt="Instagram"></a></li>
        <li><a href="#"><img src="images/Facebook.png" alt="Facebook"></a></li>
        <li><a href="#"><img src="images/YouTube.png" alt="Youtube"></a></li>
      </ul>
    </div>
  </div>

  
  <div class="footer-bottom">
    <p>© 2023 HOMEPARTY. All rights reserved.</p>
  </div>
</footer>