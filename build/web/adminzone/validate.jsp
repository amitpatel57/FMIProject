<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%
  String ano=request.getParameter("ano");
//  out.print(ano);
  DbManager dm=new DbManager();
  String query="select * from tbl_booking where aadharno='"+ano+"'";
  ResultSet res=dm.select(query);
  if(res.next()){
      out.print("<script>alert('Booking is Already done !');window.location.href='booking.jsp';</script>");
  }
  else{
//      session.setAttribute("ano",ano);
//      response.sendRedirect("book.jsp");
      out.print("<script>window.location.href='book.jsp?ano="+ano+"';</script>");
  }
%>