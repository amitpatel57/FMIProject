<!--Including Navbar-->
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

            <h1 class="fs-21"><a href="index.jsp" class="text_decoration text-white">Home</a> / <a class="text_decoration text-white" href="#">Register</a></h1>

            <a href="#"><button class="button">Enquire Now</button></a>
        </div>
    </div>
</div>
<!--Slider section close-->

<div class="row" id="register">
    <div class="col-sm-12 bg-white">
        <div class="row">
            <div class="col-sm-12">
                <div class=" fs-1  text-center">REGISTER</div>
                <!--Animation page included-->
                <jsp:include page="animation.jsp" />
            </div>
        </div>
        <div class="row contactBackground mt-5 p-5">
            <div class="col-sm-2"></div>
            <div class="col-sm-8 bg-white ">
                <div class="fs-15 text-center p-4">Registration Form</div>
                <form class="form-group pb-5" method="post" name="registerform" onsubmit="return registervalidation();"
                      action="controller.jsp">
                    <input type="hidden" name="page" value="register" />
                    <fieldset  class="mt-2">
                        <legend><span id="name1" class="cancelerror"> Enter Your Name</span> <span id="name" class="text-danger error"></span></legend>
                        <input type="text" autocomplete="off" onkeyup="reg_form_check(this);" name="name" class="form_control2" />
                    </fieldset>
                    <fieldset  class="mt-2">
                        <legend><span id="fname1" class="cancelerror">Enter Your Father's Name </span><span id="fname" class="error text-danger"></span></legend>
                        <input type="text" autocomplete="off" onkeyup="reg_form_check(this);" name="fname" class="form_control2" />
                    </fieldset>
                    <fieldset  class="mt-2">
                        <legend><span id="mname1" class="cancelerror">Enter Your Mother's Name </span><span id="mname" class="error text-danger"></span></legend>
                        <input type="text" autocomplete="off" onkeyup="reg_form_check(this);" name="mname" class="form_control2" />
                    </fieldset>
                    <fieldset  class="mt-2">
                        <legend><span id="gender1" class="cancelerror">Gender </span><span id="gender" class="error text-danger"></span></legend>
                        <div class="ms-2">
                            <input type="radio" class="form-check-input" onclick="radio_check(this);" name="gender"
                                   value="male" /> Male
                            <input type="radio" class="form-check-input" onclick="radio_check(this);" name="gender"
                                   value="female" /> Female
                        </div>
                    </fieldset>
                    <fieldset  class="mt-2">
                        <legend><span id="village1" class="cancelerror">Enter Your Village Name</span> <span id="village" class="text-danger error"></span></legend>
                        <input type="text" autocomplete="off" onkeyup="reg_form_check(this);" name="village" class="form_control2" />
                    </fieldset>
                    <fieldset  class="mt-2">
                        <legend><span id="post1" class="cancelerror">Enter Your Postal Address </span><span id="post" class="text-danger error"></span></legend>
                        <input type="text" autocomplete="off" onkeyup="reg_form_check(this);" name="post" class="form_control2" />
                    </fieldset>
                    <fieldset  class="mt-2">
                        <legend><span id="district1" class="cancelerror">Enter Your District</span> <span id="district" class="text-danger error"></span></legend>
                        <input type="text" autocomplete="off" onkeyup="reg_form_check(this);" name="district" class="form_control2" />
                    </fieldset>
                    <fieldset  class="mt-2">
                        <legend><span id="state1" class="cancelerror">Enter Your State </span> <span id="state" class="text-danger error"></span></legend>
                        <input type="text" autocomplete="off" onkeyup="reg_form_check(this);" name="state" class="form_control2" />
                    </fieldset>
                    <fieldset  class="mt-2">
                        <legend><span id="pincode1" class="cancelerror">Enter Your Pin Code </span> <span id="pincode" class="text-danger error"></span></legend>
                        <input type="text" autocomplete="off" onkeyup="reg_form_check(this);" onkeypress="return check_number(event);"  maxlength="6" name="pincode" class="form_control2" />
                    </fieldset>
                    <fieldset  class="mt-2">
                        <legend><span id="contact1" class="cancelerror">Enter Your Contact No </span> <span id="contact" class="text-danger error"></span></legend>
                        <input type="text" autocomplete="off" onkeyup="reg_form_check(this);" onkeypress="return check_number(event);" maxlength="10" name="contact" class="form_control2" />
                    </fieldset>
                    <fieldset  class="mt-2">
                        <legend><span id="aadharno1" class="cancelerror">Enter Your Aadhar No </span> <span id="aadharno" class="text-danger error"></span></legend>
                        <input type="text" autocomplete="off" onkeyup="reg_form_check(this);" onkeypress="return check_number(event);" maxlength="12" name="aadharno" class="form_control2" />
                    </fieldset>
                    <fieldset  class="mt-2">
                        <legend><span id="panno" class="cancelerror">Enter Your Pan No </span> <span class="text-danger error"></span></legend>
                        <input type="text" autocomplete="off" name="panno" class="form_control2" />
                    </fieldset>

                    <jsp:include page="captcha.jsp" />
                    <div class="text-center mt-4">
                        <input type="reset" value="Reset" class="form_btn me-4" />
                        <input type="submit" id="btn_submit" class="btn_disabled" disabled="true" value="Register" />
                    </div>


                </form>
            </div>
            <div class="col-sm-2"></div>
        </div>
    </div>
</div>



<!--Including Footer-->
<jsp:include page="footer.jsp" />
<p style="color:#26547d55;"></p>