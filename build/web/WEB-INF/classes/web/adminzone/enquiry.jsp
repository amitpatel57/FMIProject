
<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
//      session.setMaxInactiveInterval(5);
%>


<jsp:include page="header.jsp"/>
<!--Enquiry section start-->
<div class="row">
    <div class="col-sm-12">
        <h2 class="text-center mt-2" style="color:blue;">Enquiry Management</h2>
    </div>
</div>
<div class="row">
    <div class="col-sm-12">
        <iframe src="enquiry_table.jsp" style="height:500px; width:100%;">
        
            </iframe>
    </div>
</div>

<!--Enquiry section close-->
<jsp:include page="footer.jsp"/>

<%    }
%>  