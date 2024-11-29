
<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
//      session.setMaxInactiveInterval(5);
%>


<jsp:include page="header.jsp"/>
<!--News section start-->
<div class="row">
    <div class="col-sm-12">
        <h2 class="text-center mt-2" style="color:blue;">Add News & Events</h2>
    </div>
</div>
<div class="row">
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
        <form class="from-group" method="post" action="admincontroller.jsp">
            <input type="hidden" name="page" value="news" />
            <fieldset>
                <legend><span class="cancelerror"> Enter News  </span><span class="error text-danger"></span></legend>
                <textarea name="newstext" style="height:60px;" class="form_control2"></textarea>
            </fieldset>
            <div class="text-center mt-4">
            <input type="submit" value="Add" class="form_btn"/>
            </div>
        </form>
    </div>
    <div class="col-sm-3"></div>
</div>
<div class="row">
    <div class="col-sm-12">
        <iframe src="news_table.jsp" style="height:500px; width:100%;">
        
            </iframe>
    </div>
</div>

<!--News section close-->
<jsp:include page="footer.jsp"/>

<%    }
%>  