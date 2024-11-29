<%@page import="dbpack.DbManager"%>
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
        <h2 style="color:blue" class="text-center mt-2">List of Farmers</h2>
        <iframe src="farmer_table.jsp" style="height:450px; width:100%;">
            
        </iframe>
    </div>
</div>



<!--Footer Include-->
<jsp:include page="footer.jsp"/>   
<%
  }    
%>
