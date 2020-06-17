<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>	
	.mainMenu{
		position:relative;
		top:50px;
		width:100%;
		height:70px;	
		margin-top:10px; 
	}
	.mainMenu .navbar-nav{
		position:relative;
		width:100%;
	}
	.mainMenu .nav-item{
		width:25%;
		font-size:1.1em;
		font-weight:bold;
		text-align:center;	
	}
	#mainSlide{
		position:relative;
		top:55px;
		width:100%;
	}
	.carousel-inner img{
		width:100%;
		height:630px; 
	}
	.count{margin-top:100px;}
	.countUp{font-size:5em;}
	.cont_top, .cont_mid, .cont_bottom{
	 	padding:3%;  
	 }
	 .tit, .badge{
	 	position:relative;
	 	left:250px;
	 }
	.link_more{
	 	position:absolute; 
	 	right:380px; 
	 }
	.content_product .container{
	 	margin-top:15px;
	 }
	.content_product .row{
	 	height:200px;
	 }
	.content_product .logo-img img{
		margin:25px auto;
	 }
	 .content_product .notice-tit{
    	font-size: 14px;
    	line-height: 18px;
	}
	.content_product .notice-desc{
		margin-top: 2px;
    	font-size: 17px;
    	line-height: 23px;
	}
	 .deadline_notice .col-sm-3{
	 	border:1px solid #ddd;
	 }
	 .favorite_notice .col-sm-3{
	 	border:1px solid #ddd;
	 }
	 .deadline_project .col-sm-3{
	 	border:1px solid #ddd;
	 }
	.project_banner, .project_regist_banner{
		padding:50px 0;
		/* ↓section figure의 translateX 선언 후, 좌우 scroll 생성 방지 */
		width:100%; 
		box-sizing:border-box; /* 테두리를 기준으로 크기를 정한다. */
		overflow:hidden;
	}
	.project_banner{
		background-color:#EAEAEA;
	}
	.project_regist_banner{
		background-color:#D8D8D8;
	}
	.project_banner>div, .project_regist_banner>div{
		width:85%;
		margin:0 auto;
	}
	.project_banner .context, .project_regist_banner figure{
		float:left;
		width:45%;
	}
	.project_banner figure, .project_regist_banner .context{
		float:right;
		width:45%;
	}
	.project_banner figure{
		/*transform:translateX(500px);   translate:위치옮김, X:좌우 Y:위아래 */
		/* transition:all 1s; */
		position:relative;
		right:-45%;
		opacity:0.1;  
	}
	.project_regist_banner figure{
		/*transform:translateX(-500px);*/
		/* transition:all 1s; */
		position:relative;
		left:-45%;
		opacity:0.1;
	}
	.project_banner figure img, .project_regist_banner figure img{
		width:100%;
	}
	.context hr{
		border:1px solid #999;
		width:150px;
		float:left;
		margin-bottom:30px;
	}
	h3, h3 strong{ 
		font-weight:normal;
		margin-bottom:30px;
	}
	h4{
		font-weight:normal;
		margin-bottom:20px;
		color:#007bff;
	}
	.context h4{clear:both;}  /* 왼쪽, 오른쪽 모두 붙는 float 정렬을 취소한다. */
	.project_btn{
		border:4px solid #007bff;
		border-radius:50px;
		background:none;
		outline:none;
		padding:10px;
		color:#5D5D5D;
		font-weight:bold;
	}
	.client{padding: 80px 0 80px;}
	.client b{color:#007bff;}
</style>
<script>
$(function(){
	//카운트업
    var n = 0;        
    function countUp(){
    	n++
    	$('.countUp').text(n)
    } 
    setInterval(countUp,0.001);
     
    //스크롤 이벤트
	var flag_r = false;
	var flag_l = false;
    $(window).scroll( function(){     //스크롤 시
            var chk_offset_r = $('.project_banner').offset().top;
            var chk_offset_l = $('.project_regist_banner').offset().top;
            var scr_t = $(window).scrollTop();  //현재 스크롤 위치
            
            console.log(scr_t+","+chk_offset_r); 
            
            if( flag_r==false && scr_t > chk_offset_r-300 ){
                $(".project_banner figure").animate({right:"0", opacity:1} ,500);
                flag_r = true;
            }
            if( flag_l==false && scr_t > chk_offset_l-300 ){
            	$(".project_regist_banner figure").animate({left:"0", opacity:1} ,500);
                flag_l = true;
            } 
    }); 
});
</script>

<div class="container-fluid">
	<nav class="navbar navbar-expand-lg bg-light navbar-light justify-content-center mainMenu">
		<ul class="navbar-nav">
		    <li class="nav-item">
		      <a class="nav-link" href="<%=ctx %>/search/recruitment_search.do">채용검색</a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="<%=ctx %>/search/talented_person_search.do">인재검색</a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="<%=ctx %>/search/project_search.do">프로젝트검색</a>
		    </li>
		    <li class="nav-item">
		      <a class="nav-link" href="<%=ctx %>/jobs_user_info/askProject.html">프로젝트의뢰</a>
		    </li>
	  	</ul>
	</nav>
</div>  <!-- /container -->

<div id="mainSlide" class="carousel slide" data-ride="carousel" data-interval="1000">  <!-- carousel -->
		<!-- 이미지 목록 -->
		<div class="carousel-inner">
			<!-- ===== 1 ===== -->
			<div class="carousel-item active">
				<img src="<%=ctx %>/img/img_main01.jpg"/>
			</div>
			<!-- ===== 2 ===== -->
			<div class="carousel-item">
				<img src="<%=ctx %>/img/img_main02.jpg"/>
			</div>
			<!-- ===== 3 ===== -->
			<div class="carousel-item">
				<img src="<%=ctx %>/img/img_main03.jpg"/>
			</div>
		</div>
	
		<!-- 좌우 이동 버튼 -->
		<a href="#mainSlide" class="carousel-control-prev" data-slide="prev"><span class="carousel-control-prev-icon"></span></a>
		<a href="#mainSlide" class="carousel-control-next" data-slide="next"><span class="carousel-control-next-icon"></span></a>
		
		<!-- 아이콘 -->
		<ul class="carousel-indicators">
			<li data-target="#mainSlide" data-slide-to="0" class="active"></li>
			<li data-target="#mainSlide" data-slide-to="1"></li>
			<li data-target="#mainSlide" data-slide-to="2"></li>
		</ul>
	</div>  <!-- /carousel -->
	
	</div>  <!-- /container -->
</header>

<!-- 오더잡, 위시켓 -->
<section class="count">
	<div class="container" >
		<div class="row">
			<div class="col-sm-4">
				<p>
					<span>총 채용공고 수</span>
					<span class="countUp"><b>374,147</b></span>
					<span>건</span>
				</p>
			</div>
			
			<div class="col-sm-4">
				<p>
					<span>총 인재 수</span>
					<span class="countUp"><b>675,695</b></span>
					<span>명</span>
				</p>
			</div>
			
			<div class="col-sm-4">
				<p>
					<span>총 프로젝트 수</span>
					<span class="countUp"><b>40,515</b></span>
					<span>건</span>
				</p>
			</div>
		</div>
	</div>
</section>

<!-- 크몽 -->
<section class="content_product">
	<div class="cont_top deadline_notice">
		<strong class="tit">마감임박 추천공고</strong>
		<span class="badge badge-warning">오늘마감</span>
		<a href="" class="link_more">더보기&gt;</a>
		<div class="container">
		  <div class="row">
		    <div class="col-sm-3">
		    	<a href="#">
		    		<span class="logo-img"><img src="<%=ctx %>/img/notice_logo.gif"/></span> <br/>
		    		<strong class="notice-tit">롯데정보통신</strong> <br/>
		    		<span class="notice-desc">2020(상) 6월 IT직무 경력 채용 </span>
		    	</a>
		    </div>
		    <div class="col-sm-3"><a href="#"></a></div>
		    <div class="col-sm-3"><a href="#"></a></div>
			<div class="col-sm-3"><a href="#"></a></div>
			</div>
		</div>
	</div>
	
	<div class="cont_mid favorite_notice">
		<strong class="tit">최근인기 추천공고</strong>
		<a href="" class="link_more">더보기&gt;</a>
		<div class="container">
		  <div class="row">
		    <div class="col-sm-3" style="background-color:lavender;"><a href="#"></a></div>
		    <div class="col-sm-3" style="background-color:lavenderblush;"><a href="#"></a></div>
		    <div class="col-sm-3" style="background-color:lavender;"><a href="#"></a></div>
			<div class="col-sm-3" style="background-color:lavenderblush;"><a href="#"></a></div>
			</div>
		</div>
	</div>
	
	<div class="cont_bottom deadline_project">
		<strong class="tit">마감임박 프로젝트</strong>
		<a href="" class="link_more">더보기&gt;</a>
		<div class="container">
		  <div class="row">
		    <div class="col-sm-3" style="background-color:lavender;"><a href="#"></a></div>
		    <div class="col-sm-3" style="background-color:lavenderblush;"><a href="#"></a></div>
		    <div class="col-sm-3" style="background-color:lavender;"><a href="#"></a></div>
			<div class="col-sm-3" style="background-color:lavenderblush;"><a href="#"></a></div>
			</div>
		</div>
	</div>
</section>

<section class="project_banner">
	<div>
    	<div class="context">
        <h3><strong>프로젝트에 참여할 준비가 되셨나요?</strong></h3>
        <hr>
        <h4>
	          다양한 카테고리의 IT 프로젝트가<br>
	          실력있는 지원자를 기다리고 있습니다.
        </h4>
        <p>
			한눈에 비교하고 선택하여
			프로젝트를 검색할 수 있습니다.
        </p>
        <button type="button" onclick="location.href='../search/project_search.html'" class="project_btn">프로젝트 검색하기</button>
        </div> 
        
        <figure>
        	<img src="<%=ctx %>/img/wblr-onepage-img-2.png">
        </figure>
    </div>
</section>

<section class="project_regist_banner">
	<div>
    	<div class="context">
        <h3><strong>프로젝트에 적합한 파트너 선정이 어려우셨나요?</strong></h3>
        <hr>
        <h4>마음에 드는 믿을만한 파트너를 만나보세요.</h4>
        <p>
        	프로젝트를 등록해 주세요.<br>
        	검증받은 파트너와 함께
			프로젝트 분석 및 제안을 받아볼 수 있습니다.
        </p>
        <button type="button" onclick="location.href='../jobs_user_info/askProject.html'" class="project_btn">프로젝트 의뢰하기</button>
        </div>
        
        <figure>
        	<img src="img/wblr-onepage-img-2.png">
        </figure>
    </div>
</section> 

<section class="container client">
	<h3>이미 <b>58,016</b>개의 기업이 이용하고 있습니다.</b></h3>
	<div id="mainSlide" class="carousel slide" data-ride="carousel" data-interval="2000">  
		<!-- 이미지 목록 -->
		<div class="carousel-inner">
			<!-- ===== 1 ===== -->
			<div class="carousel-item active">
				<img src="<%=ctx %>/img/dump_client_logo.png"/>
			</div>
			<!-- ===== 2 ===== -->
			<div class="carousel-item">
				<img src="<%=ctx %>/img/dump_client_logo.png"/>
			</div>
			<!-- ===== 3 ===== -->
			<div class="carousel-item">
				<img src="<%=ctx %>/img/dump_client_logo.png"/>
		</div>
	</div>
</section>
