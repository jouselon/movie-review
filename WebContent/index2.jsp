<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Insert title here</title>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

 <script>
 function playTrailer(videoId) {
	    var url = "https://www.youtube.com/embed/" + videoId + "?autoplay=1";
	    var width = 800;
	    var height = 600;
	    var left = (screen.width - width) / 2;
	    var top = (screen.height - height) / 2;
	    var options = "width=" + width + ",height=" + height + ",top=" + top + ",left=" + left;
	    window.open(url, "Trailer", options);
	}
 
 
 
 
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
<body style="width:1920px;">
<jsp:include page="/Header.jsp" />
	<!-- 메인 영화 소개 -->
	<div class="mainslider-container">
    <div class="mainslider">
        <div class="slider">
            <div class="slide-content">
                <h1 class="movie-title">가디언즈 오브 갤럭시 VOL. 3</h1>
				<h5 class="movie-title-en">Guardians of the Galaxy Vol. 3</h5>
                <p class="movie-des">'가모라'를 잃고 슬픔에 빠져 있던 '피터 퀼'이 위기에 처한 
					은하계와 동료를 지키기 위해 다시 한번 가디언즈 팀과 힘을 모으고, 
					성공하지 못할 경우 그들의 마지막이 될지도 모르는 미션에 나서는 이야기</p>
					
					<button class="btntr">예고편</button>
					
					<button class="btntick">예매하기</button>
				</div>

            <img src="images/guardians-of-the-galaxy-3j.jpg" alt="">
        </div>
		
    </div>
</div>



<!-- 영화 리스트  -->
<h1 class="title">오늘의 무비 차트🎥</h1>
<div class="movies-list">
	<button class="pre-btn"><img src="images/left-arrow.png" alt=""></button>
	<button class="nxt-btn"><img src="images/right-arrow.png" alt=""></button>
	<div class="card-container">

<div class="card">
    <div class="ranking">1</div>
    <img src="images/flash.jpg" class="card-img" alt="">
    <div class="card-body">
        <h2 class="name">플래시</h2>
        <button class="detail-btn" onclick="playTrailer('ce3lO-Fa3Jc')">예고편</button>
        <button class="detail-btn"><a href="testest.jsp">예매하기</a></button>
    </div>
</div>



<div class="card">
    <div class="ranking">2</div>
    <img src="images/mental.jpg" class="card-img" alt="">
    <div class="card-body">
        <h2 class="name">엘리멘탈</h2>
        <button class="detail-btn" onclick="playTrailer('ce3lO-Fa3Jc')">예고편</button>
        <button class="detail-btn">예매하기</button>
    </div>
</div>


<div class="card">
    <div class="ranking">3</div>
    <img src="images/common (1).jpeg" class="card-img" alt="">
    <div class="card-body">
        <h2 class="name">가디언즈 오브 갤럭시 Vol.3</h2>
        <button class="detail-btn" onclick="playTrailer('ce3lO-Fa3Jc')">예고편</button>
        <button class="detail-btn">예매하기</button>
    </div>
</div>
<!-- 영화리스트 1 -->
	<div class="card">
		<div class="ranking">4</div>
		<img src="images/common (2).jpeg" class="card-img" alt="">
		<div class="card-body">
			<h2 class="name">분노의 질주 : <br>라이드 오어 다이</h2>
        <button class="detail-btn" onclick="playTrailer('BQzEXkOYyM0')">예고편</button>
			<button class="detail-btn">예매하기</button>
		</div>
</div> 

<!-- 리스트 2 -->

<div class="card">
	<div class="ranking">5</div>
	<img src="images/common.jpeg" class="card-img" alt="">
	<div class="card-body">
		<h2 class="name">범죄도시3</h2>
		<button class="detail-btn" onclick="playTrailer('4p7WZmM3Bk8')">예고편</button>
		<button class="detail-btn">예매하기</button>
	</div>
</div> 


<!-- 리스트 2 -->

<div class="card">
	<div class="ranking">6</div>
	<img src="images/common (6).jpeg" class="card-img" alt="">
	<div class="card-body">
		<h2 class="name">트랜스포머</h2>
		<button class="detail-btn" onclick="playTrailer('6d4Gz4xCC60')">예고편</button>
		<button class="detail-btn">예매하기</button>
	</div>
</div> 


<!-- 리스트 2 -->

<div class="card">
	<div class="ranking">7</div>
	<img src="images/인어공주.jpg" class="card-img" alt="">
	<div class="card-body">
		<h2 class="name">인어공주</h2>
		<button class="detail-btn" onclick="playTrailer('BNQMx5gy5Xg')">예고편</button>
		<button class="detail-btn">예매하기</button>
	</div>
</div> 


<!-- 리스트 2 -->

<div class="card">
	<div class="ranking">8</div>
	<img src="images/common (5).jpeg" class="card-img" alt="">
	<div class="card-body">
		<h2 class="name">스즈메의 문단속</h2>
		<button class="detail-btn" onclick="playTrailer('hpaHfRUXisY')">예고편</button>
		<button class="detail-btn">예매하기</button>
	</div>
</div> 


<!-- 리스트 2 -->

<div class="card">
	<div class="ranking">9</div>
	<img src="images/common (3).jpeg" class="card-img" alt="">
	<div class="card-body">
		<h2 class="name">슈퍼마리오</h2>
		<button class="detail-btn" onclick="playTrailer('4jhz2NU-24Q')">예고편</button>
		<button class="detail-btn">예매하기</button>
	</div>
</div> 
		
<!-- 리스트 2 -->

<div class="card">
	<div class="ranking">10</div>
	<img src="images/common (4).jpeg" class="card-img" alt="">
	<div class="card-body">
		<h2 class="name">롱디</h2>
		<button class="detail-btn" onclick="playTrailer('Ow8X5vbBGvM')">예고편</button>
		<button class="detail-btn">예매하기</button>
	</div>
</div> 

	</div>
</div>


<!-- 시리즈 순위 -->
<br><br><br>








<!-- 시리즈 리스트  -->
<h1 class="title2">🔥HOT 시리즈🔥</h1>
<div class="movies-list2">
	<button class="pre-btn"><img src="images/left-arrow.png" alt=""></button>
	<button class="nxt-btn"><img src="images/right-arrow.png" alt=""></button>
	<div class="card-container">
		<div class="card2">
			<img src="images/나의아저씨.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">나의 아저씨</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_1" name="rating_1" value="5">
					<label for="star5_1"></label>
					<input type="radio" id="star4_1" name="rating_1" value="4">
					<label for="star4_1"></label>
					<input type="radio" id="star3_1" name="rating_1" value="3">
					<label for="star3_1"></label>
					<input type="radio" id="star2_1" name="rating_1" value="2">
					<label for="star2_1"></label>
					<input type="radio" id="star1_1" name="rating_1" value="1">
					<label for="star1_1"></label>
				</div>
				<button class="detail-btn"><a href="mymr.jsp">자세히</a></button>
			</div>
		</div>
		<!-- 시리즈 리스트 1 -->
		<div class="card2">
			<img src="images/약한영웅 Class 1.jpeg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">착한영웅 Class 1</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_2" name="rating_2" value="5">
					<label for="star5_2"></label>
					<input type="radio" id="star4_2" name="rating_2" value="4">
					<label for="star4_2"></label>
					<input type="radio" id="star3_2" name="rating_2" value="3">
					<label for="star3_2"></label>
					<input type="radio" id="star2_2" name="rating_2" value="2">
					<label for="star2_2"></label>
					<input type="radio" id="star1_2" name="rating_2" value="1">
					<label for="star1_2"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>
		<!-- 시리즈 리스트 2 -->
		<div class="card2">
			<img src="images/택배기사.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">택배기사</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_3" name="rating_3" value="5">
					<label for="star5_3"></label>
					<input type="radio" id="star4_3" name="rating_3" value="4">
					<label for="star4_3"></label>
					<input type="radio" id="star3_3" name="rating_3" value="3">
					<label for="star3_3"></label>
					<input type="radio" id="star2_3" name="rating_3" value="2">
					<label for="star2_3"></label>
					<input type="radio" id="star1_3" name="rating_3" value="1">
					<label for="star1_3"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>

		<!-- 시리즈 리스트 3-->
		<div class="card2">
			<img src="images/종이달.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">종이달</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_4" name="rating_4" value="5">
					<label for="star5_4"></label>
					<input type="radio" id="star4_4" name="rating_4" value="4">
					<label for="star4_4"></label>
					<input type="radio" id="star3_4" name="rating_4" value="3">
					<label for="star3_4"></label>
					<input type="radio" id="star2_4" name="rating_4" value="2">
					<label for="star2_4"></label>
					<input type="radio" id="star1_4" name="rating_4" value="1">
					<label for="star1_4"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>

		<!-- 시리즈 리스트 4-->
		<div class="card2">
			<img src="images/퀸메이커.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">퀸메이커</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_5" name="rating_5" value="5">
					<label for="star5_5"></label>
					<input type="radio" id="star4_5" name="rating_5" value="4">
					<label for="star4_5"></label>
					<input type="radio" id="star3_5" name="rating_5" value="3">
					<label for="star3_5"></label>
					<input type="radio" id="star2_5" name="rating_5" value="2">
					<label for="star2_5"></label>
					<input type="radio" id="star1_5" name="rating_5" value="1">
					<label for="star1_5"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>

		<!-- 시리즈 리스트 5-->
		<div class="card2">
			<img src="images/카지노.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">카지노</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_6" name="rating_6" value="5">
					<label for="star5_6"></label>
					<input type="radio" id="star4_6" name="rating_6" value="4">
					<label for="star4_6"></label>
					<input type="radio" id="star3_6" name="rating_6" value="3">
					<label for="star3_6"></label>
					<input type="radio" id="star2_6" name="rating_6" value="2">
					<label for="star2_6"></label>
					<input type="radio" id="star1_6" name="rating_6" value="1">
					<label for="star1_6"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>

		<!-- 시리즈 리스트 6-->
		<div class="card2">
			<img src="images/나쁜엄마.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">나쁜엄마</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_7" name="rating_7" value="5">
					<label for="star5_7"></label>
					<input type="radio" id="star4_7" name="rating_7" value="4">
					<label for="star4_7"></label>
					<input type="radio" id="star3_7" name="rating_7" value="3">
					<label for="star3_7"></label>
					<input type="radio" id="star2_7" name="rating_7" value="2">
					<label for="star2_7"></label>
					<input type="radio" id="star1_7" name="rating_7" value="1">
					<label for="star1_7"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>
		
			<!-- 시리즈 리스트 6-->
		<div class="card2">
			<img src="images/bora.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">보라! 데보라</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_8" name="rating_8" value="5">
					<label for="star5_8"></label>
					<input type="radio" id="star4_8" name="rating_8" value="4">
					<label for="star4_8"></label>
					<input type="radio" id="star3_8" name="rating_8" value="3">
					<label for="star3_8"></label>
					<input type="radio" id="star2_8" name="rating_8" value="2">
					<label for="star2_8"></label>
					<input type="radio" id="star1_8" name="rating_8" value="1">
					<label for="star1_8"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>
			
				<!-- 시리즈 리스트 6-->
		<div class="card2">
			<img src="images/drcha.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">닥터 차정숙</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_9" name="rating_9" value="5">
					<label for="star5_9"></label>
					<input type="radio" id="star4_9" name="rating_9" value="4">
					<label for="star4_9"></label>
					<input type="radio" id="star3_9" name="rating_9" value="3">
					<label for="star3_9"></label>
					<input type="radio" id="star2_9" name="rating_9" value="2">
					<label for="star2_9"></label>
					<input type="radio" id="star1_9" name="rating_9" value="1">
					<label for="star1_9"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>
		
				<!-- 시리즈 리스트 6-->
		<div class="card2">
			<img src="images/1.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">사이렌 : 불의 섬</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_10" name="rating_10" value="5">
					<label for="star5_10"></label>
					<input type="radio" id="star4_10" name="rating_10" value="4">
					<label for="star4_10"></label>
					<input type="radio" id="star3_10" name="rating_10" value="3">
					<label for="star3_10"></label>
					<input type="radio" id="star2_10" name="rating_10" value="2">
					<label for="star2_10"></label>
					<input type="radio" id="star1_10" name="rating_10" value="1">
					<label for="star1_10"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>
		
					<!-- 시리즈 리스트 6-->
		<div class="card2">
			<img src="images/high.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">청담국제고등학교</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_11" name="rating_11" value="5">
					<label for="star5_11"></label>
					<input type="radio" id="star4_11" name="rating_11" value="4">
					<label for="star4_11"></label>
					<input type="radio" id="star3_11" name="rating_11" value="3">
					<label for="star3_11"></label>
					<input type="radio" id="star2_11" name="rating_11" value="2">
					<label for="star2_11"></label>
					<input type="radio" id="star1_11" name="rating_11" value="1">
					<label for="star1_11"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>	
		
		
		
	</div>
</div>

<br><br>

<!-- 보고 보고 또 보고  -->
<h1 class="title2">보고보고 또 보고⏪</h1>
<div class="movies-list3">
	<button class="pre-btn"><img src="images/left-arrow.png" alt=""></button>
	<button class="nxt-btn"><img src="images/right-arrow.png" alt=""></button>
	<div class="card-container">
		<div class="card2">
			<img src="images/dongbaek.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">작은 아씨들</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_12" name="rating_12" value="5">
					<label for="star5_12"></label>
					<input type="radio" id="star4_12" name="rating_12" value="4">
					<label for="star4_12"></label>
					<input type="radio" id="star3_12" name="rating_12" value="3">
					<label for="star3_12"></label>
					<input type="radio" id="star2_12" name="rating_12" value="2">
					<label for="star2_12"></label>
					<input type="radio" id="star1_12" name="rating_12" value="1">
					<label for="star1_12"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>
		
		<!-- 2 -->
				<div class="card2">
			<img src="images/2521.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">스물다섯 스물하나</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_13" name="rating_13" value="5">
					<label for="star5_13"></label>
					<input type="radio" id="star4_13" name="rating_13" value="4">
					<label for="star4_13"></label>
					<input type="radio" id="star3_13" name="rating_13" value="3">
					<label for="star3_13"></label>
					<input type="radio" id="star2_13" name="rating_13" value="2">
					<label for="star2_13"></label>
					<input type="radio" id="star1_13" name="rating_13" value="1">
					<label for="star1_13"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>
		
				<!-- 3 -->
				<div class="card2">
			<img src="images/lala.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">라라랜드</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_14" name="rating_14" value="5">
					<label for="star5_14"></label>
					<input type="radio" id="star4_14" name="rating_14" value="4">
					<label for="star4_14"></label>
					<input type="radio" id="star3_14" name="rating_14" value="3">
					<label for="star3_14"></label>
					<input type="radio" id="star2_14" name="rating_14" value="2">
					<label for="star2_14"></label>
					<input type="radio" id="star1_14" name="rating_14" value="1">
					<label for="star1_14"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>
		
				<!-- 3 -->
				<div class="card2">
			<img src="images/her.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">그녀</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_15" name="rating_15" value="5">
					<label for="star5_15"></label>
					<input type="radio" id="star4_15" name="rating_15" value="4">
					<label for="star4_15"></label>
					<input type="radio" id="star3_15" name="rating_15" value="3">
					<label for="star3_15"></label>
					<input type="radio" id="star2_15" name="rating_15" value="2">
					<label for="star2_15"></label>
					<input type="radio" id="star1_15" name="rating_15" value="1">
					<label for="star1_15"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>
		
				<!-- 4 -->
				<div class="card2">
			<img src="images/itae.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">이태원 클라쓰</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_16" name="rating_16" value="5">
					<label for="star5_16"></label>
					<input type="radio" id="star4_16" name="rating_16" value="4">
					<label for="star4_16"></label>
					<input type="radio" id="star3_16" name="rating_16" value="3">
					<label for="star3_16"></label>
					<input type="radio" id="star2_16" name="rating_16" value="2">
					<label for="star2_16"></label>
					<input type="radio" id="star1_16" name="rating_16" value="1">
					<label for="star1_16"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>
		
				<!-- 2 -->
				<div class="card2">
			<img src="images/end.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">끝까지 간다</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_17" name="rating_17" value="5">
					<label for="star5_17"></label>
					<input type="radio" id="star4_17" name="rating_17" value="4">
					<label for="star4_17"></label>
					<input type="radio" id="star3_17" name="rating_17" value="3">
					<label for="star3_17"></label>
					<input type="radio" id="star2_17" name="rating_17" value="2">
					<label for="star2_17"></label>
					<input type="radio" id="star1_17" name="rating_17" value="1">
					<label for="star1_17"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>
		
				<!-- 2 -->
				<div class="card2">
			<img src="images/mi.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">미생</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_18" name="rating_18" value="5">
					<label for="star5_18"></label>
					<input type="radio" id="star4_18" name="rating_18" value="4">
					<label for="star4_18"></label>
					<input type="radio" id="star3_18" name="rating_18" value="3">
					<label for="star3_18"></label>
					<input type="radio" id="star2_18" name="rating_18" value="2">
					<label for="star2_18"></label>
					<input type="radio" id="star1_18" name="rating_18" value="1">
					<label for="star1_18"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>
		
		<!-- 2 -->
				<div class="card2">
			<img src="images/lecture.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">인간 수업</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_19" name="rating_1" value="5">
					<label for="star5_19"></label>
					<input type="radio" id="star4_19" name="rating_1" value="4">
					<label for="star4_19"></label>
					<input type="radio" id="star3_19" name="rating_1" value="3">
					<label for="star3_19"></label>
					<input type="radio" id="star2_19" name="rating_1" value="2">
					<label for="star2_19"></label>
					<input type="radio" id="star1_19" name="rating_1" value="1">
					<label for="star1_19"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>
		
		
				<!-- 2 -->
				<div class="card2">
			<img src="images/signal.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">시그널</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_20" name="rating_20" value="5">
					<label for="star5_20"></label>
					<input type="radio" id="star4_20" name="rating_20" value="4">
					<label for="star4_20"></label>
					<input type="radio" id="star3_20" name="rating_20" value="3">
					<label for="star3_20"></label>
					<input type="radio" id="star2_20" name="rating_20" value="2">
					<label for="star2_20"></label>
					<input type="radio" id="star1_20" name="rating_20" value="1">
					<label for="star1_20"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>
		
				<!-- 2 -->
				<div class="card2">
			<img src="images/mrsunshine.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">미스터 션샤인</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_21" name="rating_1" value="5">
					<label for="star5_21"></label>
					<input type="radio" id="star4_21" name="rating_1" value="4">
					<label for="star4_21"></label>
					<input type="radio" id="star3_21" name="rating_1" value="3">
					<label for="star3_21"></label>
					<input type="radio" id="star2_21" name="rating_1" value="2">
					<label for="star2_21"></label>
					<input type="radio" id="star1_21" name="rating_1" value="1">
					<label for="star1_21"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>
		
				<!-- 2 -->
				<div class="card2">
			<img src="images/catchme.jpg" class="card-img2" alt="">
			<div class="card-body">
				<h2 class="name">캐치 미 이프 유 캔</h2>
				<div class="rating-stars">
					<input type="radio" id="star5_22" name="rating_1" value="5">
					<label for="star5_22"></label>
					<input type="radio" id="star4_22" name="rating_1" value="4">
					<label for="star4_22"></label>
					<input type="radio" id="star3_22" name="rating_1" value="3">
					<label for="star3_22"></label>
					<input type="radio" id="star2_22" name="rating_1" value="2">
					<label for="star2_22"></label>
					<input type="radio" id="star1_22" name="rating_1" value="1">
					<label for="star1_22"></label>
				</div>
				<button class="detail-btn">자세히</button>
			</div>
		</div>
		
		
	</div>
</div>
<br><br><br>

	<!-- 자바스크립트 파일 -->
<script src="js/slider-dats.js"></script>
<script src="js/app.js"></script>

<jsp:include page="/Footer.jsp" />

</body>
</html>