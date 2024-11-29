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
<div class="fs-1 text-center">About Section</div>
<div class="row mt-3">
    <div class="col-sm-2">
        
    </div>
    <div class="col-sm-4 " >
        <a href="about_section.jsp" class="section-box d-flex justify-content-center text-white text_decoration direction_col" style="align-items:center;">
            <i class="fa-regular fa-address-card fa-beat fs-1"></i><span class="ms-3 fs-2">About Section</span>
        </a>
        
    </div>
    <div class="col-sm-4">
        <a href="speci_section.jsp" class="section-box d-flex justify-content-center text-white text_decoration direction_col" style="align-items:center;">
            <i class="fa-solid fa-atom fa-spin fs-1"></i><span class="ms-3 fs-2">Specialties Section</span>
        </a>
    </div>
    <div class="col-sm-2">
        
    </div>
</div>



<!--Footer Include-->
<jsp:include page="footer.jsp"/>   
<%
  }    
%>
