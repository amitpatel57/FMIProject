<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
//      session.setMaxInactiveInterval(5);
%>

<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<jsp:include page="htmlcssjs.jsp"/>
<h2 class="text-center text-primary mt-5">News Management</h2>
<table class="table table-striped">
    <tr>
        <th>SR NO</th>
        <th>News Text</th>
        <th>Posted Date</th>
        <th>Delete</th>
    </tr>
    <%
    DbManager dm=new DbManager();
    String query="select * from tbl_news order by id ASC";
    ResultSet res=dm.select(query);
    int i=1;
    while(res.next()){
    %>
    <tr>
        <td><% out.print(i); %></td>
        <td><%=res.getString("newstext")  %></td>
        <td><%=res.getString("posteddate")  %></td>
        <td><a href="admincontroller.jsp?page=news_delete&id=<%=res.getInt("id") %>" target="_blank"><button class="btn btn-outline-danger">Delete</button></a></td>
    </tr>
    <% 
    i++;
    }
    %>
</table>

<%    }
%>  