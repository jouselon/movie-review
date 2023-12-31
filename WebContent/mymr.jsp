User
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>평점</title>
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700;900&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="css/rate.css">
    <script>
      const cardContainer = document.querySelector('.card-container'); // 카드 컨테이너 선택

      cardContainer.addEventListener('click', function (event) {
        const target = event.target;

        // 자세히 버튼 클릭 시 별점 선택 영역 표시
        if (target.classList.contains('detail-btn')) {
          const ratingStars = target.parentNode.querySelector('.rating-stars');
          ratingStars.style.display = 'block';
        }
      });
    </script>
    
  </head>
  <body>
    <div class="container container-1">
      <div class="poster">
        <img src="images/mymr2.jpg" alt="" />
      </div>
      
      <div class="info">
        <div class="movie-title">나의 아저씨</div>
        <div class="movie-detail">
          <div class="set">
            <label>편성</label>
            <span>2018.03.21. ~ 2018.05.17</span>
          </div>
          <div class="set">
            <label>상영시간</label>
            <span>1시간 47분</span>
          </div>
          <div class="set">
            <label>장르</label>
            <span>드라마</span>
          </div>
          <div class="set">
            <label>평점</label>
            <form name="myform" id="myform" method="post" action="./save">
              <fieldset>
                <input type="radio" name="rating" value="5" id="rate1"><label for="rate1">⭐</label>
                <input type="radio" name="rating" value="4" id="rate2"><label for="rate2">⭐</label>
                <input type="radio" name="rating" value="3" id="rate3"><label for="rate3">⭐</label>
                <input type="radio" name="rating" value="2" id="rate4"><label for="rate4">⭐</label>
                <input type="radio" name="rating" value="1" id="rate5"><label for="rate5">⭐</label>
              </fieldset>
            </form>
          </div>
        </div>
        <div class="movie-description">
          삶의 무게를 버티며 살아가는 아저씨 삼 형제와 거칠게 살아온 한 여성이 서로를 통해 삶을 치유하게 되는 이야기를 그린 드라마
        </div>

        <div class="movie-cast">
          <div class="header">출연진</div>
          <div class="list">
            <div class="cast">
              <img src="images/선균.jpg" alt="" />
              <label>이선균</label>
            </div>
            <div class="cast">
              <img src="images/wldms.jpg" alt="" />
              <label>이지은</label>
            </div>
            <div class="cast">
              <img src="images/entla.jpg" alt="" />
              <label>고두심</label>
            </div>
            <div class="cast">
              <img src="images/ghtks.jpg" alt="" />
              <label>박호산</label>
            </div>
            <div class="cast">
              <img src="images/toqur.jpg" alt="" />
              <label>송새벽</label>
            </div>
            <div class="cast">
              <img src="images/wldk.jpg" alt="" />
              <label>이지아</label>
            </div>
          </div>
        </div>
      </div>


    </div>
  </body>
</html>

