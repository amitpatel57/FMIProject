//Function for Setting error 
function seterror(id,error){
    var span=document.getElementById(id);
    span.innerHTML=error;
}
//function for setting error in radio btn
function setradioerror(id1,id,error){
    let span1=document.getElementById(id1);
    span1.classList.add("d-none");
    var span=document.getElementById(id);
    span.innerHTML=error;
}
//Function for Clearing Error
function clearerror(){
    var element=document.querySelectorAll(".error");
    for(let item of element){
        item.innerHTML="";
    }
    var border=document.querySelectorAll(".border_red");
    for(let item of border){
        item.classList.remove("border_red");
    }
}
// Contact form validation on submit
function formvalidation(){
    var returnval=true ;
//    alert("Hello");
clearerror2();
    var name=document.forms["contactform"]["name"];
    var gender=document.forms["contactform"]["gender"];
    var contact=document.forms["contactform"]["contact"];
    var email=document.forms["contactform"]["email"];
    var enquirytext=document.forms["contactform"]["enquirytext"];
    var address=document.forms["contactform"]["address"];
    if(name.value==""){
        setError("name1","name"," * Please Enter Your User Name !");
        returnval=false;
    }
    else if(name.value.length<4){
        setError("name1","name"," * Please Enter a valid name !");
        returnval=false;
    }
    if(contact.value==""){
        setError("contact1","contact"," * Pleas Enter Your Contact No !");
        returnval=false;
    }
    else if(contact.value.length!=10){
        setError("contact1","contact"," * Please Enter a Valid Contact no !");
        returnval=false;
    }
    if(gender.value==""){
        setradioerror("gender1","gender"," * Please Select Your gender !");
        returnval=false;
    }
    if(email==""){
        setError("email1","email"," * Please Enter your Email !");
        returnval=false;
    }
    else if(!email.value.includes("@") && !email.value.includes(".")){
        setError("email1","email"," * Please Enter a valid Email !");
        returnval=false;
    }
    if(enquirytext.value==""){
        setError("enquirytext1","enquirytext"," * Please Enter your Subject !");
        returnval=false;
    }
    if(address.value==""){
        setError("address1","address"," * Please Enter Your Address !");
        returnval=false;
    }
    else if(address.value.length<4){
        setError("address1","address"," * Please Enter a valid Address !");
        returnval=false;
    }
    return returnval;
    
}

function clearinputerror(field,type){
   let span=document.getElementById(field);
span.classList.remove("d-none");
document.getElementById(type).innerHTML="";
}

function from_check(input){
    if(input["name"]=="name"){
        if(input.value==""){
            setError("name1","name"," * Please Enter Your Name !");
        }
        else if(input.value.length<=2){
            setError("name1","name"," * Name is too short !");
        }
        else if(input.value.length>2){
        clearinputerror("name1",input["name"]);
      }
    }
    else if(input["name"]=="contact"){
        if(input.value==""){
            setError("contact1","contact"," * Please Enter Your Contact no !");
        }
        else if(input.value.length<10 || input.value.length>10){
            setError("contact1","contact"," * Contact no should be 10 digits !");
        }
        else{
        clearinputerror("contact1",input["name"]);
      }
    }
    else if(input["name"]=="email"){
        if(input.value==""){
            setError("email1","email","Please Enter your Email !");
        }
        else if(!input.value.includes("@") || !input.value.includes(".com")){
            setError("email1","email"," * Please Enter a valid Email !");
        }
        else{
           clearinputerror("email1",input["name"]);
        }
    }
    else if(input["name"]=="enquirytext"){
        if(input.value==""){
            setError("enquirytext1","enquirytext"," * Subject can not be blank !");
        }
        else{
           clearinputerror("enquirytext1",input["name"]); 
        }
    }
    else if(input["name"]=="address"){
        if(input.value==""){
            seterror("address1","address"," * Address can not be blank !");
        }
        else{
           clearinputerror("address1",input["name"]); 
        }
    }

//    console.log(input["name"]);
}
function clearRadioError(id1,radio_btn){
    document.getElementById(id1).classList.remove("d-none");
    document.getElementById(radio_btn).innerHTML="";
}
function radio_check(radio_btn){
//   console.log(radio_btn);
if(radio_btn.checked){
    clearRadioError("gender1","gender");
}
else{
    setradioerror("gender1","gender"," * Please Select Your gender !");
}
}

    function check_number(e){
//    console.log("hello");
    let pressed_key = e.which || e.keycode;
//     alert(pressed_key);
    if (pressed_key >= 48 && pressed_key <= 57) {
      return true;
    } else {
      return false;
    }
  }
  
// ---------------------------------- Registration form validation section start --------------------------------------------

//Function for Setting error 
function setError(name,id,error){
    var span=document.getElementById(id);
    span.innerHTML=error;
    var name=document.getElementById(name);
    name.classList.add("d-none");
//    span.classList.add("text-danger");
//    var inp=document.forms[form][id];
//    inp.classList.add("border_red");
//alert("Seterror function");

}

function registervalidation(){
    let returnval=true;
    clearerror2();
    let name=document.forms["registerform"]["name"];
    let fname=document.forms["registerform"]["fname"];
    let mname=document.forms["registerform"]["mname"];
    let gender=document.forms["registerform"]["gender"];
    let village=document.forms["registerform"]["village"];
    let post=document.forms["registerform"]["post"];
    let district=document.forms["registerform"]["district"];
    let state=document.forms["registerform"]["state"];
    let pincode=document.forms["registerform"]["pincode"];
    let contact=document.forms["registerform"]["contact"];
    let aadharno=document.forms["registerform"]["aadharno"];
    
    if(name.value==""){
        setError("name1","name"," * Please Enter Your Name !");
        returnval=false;
    }
    else if(name.value.length<=2){
        setError("name1","name"," * Please Enter valid Name !");
        returnval=false;
    }
    if(fname.value==""){
        setError("fname1","fname"," * Please Enter Your Father's Name !");
        returnval=false;
    }
    else if(fname.value.length<=2){
        setError("fname1","fname"," * Please Enter valid Name !");
        returnval=false;
    }
    if(mname.value==""){
        setError("mname1","mname"," * Please Enter Your Mother's Name !");
        returnval=false;
    }
    else if(mname.value.length<=2){
        setError("mname","mname"," * Please Enter valid Name !");
        returnval=false;
    }
    if(gender.value==""){
        setradioerror("gender1","gender"," * Please Select Your gender !");
        returnval=false;
    }
    if(village.value==""){
        setError("village1","village"," * Please Enter your Village Name !");
        returnval=false;
    }
    else if(village.value.length<3){
        setError("village1","village"," * Please Enter a valid Village Name !");
        returnval=false;
    }
    if(post.value==""){
        setError("post1","post"," * Please Enter Your Postal Address !");
        returnval=false;
    }
    if(post.value.length<4){
        setError("post1","post"," * Please Enter a valid postal Address !");
        returnval=false;
    }
    if(district.value==""){
        setError("district1","district"," * Please Enter your District !");
        returnval=false;
    }
    else if(district.value.length<4){
        setError("district1","district"," * Please Enter a Valid District !");
        returnval=false;
    }
    if(state.value==""){
        setError("state1","state"," * Please Ente Your State Name !");
        returnval=false;
    }
    else if(state.value.length<2){
        setError("state1","state"," * Please Enter a Valid State Name !");
        returnval=false;
    }
    if(pincode.value==""){
        setError("pincode1","pincode"," * Please Enter Your Pin Code !");
        returnval=false;
    }
    else if(pincode.value.length<6){
        setError("pincode1","pincode"," * Please Enter a valid Pin Code !");
        returnval=false;
    }
    if(contact.value==""){
        setError("contact1","contact"," * Please Enter Your Contact no !");
        returnval=false;
    }
    else if(contact.value.length<10){
        setError("contact1","contact"," * Please Enter a valid Contact no !");
        returnval=false;
    }
    if(aadharno.value==""){
        setError("aadharno1","aadharno"," * Please Enter Your Aadhar no !");
        returnval=false;
    }
    else if(aadharno.value.length<10){
        setError("aadharno1","aadharno"," * Please Enter a valid Aadhar no !");
        returnval=false;
    }
    
    return returnval;
}

//On typing checking error

function reg_form_check(input){
    if(input["name"]=="name"){
       if(input.value==""){
            setError("name1","name"," * Please Enter Your Name !");
        }
        else if(input.value.length<=2){
            setError("name1","name"," * Name is too short !");
        }
        else{
        clearinputerror("name1",input["name"]);
      } 
    }
    else if(input["name"]=="fname"){
       if(input.value==""){
            setError("fname1","fname"," * Please Enter Your Father's Name !");
        }
        else if(input.value.length<=2){
            setError("fname1","fname"," * Please Enter a valid Name !");
        }
        else{
        clearinputerror("fname1",input["name"]);
      } 
    }
    else if(input["name"]=="mname"){
       if(input.value==""){
            setError("mname1","mname"," * Please Enter Your Mother's Name !");
        }
        else if(input.value.length<=2){
            setError("mname1","mname"," * Please Enter a valid Name !");
        }
        else{
        clearinputerror("mname1",input["name"]);
      } 
    }
    else if(input["name"]=="village"){
       if(input.value==""){
            setError("village1","village"," * Please Enter Your village Name !");
        }
        else if(input.value.length<=2){
            setError("village1","village"," * Please Enter a valid village Name !");
        }
        else{
        clearinputerror("village1",input["name"]);
      } 
    }
    else if(input["name"]=="post"){
       if(input.value==""){
            setError("post1","post"," * Please Enter Your  Postal Address !");
        }
        else if(input.value.length<=2){
            setError("post1","post"," * Please Enter a valid Postal Address !");
        }
        else{
        clearinputerror("post1",input["name"]);
      } 
    }
    else if(input["name"]=="district"){
       if(input.value==""){
            setError("district1","district"," * Please Enter Your District Name !");
        }
        else if(input.value.length<=2){
            setError("district1","district"," * Please Enter a valid District Name !");
        }
        else{
        clearinputerror("district1",input["name"]);
      } 
    }
    else if(input["name"]=="state"){
       if(input.value==""){
            setError("state1","state"," * Please Enter Your state Name !");
        }
        else if(input.value.length<2){
            setError("state1","state"," * Please Enter a valid state Name !");
        }
        else{
        clearinputerror("state1",input["name"]);
      } 
    }
    else if(input["name"]=="pincode"){
       if(input.value==""){
            setError("pincode1","pincode"," * Please Enter Your Pin Code !");
        }
        else if(input.value.length<6){
            setError("pincode1","pincode"," * Please Enter a valid Pin Code !");
        }
        else{
        clearinputerror("pincode1",input["name"]);
      } 
    }
    else if(input["name"]=="contact"){
       if(input.value==""){
            setError("contact1","contact"," * Please Enter Your Contact No !");
        }
        else if(input.value.length<10){
            setError("contact1","contact"," * Please Enter a valid Contact No !");
        }
        else{
        clearinputerror("contact1",input["name"]);
      } 
    }
    else if(input["name"]=="aadharno"){
       if(input.value==""){
            setError("aadharno1","aadharno"," * Please Enter Your Aadhar No !");
        }
        else if(input.value.length<12){
            setError("aadharno1","aadharno"," * Please Enter a valid Aadhar No !");
        }
        else{
        clearinputerror("aadharno1",input["name"]);
      } 
    }
}

//Login form Validation
function clearerror2(){
    var element=document.querySelectorAll(".error");
    for(let item of element){
        item.innerHTML="";
    }
    var cancelerror=document.querySelectorAll(".cancelerror");
    for(let item of cancelerror){
        item.classList.remove("d-none");
    }
}

function loginvalidation(){
    let returnval=true;
    clearerror2();
    let userid=document.forms["login_form"]["userid"];
    let password=document.forms["login_form"]["password"];
    if(userid.value==""){
        setError("userid1","userid"," * Please Enter Your User Id !");
        returnval=false;
    }
    if(password.value==""){
        setError("password1","password"," * Please Enter Your Password !");
        returnval=false;
    }
    return returnval;
}

function login_form_check(input){
//    alert(input);
    if(input["name"]=="userid"){
        if(input.value==""){
            setError("userid1","userid"," * Please Enter your userid !");
        }
        else if(!input.value.includes("@") || !input.value.includes(".com")){
            setError("userid1","userid"," * Please Enter a valid userid !");
        }
        else{
           clearinputerror("userid1",input["name"]);
        }
    }
    else if(input["name"]=="password"){
        if(input.value==""){
            setError("password1","password"," * Please Enter Your Password !");
        }
        else if(input.value.length<4){
            setErrror("password1","password"," * Please Enter a valid Password !");
        }
        else{
            clearinputerror("password1",input["name"]);
        }
    }
}

// News lette form  validation
function newslettercheck(){
    let returnval=true;
    clearerror2();
    var email=document.forms["newsletter"]["email"];
    if(email.value==""){
        setError("email1","email"," * Please Enter your Email !");
        returnval=false;
    }
    else if(!email.value.includes("@") || !email.value.includes(".com")){
            setError("email1","email"," * Please Enter a valid Email !");
            returnval=false;
        }
    return returnval;
}
function news_form_check(input){
    if(input.value==""){
       setError("email1","email"," * Please Enter your Email !");
    }
    else if(!input.value.includes("@") || !input.value.includes(".com")){
       setError("email1","email"," * Please Enter a valid Email !");
    }
    else{
        clearinputerror("email1",input["name"]);
    }
        
}
//CallBack validation
function call_back(){
    let returnval=true;
    clearerror2();
    let name=document.forms["callback"]["name"];
    let contact=document.forms["callback"]["contact"];
    if(name.value==""){
        setError("name1","name"," * Please Enter Your Name !");
        returnval=false;
    }
    else if(name.value.length<3){
        setError("name1","name"," * Please Enter a valid Name !");
        returnval=false;
    }
    if(contact.value==""){
        setError("contact1","contact"," * Please Enter Your Contact No !");
        returnval=false;
    }
    else if(contact.value.length<10){
        setError("contact1","contact"," * Please Enter a valid contct No !");
        returnval=false;
    }
    return returnval;
}

function callbackform_check(input){
    if(input["name"]=="name"){
        if(input.value==""){
        setError("name1","name"," * Please Enter Your Name !");            
        }
        else if(input.value.length<3){
        setError("name1","name"," * Please Enter a valid Name !");           
        }
        else{
        clearinputerror("name1",input["name"]);
        }
    }
    else if(input["name"]=="contact"){
        if(input.value==""){
            setError("contact1","contact"," * Please Enter Your Contact No !");
        }
        else if(input.value.length<10){
            setError("contact1","contact"," * Please Enter a valid contct No !");
        }
        else{
        clearinputerror("contact1",input["name"]);           
        }
    }
}