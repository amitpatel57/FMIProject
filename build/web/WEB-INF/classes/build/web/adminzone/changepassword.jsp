<%
  if(session.getAttribute("adminid")==null){
   response.sendRedirect("../login.jsp");
  }
  else{
//      session.setMaxInactiveInterval(5);
%>


<jsp:include page="header.jsp"/>
<script>
function validate(){
    var op=document.getElementById("oldpassword");
    var np=document.getElementById("newpassword");
    var cp=document.getElementById("confirmpassword");
//    console.log(op);
//    console.log(np);
//    console.log(cp);
    if(op.value=="" || op.value==null){
        alert("Please Enter old password");
        op.focus();

    }
    else if(np.value==null || np.value==""){
        alert("Please Enter New Password !");
        np.focus();
        }
    
    else if(cp.value==null || cp.value==""){
        alert("Please Enter Confirm Password !");
        cp.focus();

    }
    else if(np.value!=cp.value){
        alert("Confirm password not matched !");
        cp.focus();

    }
    else{
//        alert("submit");
        document.getElementById("frmchangepassword").submit();
    }
}
</script>
<div class="row">
    <div class="col-sm-12">
        <h2 class="text-center mt-2" style="color:blue;">Change Password</h2>
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <form class="form-group" method="post" id="frmchangepassword" action="admincontroller.jsp" onsubmit="event.preventDefault();validate();">
                    <input type="hidden" value="changepassword" name="page"/>
                    <label for="userid">Userid</label>
                    <input type="email" name="userid"  readonly="true" class="form-control form_control" value="<%=session.getAttribute("adminid") %>"/>
                    <label for="old password">Enter Your Old Password </label><span class="error text-danger" id="op"></span>
                    <input type="password" name="op" id="oldpassword" class="form-control form_control"/>
                    <label for="New password">Enter New Password </label><span class="error text-danger" id="np"></span>
                    <input type="password" name="np" id="newpassword" class="form-control form_control"/>
                    <label for="Confirm password">Confirm  Password </label><span class="error text-danger" id="cp"></span>
                    <input type="password" name="cp" id="confirmpassword" class="form-control form_control"/>
                    <jsp:include page="../captcha.jsp"/>
                    <div class="text-center my-4"><input type="submit" value="Change Password" id="btn_submit" disabled="true" class="btn_disabled"/></div>
                    
                </form>
            </div>
            <div class="col-sm-3"></div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>

<%
  }    
%>  