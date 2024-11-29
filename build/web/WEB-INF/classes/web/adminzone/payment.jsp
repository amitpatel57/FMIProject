
<%@page import="java.sql.ResultSet"%>
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
        <h2 style="color:blue; text-align: center;">Do Payment</h2>
        <div class="row">
            <div class="col-sm-2"></div>
            <div class="col-sm-8">
        <%
            String ano=request.getParameter("ano");
            DbManager dm=new DbManager();
            String query="select * from tbl_booking where aadharno='"+ano+"'";
            ResultSet res=dm.select(query);
            if(res.next()){
        %>
        <form class="form-group" action="admincontroller.jsp">
            <input type="hidden" name="page" value="payment" />
            <fieldset>
                <legend> Aadhar No </legend>
                <input type="text" class="form_control2" readonly="true" name="ano"  value="<%=res.getString("aadharno") %>"/>
            </fieldset>
            <fieldset>
                <legend> Total Amount </legend>
                <input type="number" class="form_control2" readonly="true" name="totalamt" value="<%=res.getString("totalamt") %>" />
            </fieldset>
            <fieldset>
                <legend> Advance Amount </legend>
                <input type="number" class="form_control2" readonly="true" name="advanceamt" value="<%=res.getString("advanceamt") %>" />
            </fieldset>
            <fieldset>
                <legend> Rest Amount </legend>
                <input type="number" class="form_control2" readonly="true" name="restamt" value="<%=res.getString("restamt") %>" />
            </fieldset>
            <fieldset>
                <legend> Amount Pay </legend>
                <input type="number" class="form_control2" required="true" name="payamt" />
            </fieldset>
            <div class="text-center my-4">
                <input type="submit" value="Pay" class="form_btn" />
            </div>
        </form>
            
            <% } %>
        </div>
        <div class="col-sm-2"></div>
        </div>
        
    </div>
</div>



<!--Footer Include-->
<jsp:include page="footer.jsp"/>   
<%
  }    
%>
