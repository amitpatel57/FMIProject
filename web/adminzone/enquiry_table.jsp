<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
//      session.setMaxInactiveInterval(5);
%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<jsp:include page="htmlcssjs.jsp"/>
<table class="table table-striped" >
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Gender</th>
        <th>Address</th>
        <th>Contact No</th>
        <th>Email Address</th>
        <th>Enquiry Text</th>
        <th>Posted Date</th>
        <th>Delete</th>
    </tr>
    <%
        DbManager dm = new DbManager();
        String query = "select * from tbl_enquiry";
        ResultSet res = dm.select(query);
        int i = 1;
        while (res.next()) {
    %>
    <tr>
        <td><% out.print(i);%></td>
        <td><%=res.getString("name")%></td>
        <td><%=res.getString("gender")%></td>
        <td><%=res.getString("address")%></td>
        <td><%=res.getString("contact")%></td>
        <td><%=res.getString("email")%></td>
        <td><%=res.getString("enquirytext")%></td>
        <td><%=res.getString("enquirydate")%></td>
        <td><a href="admincontroller.jsp?page=enquiry&id=<%=res.getString("id")%>"  target="_blank">
                <button class="btn btn-outline-danger">Delete</button> 
            </a></td>
    </tr>
    <%
            i++;
        }
    %>

</table>
    <%    }
%>  

