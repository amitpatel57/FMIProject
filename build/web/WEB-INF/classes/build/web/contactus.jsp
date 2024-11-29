<!--Including navbar--> 
<jsp:include page="navbar.jsp" />
<!--including slider-->
<jsp:include page="contactslider.jsp"/>
<!--Body of Contact Us page start-->
<div class="row  pb-4 bg-white" id="contactus">
    <div class="col-sm-12 fs-1 text-center">CONTACT US</div>
    <jsp:include page="animation.jsp" />
    <div class="col-sm-12">
        <div class="row contactBackground" >
            <div class="col-sm-12 p-0">
                <div class="fs-1 text-center py-4">We Are Ready to Discuss Everything in Person or at a Meeting</div>
                <div class="container">
                    <div class="row px-5 pt-4 ">
                        <div class="col-sm-4 text-center fs-15 text-primary">
                            <i class="fa-solid fa-location-dot p-1"></i><br/>
                            Lucknow Uttar Pradesh
                        </div>
                        <div class="col-sm-4 text-center fs-15 text-primary">
                            <i class="fa-solid fa-phone"></i><br/>
                            <p>7275216351</p>
                        </div>
                        <div class="col-sm-4 fs-15 text-center text-primary">
                            <i class="fa-solid fa-envelope"></i><br/>
                            officialamitpatel57@gmail.com
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-1"></div>
                        <div class="col-sm-10 px-5 pb-5 bg-white my-5">
                            <div class="text-center text-dark fs-21">Contact Form</div>
                            <form class="form-group" onsubmit="return formvalidation()" action="controller.jsp"  method="post" name="contactform">
                                <input type="hidden" name="page" value="contactus"/>
                                <fieldset class="mt-3">   
                                    <legend><span class="cancelerror" id="name1">Enter Your Name </span><span id="name"  class="text-danger error" ></span></legend>
                                    <input type="text" autocomplete="off" onkeyup="from_check(this);" name="name" class="form_control2"/><br/>
                                </fieldset>
                                <fieldset class="mt-3">
                                    <legend><span class="cancelerror" id="gender1">Gender </span><span  class="text-danger error" id="gender"></span></legend>
                                    <input type="radio" class="ms-4 form-check-input" onclick="radio_check(this);"  name="gender" value="male"/>Male
                                    <input type="radio" class="ms-4 form-check-input" onclick="radio_check(this);"  name="gender" value="female"/>Female
                                </fieldset>
                                <fieldset class="mt-3">
                                    <legend><span class="cancelerror" id="contact1">Enter Your Contact No </span><span id="contact"  class="text-danger error"></span></legend>
                                    <input type="text" autocomplete="off" onkeypress="return check_number(event);" onkeyup="from_check(this);" maxlength="10" name="contact" class="form_control2"/>
                                </fieldset>
                                <fieldset class="mt-3">
                                    <legend for="email"><span class="cancelerror" id="email1">Enter Your Email </span><span id="email"  class="text-danger error"></span></legend>
                                    <input type="email" autocomplete="off" name="email" onkeyup="from_check(this);" class="form_control2"/>
                                </fieldset>
                                <fieldset class="mt-3">
                                    <legend for="subject"><span class="cancelerror" id="enquirytext1">Subject  </span><span id="enquirytext" class="text-danger error"></span></legend>
                                    <textarea class="form_control2" autocomplete="off" onkeyup="from_check(this);" name="enquirytext" style="height:80px;"></textarea>
                                </fieldset>
                                <fieldset class="mt-3">
                                    <legend for="address"><span class="cancelerror" id="address1">Address </span><span id="address" class="text-danger error"></span></legend>
                                    <textarea name="address" autocomplete="off" onkeyup="from_check(this);" class="form_control2" style="height: 80px;"></textarea><br/>
                                </fieldset>
                                <!--Captcha section start-->
                                <jsp:include page="captcha.jsp"/>
                                <!--Captcha section close-->
                                <div class="d-flex justify-content-center mt-4">
                                    <input type="reset" value="Reset" class="form_btn me-4"/>
                                    <input type="submit" value="Submit" id="btn_submit" disabled="true" class="btn_disabled"/>
                                </div>
                            </form>
                        </div>
                        <div class="col-sm-1"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-12">
        <div class="container">
            <div class="col-sm-12">
                <div class="fs-13 text-secondary my-5">Don't hesitate to get in touch with us! We love the challenge of turning your ideas into reality and are always ready to talk through any message.</div>
            </div>
        </div>
    </div>
    <div class="col-sm-12 ">
        <div class="row">
            <div class="col-sm-12 p-0">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3594.697566283142!2d82.69761417493328!3d25.714435610557405!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39903bb8f327527b%3A0x3a2853d99a687975!2sGovernment%20Polytechnic%20Jaunpur!5e0!3m2!1sen!2sin!4v1695087349301!5m2!1sen!2sin"  style="border:0; min-height:400px; width:100%;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>
</div>
<!--Body of Contact Us page end-->
<!--Including Footer--> 
<jsp:include page="footer.jsp" />
<script>

</script>
