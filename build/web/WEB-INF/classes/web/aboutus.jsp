<jsp:include page="navbar.jsp" />
<jsp:include page="aboutslider.jsp" />
<!--About section start-->
<div class="row bg-white " id="aboutus">
    <div class="col-sm-12">
        <div class="text-center fs-1">ABOUT US</div>
        <jsp:include page="animation.jsp" />
    </div>
    <div class="row mt-4 mb-4">
        <div class="col-sm-12">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5  text-center d-flex justify-content-center align-item-center flex-sm-column">
                        <p class=" fs-13 about_text" >We, A1 Cold Storage are passionately engaged in providing an exclusive range of cold storage services. Our offered storage services are highly recognized in the market for their professionalism, reliability and cost-effectiveness.
                        </p>
                    </div>
                    <div class="col-sm-1"></div>
                    <div class="col-sm-6">
                        <img src="assets/images/store1.webp" class="about_img" style="max-height:100%; max-width:100%;"/>
                    </div>   
                </div>
            </div>
        </div>
    </div>
</div>
<!--About section close-->
<!--Specialties section start-->
<div class="row py-4 findByScroll bg-transparent" id="specialties">
    <div class="col-sm-12">
        <div class="row">
            <div class="col-sm-12 ">
                <div class=" fs-1 text-center text-white">OUR SPECIALTIES</div>
                <!--Animation page included-->
                <jsp:include page="animation.jsp" />
            </div>

        </div>
        <div class="container">
            <div class="row p-5">
                <div class="col-sm-4 text-white specialities_section">
                    <div class="d-flex justify-content-center align-item-center justify-content-sm-evenly">
                        <img src="assets/images/home_icon1.png" />
                        <p class="fs-21">Storage</p>
                    </div>
                    <div class="mt-4">
                        <p class="fs-13">We provide storage from general goods to automotive parts for long- or short-term storage.</p>
                    </div>
                </div>
                <div class="col-sm-4 text-white specialities_section">
                    <div class="d-flex justify-content-center align-item-center justify-content-sm-evenly">
                        <img src="assets/images/home_icon2.png" />
                        <p class="fs-21">Distribution</p>
                    </div>
                    <div class="mt-4">
                        <p class="fs-13"> A1 management system and reporting capabilities allow us to fulfill all your orders.</p>
                    </div>
                </div>
                <div class="col-sm-4 text-white specialities_section">
                    <div class="d-flex justify-content-center align-item-center justify-content-sm-evenly">
                        <img src="assets/images/home_icon3.png" />
                        <p class="fs-21">Trucking</p>
                    </div>
                    <div class="mt-4">
                        <p class="fs-13">Whether it's overnight or during the day, across town or across the North Dakota region, we have the experience you seek.</p>
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<div class="row under_specialties">
    <div class="col-sm-2 ">

    </div>
    <div class="col-sm-7  div_center ">
        <div class="fs-1  text-white" >
            Contact us now for a quote or more information on how we can help you

        </div>
    </div>
    <div class="col-sm-3 div_top_bottom text-start">
        <div class="">
            <a href="#click_call"><button class="button2" onclick="show_click_call();">LEARN MORE</button></a>
        </div>
    </div>
</div>
<div class="row pb-5 bg-white" >
    <div class="col-sm-12 p-0 d-none div_center" id="click_call">
        <div class="p-0" id="click_box" style="background:transparent;">
            <div class="row">
                <div class="col-sm-4" style="background:transparent;"></div>
                <div class="col-sm-4 bg-white px-2" id="click_inner_box">
                    <div class="row">
                        <div class="col-sm-12 text-end mt-3 me-1">
                            <a href="#specialties"><button class="btn btn-outline-success" onclick="show_click_call();"><i class="fa-solid fa-xmark"></i></button></a>                            
                        </div>
                    </div>
                    <h1 class="my-4 text-center">Request a Callback</h1>
                    <div class="col-sm-12 px-2">
                        <jsp:include page="animation.jsp" />
                    </div>

                    <form class="my-4 px-5">
                        <fieldset class="mt-4">
                            <legend>Enter Your Name</legend>
                            <input type="text" name="name" autocomplete="off" class="form_control2"/>
                        </fieldset>
                        <fieldset class="mt-4">
                            <legend>Enter Your Contact No</legend>
                            <input type="text" name="contact" autocomplete="off" class="form_control2"/>
                        </fieldset>
                        <div class="text-center mt-4">
                            <input type="submit" class="button" value="REQUEST"/>
                        </div>
                    </form>
                </div>
                <div class="col-sm-4" style="background:transparent;"></div>

            </div>
        </div>
    </div>
</div>
<!--Specialties section end-->
<jsp:include page="footer.jsp" />