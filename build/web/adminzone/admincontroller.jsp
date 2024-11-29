<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%
    if (request.getParameter("page").equals("changepassword")) {
//    out.print("this is change password ");
        String userid = request.getParameter("userid");
        String op = request.getParameter("op");
        String np = request.getParameter("np");
        String cp = request.getParameter("cp");
//    out.print(userid+"  "+op+"  "+np+"  "+cp);
        DbManager dm = new DbManager();
        String query = "select password from tbl_admin where userid='" + userid + "'";
        ResultSet res = dm.select(query);
        if (res.next()) {
            if (res.getString("password").equals(op)) {
//         out.print("correct password");
                String query2 = "update tbl_admin set password='" + np + "' where userid='" + userid + "'";
                if (dm.insertUpdateDelete(query2) == true) {
                    out.print("<script>alert('Password Changed Successfully !');window.location.href='logout.jsp';</script>");
                } else {
                    out.print("<script>alert('Password not Changed !');window.location.href='changepassword.jsp';</script>");
                }
            } else {
                out.print("<script>alert('Please Enter Correct Old Password !');window.location.href='changepassword.jsp';</script>");
            }

        }

    } 
    else if(request.getParameter("page").equals("news")){
        String newstext=request.getParameter("newstext");
//        out.print(newstext);
        if(!newstext.equals("") && !newstext.equals(null)){
        DbManager dm=new DbManager();
        String query="insert into tbl_news(newstext,posteddate) values('"+newstext+"',curdate())";
        boolean res=dm.insertUpdateDelete(query);
        if(res==true){
            out.print("<script>alert('News Added Successfully !');window.location.href='news.jsp';</script>");
        }
        else{
            out.print("<script>alert('Something Went Wrong Please try leter !');window.location.href='news.jsp';</script>");
        }
        }
        else{
           out.print("<script>alert('Please Enter News First !');window.location.href='news.jsp';</script>"); 
        }
    }
//    Packet Bookin
    else if(request.getParameter("page").equals("book")){
        String regid=request.getParameter("regid");
        String aadharno=request.getParameter("aadharno");
        String name=request.getParameter("name");
        String village=request.getParameter("village");
        String post=request.getParameter("post");
        String district=request.getParameter("district");
        String state=request.getParameter("state");
        String pincode=request.getParameter("pincode");
        String contactno=request.getParameter("contactno");
        int noofpacket=Integer.parseInt(request.getParameter("noofpacket"));
        int duration=Integer.parseInt(request.getParameter("duration"));
        int rate=Integer.parseInt(request.getParameter("rate"));
        int advanceamt=Integer.parseInt(request.getParameter("advanceamt"));
//        out.print(regid+"  "+aadharno+"  "+name+"  "+village+"  "+post+"  "+district+"  "+state+"  "+pincode+"  "+contactno+"  "+noofpacket+"  "+duration+"  "+rate+"  "+advanceamt);
        int totalamt=noofpacket*duration*rate;
        int restamt=totalamt-advanceamt;
        DbManager dm=new DbManager();
        String query="insert into tbl_booking values('"+aadharno+"','"+regid+"','"+name+"','"+village+"','"+post+"','"+district+"','"+state+"','"+pincode+"','"+contactno+"','"+noofpacket+"','"+duration+"','"+rate+"','"+totalamt+"','"+advanceamt+"','"+restamt+"',curdate())";
        boolean res=dm.insertUpdateDelete(query);
        if(res==true){
            out.print("<script>alert('Booking done Successfully !');window.location.href='booking.jsp';</script>");
        }
        else{
            out.print("<script>alert('Something went wrong please try again leter !');window.location.href='booking.jsp';</script>");
        }
    }
//    Payment from payment page
    else if(request.getParameter("page").equals("payment")){
        String ano=request.getParameter("ano");
        int restamt=Integer.parseInt(request.getParameter("restamt"));
        int totalamt=Integer.parseInt(request.getParameter("totalamt"));
        int payamt=Integer.parseInt(request.getParameter("payamt"));
//        out.print(ano+"   "+totalamt+"   "+payamt+"   "+restamt);
        restamt=restamt-payamt;
        if(payamt>restamt){
            out.print("<script>window.alert('Payment amount cant not be greater than Rest Amount');window.location.href='payment.jsp?ano="+ano+"';</script>");
        }
        else{
            DbManager dm=new DbManager();
            String query="update tbl_booking set restamt='"+restamt+"' where aadharno='"+ano+"'";
            boolean res=dm.insertUpdateDelete(query);
            if(res==true){
                out.print("<script>alert('Payment done Successfully !');window.location.href='closing.jsp';</script>");
            }
            else{
                out.print("<script>alert('Payment not Done please try again later !');window.location.href='closing.jsp';</script>");  
            }
        }
        
    }
//    Deleting News from table
    else if(request.getParameter("page").equals("news_delete")){
        int id=Integer.parseInt(request.getParameter("id"));
//        out.print(id);
        DbManager dm=new DbManager();
        String query="delete from tbl_news where id='"+id+"'";
        boolean res=dm.insertUpdateDelete(query);
        if(res==true){
           out.print("<script>alert('News Deleted Successfully !');window.location.href='news.jsp';</script>");
        }
        else{
            out.print("<script>alert('News Can not be Deleted Please Try Again leter !');window.location.href='news.jsp';</script>");
        }
    }

//    Deleting Enquiry details from table
    else if (request.getParameter("page").equals("enquiry")) {
        int id = Integer.parseInt(request.getParameter("id"));
        out.print(id);
        DbManager dm = new DbManager();
        String query = "delete from tbl_enquiry where id='" + id + "'";
        boolean res = dm.insertUpdateDelete(query);
        if (res == true) {
            out.print("<script>alert('Record Deleted Successfully !');window.location.href='enquiry.jsp';</script>");
        } else {
            out.print("<script>alert('Record Not Deleted  !');window.location.href='enquiry.jsp';</script>");

        }
    }
//    Deleting News Letter Entry
    else if(request.getParameter("page").equals("newsletterdelete")){
        String id= request.getParameter("id");
        DbManager dm=new DbManager();
        String query="delete from tbl_newsletter where id='"+id+"'";
        boolean res=dm.insertUpdateDelete(query);
        if(res==true){
            out.print("<script>alert('Record Deleted Successfully !');window.location.href='newsletter.jsp';</script>");            
        }
        else{
            out.print("<script>alert('Record not Deleted !');window.location.href='newsletter.jsp';</script>");
        }
    }
    //    Deleting Call Back Requests Entry
    else if(request.getParameter("page").equals("callbackdelete")){
        String id= request.getParameter("id");
        DbManager dm=new DbManager();
        String query="delete from tbl_callback where id='"+id+"'";
        boolean res=dm.insertUpdateDelete(query);
        if(res==true){
            out.print("<script>alert('Record Deleted Successfully !');window.location.href='callback.jsp';</script>");            
        }
        else{
            out.print("<script>alert('Record not Deleted !');window.location.href='callback.jsp';</script>");
        }
    }
%>
