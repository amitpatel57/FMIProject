<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Farmer Merchant Integration</title>
        <!--Linking  css file-->
        <link href="assets/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
        <!--Linking fav icon--> 
        <link href="assets/images/slider_1.jpg" rel="icon"/>
        <!--Linking Bootstrap javascript file-->
        <script src="assets/js/bootstrap.bundle.js" type="text/javascript" defer="true"></script>
        <!--Including formvalidation.js file-->
        <script src="assets/js/formvalidation.js" type="text/javascript" defer="true"></script>
        <!--Linking Captcha js file-->
        <script src="assets/js/captcha.js" defer="true"></script>
        <!--Linking cdnjs for font awesome icon-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!--Google font-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@300&display=swap" rel="stylesheet">

        <!--Second Google font-->
        <link href="https://fonts.googleapis.com/css2?family=Raleway&family=Zen+Kaku+Gothic+New&display=swap"
              rel="stylesheet">
        <!--Scroll Revel-->  
        <script src="https://unpkg.com/scrollreveal"></script>
        <!--Linking index.js-->
        <script src="assets/js/index.js" defer="true"></script>
    </head>
    <body onload="preload();">
        <div class="p-0 m-0" id="body"></div>
        <jsp:include page="preloader.jsp" />
        <!--Wrapper container-fluid start-->
        <div class="container-fluid d-none" id="main_container">
            <!--Row for top of menu section start-->
            <div class="row bg-dark">
                <div class="col-sm-2 text-end">
                    <a href="#" class="text_decoration icon text-white p-1"><i class="fa-brands fa-facebook"></i></a>
                    <a href="#" class="text_decoration icon text-white p-1"><i class="fa-brands fa-linkedin"></i></a>
                    <a href="#" class="text_decoration icon text-white p-1"><i class="fa-brands fa-x-twitter"></i></a>
                    <a href="#" class="text_decoration icon text-white p-1"><i class="fa-brands fa-youtube"></i></a>
                    <a href="#" class="text_decoration icon text-white p-1"><i class="fa-solid fa-phone"></i></a>
                </div>
                <div class="col-sm-2"><a href="#" class="text_decoration text-white icon"><i class="fa-solid fa-envelope p-1"></i>contact@mysite.com</a></div>
                <div class="col-sm-3"></div>
                <div class="col-sm-1 text-end"><a href="#" class="text_decoration icon text-white"><i class="fa-solid fa-location-dot p-1"></i> Lucknow</a></div>
                <div class="col-sm-2">
                    <a href="register.jsp" class="text_decoration text-white icon"><i class="fa-solid fa-user p-1 icon"></i> Register </a> 
                    <a href="login.jsp" class="text-white text_decoration icon"> / Login</a>
                </div>
                <div class="col-sm-2">
                    <div id="google_element" style="height:20px;"></div>
                    <script src="http://translate.google.com/translate_a/element.js?cb=loadGoogleTranslate"></script>
                    <script>
                        function loadGoogleTranslate() {
                            new google.translate.TranslateElement("google_element");
                         }
                    </script>
                </div>
            </div>
            <!--Row for top of menu section close-->
            <!--Navbar section start-->
            <div class="row py-2 sticky-top bg-white " id="nav_bar" style="margin-top:1px;">
                <div class="col-sm-3  p-0 m-0 text-center">
                    <img src="assets/images/A1logo.webp" class="logo_img" alt="something went wrong"/>
                </div>
                <div class="col-sm-9 p-0 m-0 " style="background:linear-gradient(130deg,white 70%,#3b8dd3 70% 100%);">
                    <nav class="navbar navbar-expand-lg ">
                        <div class="container-fluid py-2">

                            <a class="navbar-brand" href="#">FMI</a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                    <li class="nav-item ">
                                        <a class="nav-link active menubar" aria-current="page" href="index.jsp">Home</a>
                                    </li>
                                    <li class="nav-item ">
                                        <a class="nav-link active menubar" href="aboutus.jsp">About Us</a>
                                    </li>
                                    <li class="nav-item ">
                                        <a class="nav-link active menubar" href="services.jsp">Services</a>
                                    </li>
                                    <li class="nav-item ">
                                        <a class="nav-link active menubar" href="register.jsp">Register</a>
                                    </li>
                                    <li class="nav-item ">
                                        <a class="nav-link active menubar" href="login.jsp">Login</a>
                                    </li>
                                    <li class="nav-item ">
                                        <a class="nav-link active menubar" href="contactus.jsp">Contact Us</a>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <!--Navbar section close-->
            <!--News Section start-->
            <div class="row  text-danger">
                <div class="col-sm-12 text-center bg-white" style="margin-top:0.5px;"  >
                    <marquee onload="start();" onmouseover="stop();" onmouseout="start();">
                        <ul style="list-style-type:none; margin:0px;">
                            <%
                                DbManager dm = new DbManager();
                                ResultSet res = dm.select("select * from tbl_news order by id DESC");
                                while (res.next()) {
                            %>
                            <li style="display: inline; padding-right:40px; font-size:20px; font-style:bold;"><img src="assets/images/new-blinking.gif" style="height:25px;" /><%=res.getString("newstext")%></li>
                                <%
                                    }
                                %>
                        </ul>
                    </marquee>
                </div>                
            </div>

