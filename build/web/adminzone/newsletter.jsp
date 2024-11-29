
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%
    if (session.getAttribute("adminid") == null) {
        response.sendRedirect("../login.jsp");
    } else {
//      session.setMaxInactiveInterval(5);
%>


<jsp:include page="header.jsp"/>
<!--News section start-->
<div class="row">
    <div class="col-sm-12">
        <h2 class="text-center mt-2" style="color:blue;">Newsletter Subscribers</h2>
    </div>
</div>

<div class="row">
    <div class="col-sm-12">
        <table class="table table-striped">
            <tr>
                <td>Sr No.</td>
                <td>Email</td>
                <td>Date</td>
                <td>Delete</td>
            </tr>
            <%
            DbManager dm=new DbManager();
            String query="select * from tbl_newsletter";
            ResultSet res=dm.select(query);
            int i=1;
            while(res.next()){
            %>
            <tr>
                <td><% out.print(i); %></td>
                <td><%=res.getString("email") %></td>
                <td><%=res.getString("posteddate")  %></td>
                <td>
                    <a href="admincontroller.jsp?page=newsletterdelete&id=<%=res.getString("id") %>"><button class="btn btn-outline-danger">Delete</button></a>
                </td>
            </tr>
            <% i++; } %>
        </table>
    </div>
</div>

<!--News section close-->
<jsp:include page="footer.jsp"/>

<%    }
%>  