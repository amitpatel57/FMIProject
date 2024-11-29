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
        <h2 style="color:blue" class="text-center mt-2"></h2>
        <%
            String ano=request.getParameter("ano");
            DbManager dm=new DbManager();
            String query="select * from tbl_booking where aadharno='"+ano+"'";
            ResultSet res=dm.select(query);
            if(res.next()){
        %>
        <table class="table table-striped" style="width:60%; margin:auto;">
            <tr>
                <td>Registration ID</td>
                <td><%=res.getString("regid") %></td>
            </tr>
            <tr>
                <td>Farmer Name</td>
                <td><%=res.getString("name") %></td>
            </tr>
            <tr>
                <td>Village</td>
                <td><%=res.getString("village") %></td>
            </tr>
            <tr>
                <td>Post</td>
                <td><%=res.getString("post") %></td>
            </tr>
            <tr>
                <td>District</td>
                <td><%=res.getString("district") %></td>
            </tr>
            <tr>
                <td>State</td>
                <td><%=res.getString("state") %></td>
            </tr>
            <tr>
                <td>Pin Code</td>
                <td><%=res.getString("pincode")  %></td>
            </tr>
            <tr>
                <td>Contact No</td>
                <td><%=res.getString("contactno") %></td>
            </tr>
            <tr>
                <td>Aadhar No</td>
                <td><%=res.getString("aadharno") %></td>
            </tr>
            <tr>
                <td>Number of Packet</td>
                <td><%=res.getString("noofpacket") %></td>
            </tr>
            <tr>
                <td>Duration</td>
                <td><%=res.getString("duration") %></td>
            </tr>
            <tr>
                <td>Rate</td>
                <td><%=res.getString("rate") %></td>
            </tr>
            <tr>
                <td>Total Amount</td>
                <td><%=res.getString("totalamt") %></td>
            </tr>
            <tr>
                <td>Advance Amount</td>
                <td><%=res.getString("advanceamt") %></td>
            </tr>
            <tr>
                <td>Rest Amount</td>
                <td><%=res.getString("restamt") %></td>
            </tr>
            <tr>
                <td>Booking Date</td>
                <td><%=res.getString("bookingdate") %></td>
            </tr>
        </table>
        <%
            }
            else{
        %>
        <h2 style="color:red; text-align: center;">No Record found Booking is not done !</h2>
        <% } %>
    </div>
</div>



<!--Footer Include-->
<jsp:include page="footer.jsp"/>   
<%
  }    
%>
