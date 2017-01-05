<%@ page import="user.User" %><%--
  Created by IntelliJ IDEA.
  User: Paul Brown
  Date: 04.01.2017
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Магазин Чоппера</title>
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
        <div class="pages">
            <img src="images/banner.jpg"  class="img-responsive" alt=""/>
            <p class="m_10">C1-10P, более известный как "Чоппер", был дроидом-астромеханником запрограммированным как мужчина, в первые годы Галактической Империи. Он принадлежал команде повстанцев, восставших против Империи, и из-за скромных финансовых возможностей своих хозяев, был собран из запчастей различных дроидов. В отличие от других астродроидов, таких как знаменитый R2-D2, Чоппер не старался понравиться живым существам с которыми работал. Он был упрямым, вздорным и раздражительным (товарищи по команде часто грозили разобрать его на запчасти), однако всегда приходил на помощь в трудную минуту и мог найти выход практически из любой ситуации. За эти качества товарищи по команде прощали Чопперу его личные недостатки. </p>
            <p class="m_11">В последнее время С1-10Р подался в пираты и открыл свой собственный магазин "эксклюзивных" товаров, которые вы можете приобрести по значительно низким ценам! </p>
            <br/>
            <p class="title">Отзывы покупателей:</p>
            <ul class="list">
                <li>
                    <div class="preview"><a href="#"><img src="images/14.jpg" class="img-responsive" alt=""></a></div>
                    <div class="data">
                        <div class="title">Feb 3,2015  /  posted by Suffered <a href="#">reply</a></div>
                        <p>Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum. qui sequitur mutationem consuetudium lectorum.,</p>
                    </div>
                    <div class="clearfix"></div>
                </li>
                <li class="middle">
                    <div class="preview1"><a href="#"><img src="images/14.jpg" class="img-responsive" alt=""></a></div>
                    <div class="data-middle">
                        <div class="title">Feb 3,2015  /  posted by Suffered <a href="#">reply</a></div>
                        <p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum Mirum est notare quam littera gothica, quam nunc putamus parum</p>
                    </div>
                    <div class="clearfix"></div>
                </li>
            </ul>
            <div class="comments-area">
                <h3>Add New Comment</h3>
                <form>
                    <p>
                        <label>Name</label>
                        <span>*</span>
                        <input type="text" value="">
                    </p>
                    <p>
                        <label>Email</label>
                        <span>*</span>
                        <input type="text" value="">
                    </p>
                    <p>
                        <label>Website</label>
                        <input type="text" value="">
                    </p>
                    <p>
                        <label>Subject</label>
                        <span>*</span>
                        <textarea></textarea>
                    </p>
                    <p>
                        <input type="submit" value="Submit Comment">
                    </p>
                </form>
            </div>
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