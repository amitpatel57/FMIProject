
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<!--footer section start-->
<div class="row" id="footer">
    <div class="col-sm-12" style="background:transparent; background-color:#3b8dd355;">
        <div class="container">
            <div class="row footer_content">
                <div class="col-sm-3 text-white text-center pt-3">
                    <img src="assets/images/A1logo.webp" style="color:white; max-width:100%; max-height:100px;" />
                    <div class="mt-4">
                        We have built an enviable reputation in the consumer goods, heavy industry, high-tech, manufacturing, medical, recreational vehicle, and transportation sectors.
                    </div>
                </div>
                <div class="col-sm-3 footer_content">
                    <div class="fs-3 text-white text-center ">Important Links</div>
                    <hr class="custom_hr"/>
                    <div class="text-center">
                        <a href="#" class="text_decoration text-white">About Us</a><br/>
                        <a href="#"class="text_decoration text-white">Privacy and Policy</a><br/>
                        <a href="#"class="text_decoration text-white">Services</a><br/>
                        <a href="#"class="text_decoration text-white ">Gallery</a><br/>
                        <a href="#" class="text_decoration text-white ">Contact Us</a> <br/>  
                    </div>

                </div>
                <div class="col-sm-3 footer_content">
                    <div class="fs-3 text-white text-center">Latest News</div>
                    <hr class="custom_hr"/>
                    <div class="text-white">
                        <marquee direction="up" onmouseover="stop();" onmouseout="start();">
                        <ul style="list-style-type: none;">
                        <%
                        DbManager dm=new DbManager();
                        ResultSet res=dm.select("select * from tbl_news order by id DESC ");
                        while(res.next()){
                        %>
                        <li class="py-2" style=" font-style:bold;"><img src="assets/images/new-blinking.gif" class="me-2" style="height:25px; border-radius:50%;" /><%=res.getString("newstext")  %></li>
                        <%
                        }
                        %>
                    </ul>
                    </marquee>
                    </div>

                </div>
                <div class="col-sm-3 footer_content">
                    <div class="fs-3 text-white text-center">Newsletter</div>
                    <hr class="custom_hr"/>
                    <div class="row">
                        <div class="col-sm-12 text-white">
                            <P style="color:#ccccff">Sign up today for hints, tips and the latest product news</P>

                            <form class="  " name="newsletter" onsubmit="return newslettercheck();" action="controller.jsp">
                                <fieldset class="mt-4 ">
                                    <input type="hidden" name="page" value="newsletter"/>
                                    <legend> <span id="email1"  class="cancelerror">&nbsp; Email &nbsp;</span><span id="email" class="error" style="color:white;"></span></legend>
                                    <input type="email" name="email" onkeyup="news_form_check(this);" autocomplete="off" class="p-1 form_control2"/>
                                </fieldset>
                                
                                <div class="text-center mt-4">
                                    <input type="submit" class="button2" value="SUBMIT"/>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
            <hr class="hr"/>
            <div class="row">
                <div class="col-sm-12 pb-4">
                    <a href="https://officialamitpatel.000webhostapp.com" target="_blank" class="text_decoration text-white"><div class="text-center text-light">Copyrights &copy; 2023 | All Rights reserved | Designed and developed By Amit Patel </div></a>
                </div>
            </div>
        </div>
    </div>
</div>
<!--footer section close-->

</div>
<!--Wrapper Container-fluid close-->

</body>
</html>

