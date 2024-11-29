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
        <th>Reg ID</th>
        <th>Name</th>
        <th>Aadhar No</th>
        <th>No. of Packets</th>
        <th>Duration</th>
        <th>Rate</th>
        <th>Total Amount</th>
        <th>Advance Amount</th>
        <th>Rest Amount</th>
        <th>Pay</th>
    </tr>
    <%
        DbManager dm = new DbManager();
        String query = "select * from tbl_booking";
        ResultSet res = dm.select(query);
        while (res.next()) {
    %>
    <tr>
        <td><%=res.getString("regid")%></td>
        <td><%=res.getString("name")%></td>
        <td><%=res.getString("aadharno")%></td>
        <td><%=res.getString("noofpacket")%></td>
        <td><%=res.getString("duration")%></td>
        <td><%=res.getString("rate")%></td>
        <td><%=res.getString("totalamt")%></td>
        <td><%=res.getString("advanceamt")%></td>
        <td><%=res.getString("restamt")%></td>
        <td>
            <a href="payment.jsp?ano=<%=res.getString("aadharno") %>" target="_blank">
                <button class="btn btn-outline-success">Pay</button>
            </a>
        </td>
    </tr>
    <% } %>
</table>
<% }%>