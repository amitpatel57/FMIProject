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


<!--Footer Include-->
<jsp:include page="footer.jsp"/>   
<%
  }    
%>
