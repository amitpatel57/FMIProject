<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
//      session.setMaxInactiveInterval(5);
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />
<!--Navbar close-->
<h2 style="color:blue; text-align: center; margin-top:10px;">Booking Form</h2>
<div class="row">
    <div class="col-sm-2"></div>
    <div class="col-sm-8">
        <%
            String ano = request.getParameter("ano");
        //out.print(ano);
            DbManager dm = new DbManager();
            String query = "select * from tbl_farmerinfo where aadharno='" + ano + "'";
            ResultSet res = dm.select(query);
            if (res.next()) {
        %>

        <form class="form-group mb-5" action="admincontroller.jsp">
            <input type="hidden" name="page" value="book"/>
            <fieldset class="mt-2">
                <legend>Registration Id</legend>
                <input type="text" name="regid" value="<%=res.getString("regid")%>" readonly="true" class="form_control2"/>
            </fieldset>
            <fieldset class="mt-2">
                <legend>Aadhar No</legend>
                <input type="text" name="aadharno" value="<%=res.getString("aadharno")%>" readonly="true" class="form_control2"/>
            </fieldset>
            <fieldset class="mt-2">
                <legend>Farmer Name</legend>
                <input type="text" class="form_control2" name="name" readonly="true" value="<%=res.getString("name")%>"/>
            </fieldset>
            <fieldset class="mt-2">
                <legend>Village</legend>
                <input type="text" name="village" class="form_control2" readonly="true" value="<%=res.getString("village")%>"/>
            </fieldset>
            <fieldset class="mt-2">
                <legend>Post</legend>
                <input type="text" name="post" class="form_control2" readonly="true" value="<%=res.getString("post")%>"/>
            </fieldset>
            <fieldset class="mt-2">
                <legend>District</legend>
                <input type="text" name="district" class="form_control2" readonly="true" value="<%=res.getString("district")%>"/>
            </fieldset>
            <fieldset class="mt-2">
                <legend>State</legend>
                <input type="text" name="state" class="form_control2" readonly="true" value="<%=res.getString("state")%>"/>
            </fieldset>
            <fieldset class="mt-2">
                <legend>Pin Code</legend>
                <input type="text" name="pincode" class="form_control2" readonly="true" value="<%=res.getString("pincode")%>"/>
            </fieldset>
            <fieldset class="mt-2">
                <legend>Contact No </legend>
                <input type="text" name="contactno" class="form_control2" readonly="true" value="<%=res.getString("contact")%>"/>
            </fieldset>
            <fieldset class="mt-2">
                <legend>Enter No of Packets </legend>
                <input type="number" required="true" name="noofpacket" class="form_control2" />
            </fieldset>
            <fieldset class="mt-2">
                <legend>Enter  Duration (in Months) </legend>
                <input type="number" required="true" name="duration" class="form_control2" />
            </fieldset>
            <fieldset class="mt-2">
                <legend>Enter Rate (P\M) </legend>
                <input type="number" required="true" name="rate" class="form_control2" />
            </fieldset>
            <fieldset class="mt-2">
                <legend>Enter Advance Amount </legend>
                <input type="number" required="true" name="advanceamt" class="form_control2" />
            </fieldset>
            <div class="text-center mt-3">
                <input type="submit"  value="Submit" class="form_btn"/>
            </div>
        </form>
        <% } %>
    </div>
    <div class="col-sm-2"></div>
</div>



<!--Footer Include-->
<jsp:include page="footer.jsp"/>   
<%
    }
%>
