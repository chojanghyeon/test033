<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/* tab slider */
$(document).ready( function() {
$('#myCarousel').carousel({

interval:   4000
});

var clickEvent = false;
$('#myCarousel').on('click', '.nav a', function() {
	clickEvent = true;
	$('.nav li').removeClass('active');
	$(this).parent().addClass('active');		
}).on('slid.bs.carousel', function(e) {
if(!clickEvent) {
	var count = $('.nav').children().length -1;
	var current = $('.nav li.active');
	current.removeClass('active').next().addClass('active');
	var id = parseInt(current.data('slide-to'));
	if(count == id) {
		$('.nav li').first().addClass('active');	
	}
}
clickEvent = false;
});
});

</script>
<style>

header {
  background: url(https://s29.postimg.org/501kwpx7r/334c68c298e6eb06bab3bf4876bea89c.jpg) repeat; 
  width: 100%;
  background-color: #060;
  color: #fff;
  position: relative;
  text-align: center;
  text-shadow: 0 1px 3px rgba(0,0,0,.5);
 
}
.header {
  width: 100%;
  height: 100%; 
  min-height: 100%;
  background: rgba(0, 0, 0, 0.7) url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAMAAAACCAYAAACddGYaAAAAD0lEQVQIW2NkQABjRmQOAAM+AGkQsDBSAAAAAElFTkSuQmCC) repeat;
  -webkit-box-shadow: inset 0 0 100px rgba(0,0,0,.5);
  box-shadow: inset 0 0 100px rgba(0,0,0,.5);
}
.navbar-brand{
    font-size: 24px;
  font-weight: bold;
  color: #fff;
  font-style: italic;
}
.inner {
  padding: 30px;
}
.masthead-nav > li {
  display: inline-block;
}
.masthead-nav > li + li {
  margin-left: 20px;
}
.masthead-nav > li > a {
  padding-right: 0;
  padding-left: 0;
  font-size: 16px;
  font-weight: bold;
  color: #fff; /* IE8 proofing */
  color: rgba(255,255,255,.95);
  border-bottom: 2px solid transparent;
}
.masthead-nav > li > a:hover,
.masthead-nav > li > a:focus {
  background-color: transparent;
  color: #fff;
  border-bottom-color: #fff;
}


/* side slide menu */
.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    right: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

</style>
</head>
<body>
		<header>
			<div class="container header inner">
			<nav class="navbar">
			  <div class="container">
			    <div class="navbar-header">
			      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>                        
			      </button>
			      <a class="navbar-brand" href="#">JH&HS BP</a>
			    </div>
			    <div class="collapse navbar-collapse" id="myNavbar">
			      <ul class="nav navbar-nav navbar-right masthead-nav">
			        <li><a href="#"> 지역 정보</a></li>
			        <li><a href="#"> 가게 정보</a></li>
			        <li><a href="#"> 임대 정보</a></li>
			        <li><a href="#"> 마이 페이지</a></li>
			      </ul>
			    </div>
			  </div>
			</nav>
			</div>
		</header>



	</div>
	</div>
</body>
</html>