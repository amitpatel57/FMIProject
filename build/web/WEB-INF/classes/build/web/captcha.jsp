<%@page import="java.util.Random"%>
<%
    Random r = new Random();
        int l = r.nextInt(99999);
String randum=Integer.toString(l);
    while(randum.length()!=5){
         l = r.nextInt(99999);
         randum=Integer.toString(l);
    }
%>
<div class="d-flex justify-content-center align-item-center">
    <div>
        <label for="captcha">Captcha Code</label>
        <div class="d-flex justify-content-center">
            <div class="fs-3 captcha" id="captcha_code"><%=l%></div>
            <i class="fa-solid fa-arrows-rotate fs-4 mt-2 ms-3" onclick="refresh();"></i>
        </div>
    </div>
    <div style="margin-left:30px;">
        <label for="fillcaptcha">Fill Captcha</label> <br/>
        <input type="text" id="captcha_input" onkeyup="captchacheck();"/>
    </div>
</div>