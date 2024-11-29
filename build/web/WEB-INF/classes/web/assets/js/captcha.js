
function refresh(){
    window.history.go(0);
}
function captchacheck(){
    var captcha =document.getElementById("captcha_code").innerHTML;
    var captcha_input=parseInt(document.getElementById("captcha_input").value);
    var btn_submit=document.getElementById("btn_submit");
    captcha=parseInt(captcha);
    console.log(captcha_input);
    if(captcha_input==captcha){
        btn_submit.removeAttribute("disabled");
        btn_submit.classList.remove("btn_disabled");
        btn_submit.classList.add("form_btn");
    }
    else{
       btn_submit.setAttribute("disabled","true");
       btn_submit.classList.add("btn_disabled");
        btn_submit.classList.remove("form_btn");
    }
    
}