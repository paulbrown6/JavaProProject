<%@ page import="user.User" %>
<%@ page import="java.util.Date" %>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
<title>Buy_shop an E-Commerce online Shopping Category Flat Bootstarp responsive Website Template| Login :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Buy_shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<script src="js/simpleCart.min.js"> </script>
<!-- Custom Theme files -->
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
</head>
<body>
<div class="header_top">
	<div class="container">
		<div class="cssmenu">
			<ul>
				<li class="active"><a href="login.jsp">
					<% User user = (User)request.getSession(true).getAttribute("user");%>
					<% if (!(user == null)) {%>
					<%out.write(user.getFirstname());%>
					<% } else { %>
					<%out.write("Мой аккаунт");%>
					<% } %>
				</a></li>
			</ul>
		</div>
	</div>
</div>
<div class="header_bottom men_border">
	<div class="container">
		<div class="col-xs-8 header-bottom-left">
			<div class="col-xs-2 logo">
				<h1><a href="index.jsp"><span>CHOP</span>shop</a></h1>
			</div>
			<div class="col-xs-6 menu">
				<ul class="megamenu skyblue">
					<li class="active grid"><a class="color1" href="index.jsp">Оружие</a><div class="megapanel">
						<div class="row">
							<div class="col1">
								<div class="h_nav">
									<ul>
										<li><a href="men.jsp">Световые мечи</a></li>
										<li><a href="men.jsp">Бластеры</a></li>
									</ul>
								</div>
							</div>
							<div class="col1">
								<div class="h_nav">
									<h4>Популярное</h4>
									<ul>
										<li><a href="men.jsp">Арбалет</a></li>
										<li><a href="men.jsp">Синий меч</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					</li>
					<li class="grid"><a class="color2" href="#">Корабли</a>
						<div class="megapanel">
							<div class="row">
								<div class="col1">
									<div class="h_nav">
										<ul>
											<li><a href="men.jsp">Крейсеры</a></li>
											<li><a href="men.jsp">Гражданские</a></li>
											<li><a href="men.jsp">Штурмовые</a></li>
										</ul>
									</div>
								</div>
								<div class="col1">
									<div class="h_nav">
										<h4>Популярное</h4>
										<ul>
											<li><a href="men.jsp">Тысячелетний Сокол</a></li>
											<li><a href="men.jsp">Звезда Смерти</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li><a class="color4" href="about.html">О нас</a></li>
					<li><a class="color6" href="contact.html">Помощь</a></li>
				</ul>
			</div>
		</div>
		<div class="col-xs-4 header-bottom-right">
			<div class="box_1-cart">
				<div class="box_11"><a href="checkout.html">
					<h4><p>Cart: <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</p><img src="images/bag.png" alt=""/><div class="clearfix"> </div></h4>
				</a></div>
				<p class="empty"><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
				<div class="clearfix"> </div>
			</div>
			<div class="search">
				<input type="text" name="s" class="textbox" value="Поиск" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Поиск';}">
				<input type="submit" value="Искать" id="submit" name="submit">
				<div id="response"> </div>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="clearfix"></div>
	</div>
</div>
<div class="single_top">
	 <div class="container"> 
	    <div class="register">
			<% if (!(user == null)) {%>
			<div class="col-md-6 login-right">
				<h3>Здравствуйте <%out.write(user.getFirstname());%> <%out.write(user.getLastname());%></h3>
				<img src="images/1.jpg" class="img-responsive" alt=""/>
			</div>
			<div class="col-md-6 login-left">
				<h3>Информация о вас</h3>
				<p>Ваш email:  <%out.write(user.getEmail());%></p>
				<p>Ваш пароль:  <%out.write(user.getPassword());%></p>
				<p>Последний раз вы заходили:  <%out.write(String.valueOf(new Date(request.getSession().getLastAccessedTime())));%></p>
			</div>
			<div class="clearfix"> </div>
			<% } else { %>
			  <div class="col-md-6 login-right">
			  	<h3>ВХОД</h3>
				<p>Пожалуйста, введите логин и пароль.</p>
				<p class="error" style="color: red;">${error}</p>
				<form action="log" method="post">
				  <div>
					<span>Email<label>*</label></span>
					<input type="text" name="login">
				  </div>
				  <div>
					<span>Пароль<label>*</label></span>
					<input type="text" name="pass">
				  </div>
				  <a class="forgot" href="#">Забыли пароль?</a>
				  <input type="submit" value="Войти">
			    </form>
			   </div>
			    <div class="col-md-6 login-left">
			  	 <h3>РЕГИСТРАЦИЯ</h3>
				 <p>Для того, чтобы совершать покупки в нашем магазине, вам следует зарегистрироваться.</p>
				 <a class="acount-btn" href="register.jsp">Регистрация</a>
			   </div>	
			   <div class="clearfix"> </div>
			<% } %>
		</div>
     </div>
</div>      
<div class="footer">
	<div class="container">
	   <div class="footer_top">
		<div class="col-md-4 box_3">
			<h3>Our Stores</h3>
			<address class="address">
              <p>9870 St Vincent Place, <br>Glasgow, DC 45 Fr 45.</p>
              <dl>
                 <dt></dt>
                 <dd>Freephone:<span> +1 800 254 2478</span></dd>
                 <dd>Telephone:<span> +1 800 547 5478</span></dd>
                 <dd>FAX: <span>+1 800 658 5784</span></dd>
                 <dd>E-mail:&nbsp; <a href="mailto@example.com">info(at)buyshop.com</a></dd>
              </dl>
           </address>
           <ul class="footer_social">
			  <li><a href=""> <i class="fb"> </i> </a></li>
			  <li><a href=""><i class="tw"> </i> </a></li>
			  <li><a href=""><i class="google"> </i> </a></li>
			  <li><a href=""><i class="instagram"> </i> </a></li>
		   </ul>
		</div>
		<div class="col-md-4 box_3">
			<h3>Blog Posts</h3>
			<h4><a href="#">Sed ut perspiciatis unde omnis</a></h4>
			<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced</p>
			<h4><a href="#">Sed ut perspiciatis unde omnis</a></h4>
			<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced</p>
			<h4><a href="#">Sed ut perspiciatis unde omnis</a></h4>
			<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced</p>
		</div>
		<div class="col-md-4 box_3">
			<h3>Support</h3>
			<ul class="list_1">
				<li><a href="#">Terms & Conditions</a></li>
				<li><a href="#">FAQ</a></li>
				<li><a href="#">Payment</a></li>
				<li><a href="#">Refunds</a></li>
				<li><a href="#">Track Order</a></li>
				<li><a href="#">Services</a></li>
			</ul>
			<ul class="list_1">
				<li><a href="#">Services</a></li>
				<li><a href="#">Press</a></li>
				<li><a href="#">Blog</a></li>
				<li><a href="#">About Us</a></li>
				<li><a href="#">Contact Us</a></li>
			</ul>
			<div class="clearfix"> </div>
		</div>
		<div class="clearfix"> </div>
		</div>
		<div class="footer_bottom">
			<div class="copy">
                <p>Copyright © 2015 Buy_shop. All Rights Reserved.<a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
	        </div>
	    </div>
	</div>
</div>
</body>
</html>		