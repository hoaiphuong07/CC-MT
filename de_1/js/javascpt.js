// JavaScript Document

// cau 1
$(document).ready(function() {
     $('div h1').css("color", "red");
});


// cau 2

$(document).ready(function(){
    $("h1").click(function(){
       $('#kh').attr("href", "http://www.hutech.edu.vn/");
        $("#kh").text("Trường ĐH Công Nghệ TP.HCM")
    });
});


// cau 3
function text(){
    var us= document.abc.user.value;  
    var pa= document.abc.pass.value; 
    if(us<1)
    {
         document.getElementById("1").innerHTML= "User không được để trống";       
    }
    else
    {    
        document.getElementById("1").innerHTML=null;
    } 
    if(pa.length>=6)
    {
        document.getElementById("2").innerText= "";
    }
    else
    {
        document.getElementById("2").innerText= "Mật khẩu không dưới 6 kí tự";
    }
    var email = document.getElementById('email'); 
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/; 
    if (!filter.test(email.value)) { 
             document.getElementById("3").innerHTML=('Hay nhap dia chi email hop le.\nExample@gmail.com');
             return false; 
    }
    else{ 
             document.getElementById("3").innerHTML=(''); 
    } 
}


// cau 4

function changeContent()
{
    var table=document.getElementById("myTable");
    var row=table.insertRow(3);
    var cell1=row.insertCell(0);
    var cell2=row.insertCell(1);
    cell1.innerHTML="1";
    cell2.innerHTML="2";
}