
<%
  if(session.getAttribute("adminid")==null){
   response.sendRedirect("../login.jsp");
  }
  else{
//      session.setMaxInactiveInterval(5);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<!--Navbar close-->
<div class="row">
    <div class="col-sm-12">
        <h2 style="color:blue; text-align: center;">Manage Booking</h2>
        <iframe src="closing_table.jsp" style="height:500px; width: 100%;"></iframe>
    </div>
</div>



<!--Footer Include-->
<jsp:include page="footer.jsp"/>   
<%
  }    
%>
