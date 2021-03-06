<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>16 Identity</title>
<jsp:include page="../main/header.jsp" />
<link href="resources/css/info.css" type="text/css" rel="stylesheet">
<link href="resources/css/developer.css" type="text/css"
	rel="stylesheet">
<link href="resources/css/developer_style.css" type="text/css"
	rel="stylesheet">
<script src="resources/js/jquery-3.5.0.js"></script>
<script src="resources/js/info.js"></script>
<script src="resources/js/developer.js"></script>
</head>
<body>
	<div id="container">
		<div id="content_box">
			<div class="title">DEVELOPERS</div>
			<div class="content">
				<div uk-slider="center: true">
					<div class="uk-position-relative uk-visible-toggle uk-dark" tabindex="-1">
						<ul class="uk-slider-items uk-child-width-1-2@s uk-child-width-1-4@l uk-child-width-1-4@m uk-grid">
							<li>
								<div class="uk-panel">
									<div class="box-container">
										<div class="card">
											<div class="social">
											<table>
												<tr>
													<td><img src= "resources/image/email.png" class="mail"/>
													</td>
													<td>
													<span>ohjieun@kakao.com </span>
													<img src= "resources/image/copy.png" class="copy" onClick='copyEmail("ohjieun@kakao.com")'/>
													<div class="copy_alert" aria-hidden="true">COPY!</div>
													</td>
													
												</tr>
												<tr>
													<td><a href = "https://github.com/jieunoh1224"><img src= "resources/image/github.png" class="git"/></a></td>
													<td><span>jieunoh1224</span></td>
												</tr>
												<tr>
												<td><img src= "resources/image/call.png" class="call"/></td>
												<td><span> 010-3223-7695</span></td>
												</tr>
												</table>
											</div>
											<div class="pic">
												<img src="resources/image/jieun.png" alt="profile-picture" title="Someone Famous" class="jieun" />
											</div>
											<div class="content">
												<h3 class="myname">Jieun OH</h3>
												<span>INFP</span>
												<p>
												<strong>"가장 해로운 벌레는 대충이다"</strong><br>
												할 수 없던 것을 할 수 있다고 말할 수 있는 개발자가 되자
												</p>
											</div>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="uk-panel">
									<div class="box-container">
										<div class="card">
											<div class="social">
												<table>
												<tr>
													<td><img src= "resources/image/email.png" class="mail"/>
													</td>
													<td>
													<span>jimin2802@gmail.com</span>
													<img src= "resources/image/copy.png" class="copy" onClick='copyEmail("jimin2802@gmail.com")'/>
													<div class="copy_alert">COPY!</div>
													</td>
												</tr>
													<tr>
													<td><a href = "https://github.com/iamjimin2"><img src= "resources/image/github.png" class="git"/></a></td>
													<td><span>iamjimin2</span></td>
												</tr>
												<tr>
												<td><img src= "resources/image/call.png" class="call"/></td>
												<td><span> 010-2802-3085</span></td>
												</tr>
												</table>
											</div>
											<div class="pic">
												<img src= "resources/image/jimin.png" alt="profile-picture" title="Someone Famous" class="jimin" />
											</div>
											<div class="content">
												<h3 class="myname">Jimin KIM</h3>
												<span>ENTJ</span>
												<p>
												    <strong>"포기하지 않는다!"</strong><br>
												    끊임없이 공부하고 마지막엔 웃는다 !
												</p>
											</div>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="uk-panel">
									<div class="box-container">
										<div class="card">
											<div class="social">
															<table>
												<tr>
													<td><img src= "resources/image/email.png" class="mail"/></td>
													<td><span> gi5442@naver.com</span>
													<img src= "resources/image/copy.png" class="copy" onClick='copyEmail("gi5442@naver.com")'/>
													<div class="copy_alert">COPY!</div>
													</td>
												</tr>
													<tr>
													<td><a href = "https://github.com/2mnzy"><img src= "resources/image/github.png" class="git"/></a></td>
													<td><span>2mnzy</span></td>
												</tr>
												<tr>
												<td><img src= "resources/image/call.png" class="call"/></td>
												<td><span> 010-9799-5825</span></td>
												</tr>
												</table>
											</div>
											<div class="pic">
												<img src="resources/image/minji.png" alt="profile-picture" title="Someone Famous" class="minji"  />
											</div>
											<div class="content">
												<h3 class="myname">Minji LEE</h3>
												<span>ISTJ</span>
												<p>
												<strong>"에러는 나의 원동력!"</strong> <br>
												나만의 코드를 나만의 속도로 작성하고자 합니다.
												</p>
											</div>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="uk-panel">
									<div class="box-container">
										<div class="card">
											<div class="social">
															<table>
												<tr>
													<td><img src= "resources/image/email.png" class="mail"/></td>
													<td><span>haeri98@icloud.com</span>
														<img src= "resources/image/copy.png" class="copy" onClick='copyEmail("haeri98@icloud.com")'/>
													<div class="copy_alert">COPY!</div>
													</td>
												</tr>
													<tr>
													<td><a href = "https://github.com/haeri98"><img src= "resources/image/github.png" class="git"/></a></td>
													<td><span>haeri98</span></td>
												</tr>
												<tr>
												<td><img src= "resources/image/call.png" class="call"/></td>
												<td><span> 010-9352-9365</span></td>
												</tr>
												</table>
											</div>
											<div class="pic">
												<img src="resources/image/haeri.png" alt="profile-picture" title="Someone Famous" class="haeri"  />
											</div>
											<div class="content">
												<h3 class="myname">Haeri KIM</h3>
												<span>ISTP</span>
												<p>
												<strong>"주석을 생활화 하자"</strong><br>
												개발을 하더라도 다른 사람들도 보고 무슨 기능인지 한눈에 알아볼 수 있도록 개발을 해야 유지보수가 좋습니다.
												</p>
											</div>
										</div>
									</div>
								</div>
							</li>
							<li>
								<div class="uk-panel">
									<div class="box-container">
										<div class="card">
											<div class="social">
															<table>
												<tr>
													<td><img src= "resources/image/email.png" class="mail"/></td>
													<td><span>dntrlsl02@naver.com</span>
														<img src= "resources/image/copy.png" class="copy" onClick='copyEmail("dntrlsl02@naver.com")'/>
													<div class="copy_alert">COPY!</div>
													</td>
												</tr>
													<tr>
													<td><img src= "resources/image/github.png" class="git"/></td>
													<td><span>dntrlsl02</span></td>
												</tr>
												<tr>
												<td><img src= "resources/image/call.png" class="call"/></td>
												<td><span>010-4083-0821</span></td>
												</tr>
												</table>
											</div>
											<div class="pic">
												<img src="resources/image/jaeseong.png" alt="profile-picture" title="Someone Famous" class="jae" />
											</div>
											<div class="content">
												<h3 class="myname">Jaeseong KIM</h3>
												<span>INFP</span>
												<p>
												<strong>"혼자보단 둘이서 !"</strong><br>
												혼자하는것보다 남들과 함께 하는것이 훨씬 빠르게 좋구나 라는걸 느꼈습니다.
												</p>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul>

						<a class="uk-position-center-left uk-position-small uk-hidden-hover" 
						   href="#" uk-slidenav-previous uk-slider-item="previous"></a> 
						<a class="uk-position-center-right uk-position-small uk-hidden-hover"
							href="#" uk-slidenav-next uk-slider-item="next"></a>
					</div>
					<ul class="uk-slider-nav uk-dotnav uk-flex-center uk-margin"></ul>
				</div>



			</div>
		</div>
	</div>
	<jsp:include page="../main/footer.jsp" />
	
	<script>
	function copyEmail(email){
		 var textarea = document.createElement('textarea');
		  textarea.value = email;

	  document.body.appendChild(textarea);
	  textarea.select();
	  textarea.setSelectionRange(0, 9999);  // 추가

	  document.execCommand('copy');
	  document.body.removeChild(textarea);
	  
	  var copy_alert = $('.copy_alert');
	  copy_alert.animate({opacity: '0.9'}, "slow");
	  copy_alert.animate({opacity: '0'}, "slow");
	}
	</script>
</body>
</html>