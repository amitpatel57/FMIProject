<%@page import="Connect.SmsSender"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%> 
<%
//    Contact us Form section
    if (request.getParameter("page").equals("contactus")) {
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String contactno = request.getParameter("contact");
        String email = request.getParameter("email");
        String enquirytext = request.getParameter("enquirytext");
        /*
         out.print(name);
         out.print(gender);
         out.print(address);
         out.print(contactno);
         out.print(email);
         out.print(enquirytext);
         */
        DbManager dm = new DbManager();
        String query = "insert into tbl_enquiry(name,gender,address,contact,email,enquirytext,enquirydate) values('" + name + "','" + gender + "','" + address + "','" + contactno + "','" + email + "','" + enquirytext + "',curdate())";
        boolean res = dm.insertUpdateDelete(query);
        if (res == true) {
            SmsSender ss=new SmsSender();
            ss.sendSms(contactno);
            out.print("<script>alert('We will Respond you shortly !');window.location.href='contactus.jsp';</script>");
        } else {
            out.print("<script>alert('Currently we are unable to Respond please try again later !');window.location.href='contactus.jsp';</script>");
        }
    } //    Registration form section
    else if (request.getParameter("page").equals("register")) {
        String name = request.getParameter("name");
        String fname = request.getParameter("fname");
        String mname = request.getParameter("mname");
        String gender = request.getParameter("gender");
        String village = request.getParameter("village");
        String post = request.getParameter("post");
        String district = request.getParameter("district");
        String state = request.getParameter("state");
        int pincode = Integer.parseInt(request.getParameter("pincode"));
        String contact = request.getParameter("contact");
        String aadharno = request.getParameter("aadharno");
        String panno = request.getParameter("panno");
//        String packet = request.getParameter("packet");
        String regid = "BCS-" + aadharno;
        /*
         out.print(name+"  ");
         out.print(fname+"  ");
         out.print(mname+"  ");
         out.print(gender+"  ");
         out.print(village+"  ");
         out.print(post+"  ");
         out.print(district+"  ");
         out.print(state+"  ");
         out.print(pincode+"  ");
         out.print(contact+"  ");
         out.print(aadharno+"  ");
         out.print(panno+"  ");
         out.print(packet+"  ");
         */
        DbManager dm = new DbManager();
        String query = "insert into tbl_farmerinfo values('" + regid + "','" + name + "','" + fname + "','" + mname + "','" + gender + "','" + village + "','" + post + "','" + district + "','" + state + "','" + pincode + "','" + contact + "','" + aadharno + "','" + panno + "',curdate())";
        boolean res = dm.insertUpdateDelete(query);
        if (res == true) {
            out.print("<script>alert('Registration done Successfully !');window.location.href='register.jsp';</script>");
        } else {
            out.print("<script>alert('We are Un-Available Currently now !');window.location.href='register.jsp';</script>");
        }
    } //    Admin login form
    else if (request.getParameter("page").equals("adminlogin")) {
        String userid = request.getParameter("userid");
        String password = request.getParameter("password");
//        out.print(userid);
//        out.print(password);
        DbManager dm = new DbManager();
        String query = "select * from tbl_admin where userid='" + userid + "' and password='" + password + "' ";
        ResultSet res = dm.select(query);
        if (res.next()) {
            session.setAttribute("adminid", userid);
            response.sendRedirect("adminzone/adminhome.jsp");
        } else {
            out.print("<script>alert('Please Enter valid email & password !');window.location.href='login.jsp';</script>");
        }
    } 
//    Newsletter form
    else if (request.getParameter("page").equals("newsletter")) {
        String email = request.getParameter("email");
//        out.print(email);
        if (!email.equals("") && !email.equals(null)) {
            DbManager dm = new DbManager();
            String query = "insert into tbl_newsletter(email,posteddate) values('" + email + "',curdate())";
            boolean res = dm.insertUpdateDelete(query);
            if (res == true) {
                out.print("<script>alert('Thanks for Subscribe us  !');window.location.href='index.jsp';</script>");
            } else {
                out.print("<script>alert('Sorry We are Unable this time !');window.location.href='index.jsp';</script>");
            }
        } else {
            out.print("<script>alert('Please Enter Your email first !');window.location.href='index.jsp';</script>");
        }
    }
//    Call Back form
    else if(request.getParameter("page").equals("callback")){
        String name=request.getParameter("name");
        String contact=request.getParameter("contact");
        DbManager dm=new DbManager();
        String query="insert into tbl_callback(name,contact,posteddate) values('"+name+"','"+contact+"',curdate())";
        boolean res=dm.insertUpdateDelete(query);
        if(res==true){
                out.print("<script>alert('We will Contact you soon  !');window.location.href='index.jsp';</script>");
        }
        else{
                out.print("<script>alert('We are Un abailable this time please try again later !');window.location.href='index.jsp';</script>");
        }
    }
%>