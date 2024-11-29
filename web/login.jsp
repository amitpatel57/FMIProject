<jsp:include page="navbar.jsp" />
<!--Slider section start-->
<div class="row">
    <div class="col-sm-12 m-0 p-0 p-relative">
        <!--<div id="carouselExampleSlidesOnly" class="carousel slide " data-bs-ride="carousel">-->
        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">

            <div class="carousel-inner">
                <div class="carousel-item active" data-bs-interval="2000">
                    <img src="assets/images/slider1.jpg" style="height:500px;"  class="d-block w-100 slider_img" alt="...">
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <img src="assets/images/slider2.jpg" style="height:500px;" class="d-block w-100 slider_img" alt="...">
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <img src="assets/images/slider3.jpg" style="height:500px;" class="d-block w-100 slider_img" alt="...">
                </div>
            </div>
        </div>
        <div class="h_100 w_100 p-absolute top-0 bg_opacity text-center text-white d-flex justify-content-center align-item-center direction_col">

            <h1 class="fs-21"><a href="index.jsp" class="text_decoration text-white">Home</a> / <a class="text_decoration text-white" href="#">Admin Login</a></h1>

            <a href="#"><button class="button">Enquire Now</button></a>
        </div>
    </div>
</div>
<!--Slider section close-->




<div class="row bg-white" id="login">
    <div class="col-sm-12">
        <div class="fs-21 text-center">ADMIN LOGIN </div>
        <jsp:include page="animation.jsp" />
    </div>
    <div class="row mt-5">
        <div class="col-sm-3"> </div>
        <div class="col-sm-6">
            <form action="controller.jsp" method="post" name="login_form" onsubmit="return loginvalidation();">
                <input type="hidden" value="adminlogin" name="page"/>
                <fieldset class="mt-3">
                    <legend><span class="cancelerror" id="userid1">Enter User Id  </span><span id="userid"  class="error text-danger"></span></legend>
                    <input type="email" autocomplete="off" onkeyup="login_form_check(this);" name="userid" class="form_control2"/>
                </fieldset>
                <fieldset class="mt-3">
                    <legend><span class="cancelerror" id="password1">Enter Password  </span><span id="password" class="error text-danger"></span></legend>
                    <input type="password" name="password" onkeyup="login_form_check(this);" class="form_control2"/>
                </fieldset>
                <jsp:include page="captcha.jsp"/>
                <div class="text-center my-4">
                    <input type="submit" id="btn_submit" disabled="true" class="btn_disabled"/>
                </div>
            </form>
        </div>
        <div class="col-sm-3"></div>
    </div>
</div>
<jsp:include page="footer.jsp" />