<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
//      session.setMaxInactiveInterval(5);
%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<jsp:include page="htmlcssjs.jsp"/>
<table class="table table-striped">
    <tr>
        <th>Reg. ID</th>
        <th>Name</th>
        <th>Village</th>
        <th>Post</th>
        <th>District</th>
        <th>State</th>
        <th>Pin Code</th>
        <th>Contact No.</th>
        <th>Aadhar No</th>
        <th>Booking</th>
        <th>View</th>
    </tr>
    <%
       DbManager dm=new DbManager();
       String query="select * from tbl_farmerinfo order by regdate ASC";
       ResultSet res=dm.select(query);
       while(res.next()){
    %>
    <tr>
        <td><%=res.getString("regid") %></td>
        <td><%=res.getString("name") %> </td>
        <td><%=res.getString("village")  %></td>
        <td><%=res.getString("post") %></td>
        <td><%=res.getString("district") %></td>
        <td><%=res.getString("state")  %></td>
        <td><%=res.getString("pincode")  %></td>
        <td><%=res.getString("contact") %></td>
        <td><%=res.getString("aadharno")  %></td>
        <td>
            <a href="validate.jsp?ano=<%=res.getString("aadharno")  %>" target="_blank">
                <button class="btn btn-outline-success"> Book</button>
            </a>
        </td>
        <td>
            <a href="view.jsp?ano=<%=res.getString("aadharno")  %>" target="_blank">
                <button class="btn btn-outline-primary">View</button>
            </a>
        </td>
    </tr>
    <%
       }
    %>
</table>
<%    }
%>  
