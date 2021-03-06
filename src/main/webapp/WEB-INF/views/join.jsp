<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<style>

html, body {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
}


    .modal_wrap{
        /* display: none; */
        width: 585px;
        height: 1280px;
        position: relative;
        left: 50%;
/*      top:10%;
        margin: -254px 0 0 -236px; */
        background:#FFFFFF;
/*      z-index: 2; */
        border-top-left-radius: 50px;
        border-bottom-left-radius: 50px;
    }
    .black_bg{
        /* display: none; */
        position: fixed;
        content: "";
        width: 100%;
        height: 100vh;
        background-color:rgba(218, 215, 216, 0.5);
        top:0;
        left: 0;
        z-index: 1000;
        
          /* 숨기기 */
        z-index: -1;
        opacity: 0;
    }
.modal_main{
  position: absolute;
    top: 53%;
    left: 52%;
    width: 100%;
    height: 100%;
  transform: translate(-50%, -50%);
  
   /* 초기에 약간 아래에 배치 */
  transform: translate(-50%, -40%);
}

.show1 {
  opacity: 1;
  z-index: 1000;
  transition: all .5s;
}

.show1 .modal_main {
  transform: translate(-50%, -50%);
  transition: all .5s;
}
  
    .record_bg{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 100%;
        background-color:rgba(218, 215, 216, 0.5);
        top:0;
        left: 0;
        z-index: 1;
    }  
    
    .record_wrap{
        display: none;
        width: 90%;
        height: 93%;
        position: absolute;
        top:13%;
        left: 25%;
        margin: -254px 0 0 -236px;
        background:#FFFFFF;
        z-index: 2;
        border-radius:5em;
        overflow: auto;
    }
    .record_bg{
        display: none;
        position: absolute;
        content: "";
        width: 100%;
        height: 108%;
        background-color:rgba(218, 215, 216, 0.5);
        top:0;
        left: 0;
        z-index: 1;
    }
    
#modal_btn{
position:relative;
top:20%;
}
    
.modal_top{
width:100%;
height:30%;
text-align: center;
}

.modal_top_left{
    font-size: 50px;
    width: 40%;
    height: 30%;
    float: left;
    top: 56px;
    margin-bottom: 40px;
    text-align: right;
}

.modal_top_right{
font-size: 40px;
width: 55%;
height: 44%;
float: right;
text-align: left;
top: 6%;
margin-bottom: 20px;
}

.modal_mid{
width:100%;
height:60%;
font-size:50px;
text-align: center;
/* margin-top: -60px; */
}

.modal_mid_mid{
height:20%;
/* padding: 0px 30px 0px 0px; */
}

#modal_mid_b{
text-align: center;
font-size:40px;
}

.modal_mid_left{
width:40%;
height:100%;
float:left;
text-align: right;
}

.modal_mid_right{
width:55%;
height:100%;
float:right;
text-align: left;
}

#moicon{
width: 130px;
height: 130px;
}

.modal_bot{
width:100%;
height:10%;
font-size:40px;
text-align: center;
}
    

.main_top {
width:100%;
height:8%;
background-color:#FFFFFF;
}

.top_left{
float:left;
width:80%;
height:100%;
}

.top_right{
position:relative;
float:right;
width:20%;
height:100%;
}

#join.button{
position:relative;
top:30%;
/* opacity:0.5; */
/* background: white; */
    border: none;
   /*  color:#d0d0d0; */
   font-size: 100px;
       margin-top: 50px;
}

#join{
      border-radius:30px;
      font-weight:bolder;
      font-family: 'Noto Sans KR', sans-serif;
   }
   
#button{
      border-radius:30px;
      font-weight:bolder;
     background-color:#FFFFFF;
      font-family: 'Noto Sans KR', sans-serif;
     /*  opacity:0.5; */
          border: none;
         /*  color:#d0d0d0; */
         width:200px;
         height:130px;
   }
   
#user_name{
    position:relative;
      border-radius:20px 20px 20px 20px;
/*       background-color:#f5f5f5; */
      font-weight:bolder;
      font-family: 'Noto Sans KR', sans-serif;
      width:1000px;
      height:130px;
      font-size:60px;
      text-align:center;
   /*    opacity:0.5; */
          border: none;
}

#user_birthdate{
    position:relative;
      border-radius:20px 20px 20px 20px;
/*       background-color:#f5f5f5; */
      font-weight:bolder;
      font-family: 'Noto Sans KR', sans-serif;
      width:1000px;
      height:130px;
      font-size:60px;
      text-align:center;
          border: none;
       /*    opacity:0.5; */
}

#user_joindate{
    position:relative;
      border-radius:20px 20px 20px 20px;
/*       background-color:#f5f5f5; */
      font-weight:bolder;
      font-family: 'Noto Sans KR', sans-serif;
      width:1000px;
      height:130px;
      font-size:60px;
      text-align:center;
          border: none;
    /*       opacity:0.5; */
}

/* #user_gym{
    position:relative;
      border-radius:20px 20px 20px 20px;
      background-color:white;
      font-weight:bolder;
      font-family: 'Noto Sans KR', sans-serif;
      width:1000px;
      height:130px;
      font-size:60px;
      type:text;
      border: none;
} */

div{
position:relative;
}


a{
   position:relative;
   border-radius:30px;
   font-weight:bolder;
   font-size:50px;
   font-family: 'Noto Sans KR', sans-serif;
}

input::-webkit-input-placeholder {
/*   color: white !important; */
  text-align:center;
  
}

select{
/*   color: white !important; */
  text-align:center;
  width:50px;
  height:50px;
}

#name{
position:relative;
padding: 20px 20px 20px 20px;
  text-align:center;
  width:40%;
}

#birth{
position:relative;
padding: 20px 20px 20px 20px;
  text-align:center;
}

#date{
padding: 20px 20px 20px 20px;
  text-align:center;
}

#gym{
padding: 20px 20px 20px 20px;
 text-align:center;
}

#videos{
padding: 20px 20px 20px 20px;
 text-align:center;
 font-family: 'Noto Sans KR', sans-serif;
}


.middle{
/* border: 5px solid #1E90FF;
background-color:#FFFFFF; */
width: 90%;
left: 3%;
text-align: center;
}

hr{
position:relative;
top:5%
}

#training{
position:relative;
top:55%;
filter : opacity(.5) drop-shadow(0 0 0 gray);
}

#videioTrainging{
position:relative;
top:25%;
filter : opacity(.5) drop-shadow(0 0 0 gray);
}

   #b{
   position:relative;
   width:150px;
   height:50px;
   font-size:30px;
   }

h1{
position:relative;
left:-10%;
top:-5%;
}

#NSK_font{
font-family: 'Noto Sans KR', sans-serif;
}



.bottom{
width:100%;
height:500px;
}

.joinTable{
width: 100%;
height: 1000px;
margin-top: 130px;
}

input::placeholder {
  color: #d0d0d0;
 /*  opacity:0.5; */
}

input[type="checkbox"] {
/*         -webkit-appearance: none; */
        position: relative;
/*         width: 16px;
        height: 16px; */
        cursor: pointer;
        outline: none !important;
/*         border: 1px solid #eeeeee;  */
        border-radius: 2px;
        background: white;
}

.hide{
    display: none;
}
.show {
  /* display: none; */
}
/* 셀렉트 영역 스타일 */
.select{
   background-color: white;
    position: relative;
    padding: 5px 10px;
    width: 950px;
    height: 100px;
    margin-left: 95px;
    border-radius: 20px 0px 0px 20px;
    /* border:1px solid salmon; */
    background-repeat: no-repeat;
    background-position: 96% center;
    cursor: pointer;
    padding-left: 35px;
    padding-top: 15px;
    font-weight:bolder;
    font-family: 'Noto Sans KR', sans-serif;
    font-size:60px;
    text-align:center;
    border: none;
    right:50px;
    /* color: #d0d0d0; */
}

/* 옵션 영역 스타일 */
.select ul{
    position: absolute;
    top: 30px;
    left: 0;
    width: 100%;
    border:1px solid salmon;
    border-radius: 5px;
    background-color: white;
    cursor: pointer;
    z-index: 2;
    list-style:none;
    padding-left:0px;
}
.select ul li{   /* 셀렉트목록 */
    padding: 10px;
    height: 100px;
}
.select ul li:first-child{
    background: white;
}
.select ul li:nth-child(2){
    background: white;
}
.select ul li:nth-child(3){
    background: white;
}
.select ul li:nth-child(4){
    background: white;
}
.select ul li:nth-child(5){
    background: white;
}
.select ul li:hover{
    background-color: white;
}
/* 아이콘 스타일 */
i{
    vertical-align: bottom;
    margin-right: 5px;
}
i img{
    width: 60px;
}

#choice{
padding: 30px;
height: 100px;
position: absolute;
font-size: 60px;
top: 830px;
left: 450px;
font-weight: bolder;
font-family: 'Noto Sans KR', sans-serif;
color: #d0d0d0;
}
</style>

<script>
window.onload = function() {
    
      function show1 () {
           document.querySelector(".black_bg").className = "black_bg show1";
         }
      function close1 () {
           document.querySelector(".black_bg").className = "black_bg";
         }
      
       document.querySelector("#modal_btn").addEventListener("click", show1);
       document.querySelector(".black_bg").addEventListener("click", close1);
           
      }
      
function gomember(){
   location.href =  "/web/admin_member.do";
}

function gojoin(){
   location.href =  "/web/join.do";
}

function gorecord(){
   location.href =  "/web/admin.do";
}
</script>

</head>
<body bgcolor="EFEFEF">

<div class="black_bg">
   <div class="modal_wrap">
   <div class="modal_main">
      <div class = "modal_top">
         <div id="NSK_font" style = "font-size:80px;"><b><br>관리자 님</b></div>
         <div class = "modal_top_left"> 
            <div id="NSK_font"><br></div>
         </div>
         <div class = "modal_top_right">
            <div id="NSK_font"><br><br></div>
         </div>
      </div>
      <div class = "modal_mid">
         <div class = "modal_mid_mid">
            <div class = "modal_mid_left"><img id="moicon" src="resources/img/diary.png" onclick = "gomember()"></div>
            <div class = "modal_mid_right"><b id = "modal_mid_b" onclick = "gomember()">회원 관리</b></div>
         </div>   
         <div class = "modal_mid_mid">
            <div class = "modal_mid_left"><img id="moicon" src="resources/img/dumbbell.png" onclick = "gojoin()"></div>
            <div class = "modal_mid_right"><b id = "modal_mid_b" onclick = "gojoin()">회원 가입</b></div>
         </div>
         <div class = "modal_mid_mid">
            <div class = "modal_mid_left"><img id="moicon" src="resources/img/training.png" onclick="gorecord()"></div>
            <div class = "modal_mid_right"><b id = "modal_mid_b" onclick="gorecord()">회원 영상</b></div>
         </div>      
      </div>
        <div class = "modal_bot">
         <div>고객센터     010-4903-4073</div>
      </div>
   </div>
   </div>
   </div>

      <div class="main_top" style = "text-align : center;">
         <div class="top_left">
            <h1 style = "font-size:80px;">The Ai Fitness</h1>
         </div>
         <div class="top_right">
         
            <img id="modal_btn" src="resources/img/menu.png"
               style="width: 120px; height: 120px;">
         </div>
      </div>
      
      <div align="center" style="width:100%; height:300px;">
   
      <input id="join" style="width:800px; height:150px;" class="button" type = "submit" value ="회원 가입">
   
   </div>
   
   <form action="/web/insertJoin.do" method = "POST">
   
   <div class="middle">
<table class="joinTable">
   <tr>
      <!-- <td id="name"><a> 성함 </a></td> -->
      <td> <input name = "user_name" id="user_name" type="text" placeholder="이름"> </td>
   </tr>
   <tr>
      <!-- <td id="birth"> <a> 생년월일 </a> </td> -->
      <td> <input name = "user_birthdate"id="user_birthdate" type="text" placeholder="생년월일"> </td>
   </tr>
   <tr>
      <!-- <td id="birth"> <a> 생년월일 </a> </td> -->
      <td> <input name = "user_phone"id="user_birthdate" type="text" placeholder="핸드폰 번호"> </td>
   </tr>
   <tr>
      <!-- <td id="date"> <a> 등록일 </a> </td> -->
        <td> <input name="user_expire_date" id="user_joindate" type="text" placeholder="개월 수"> </td>
   </tr>
      <tr>
         <!-- <td id="gym"> <a> 지점명 </a> </td> -->
        <td> 
<!--            <select id=user_gym> 
               <option id=b> 지점명</option>
               <option id=b value ="강남점" >강남점</option>
               <option id=b value ="해운대점" >해운대점</option>
               <option id=b value ="광주남구" >광주남구</option>
            </select> -->
         <div class="select" data-role="selectBox" name="exercise" id="user_gym" onclick = "test()">
                     <span date-value="optValue" class="selected-option">
                        <!-- 선택된 옵션 값이 출력되는 부분 -->
                     </span>
                     <!-- 옵션 영역 -->
                     <ul class="hide" id="wrap">
                        <li class ="강남점">강남점</li>
                        <li class ="해운대점">해운대점</li>
                        <li class ="광주남구">광주남구</li>
                     </ul>
            </div>
            <div id="choice">지점명</div>
        </td>
      </tr>
</table>

   <div style="width:100%; height:200px;   margin-top:100px;">
      <table>
         <tr>
            <td id="videos" style="width:76%">
            <div style="font-size:40px"><input name = "video_yn" type='checkbox' value = "1" style="width:80px; height:80px;"
            class="button"></div>
            <c style="font-size: 40px;">영상 제공 동의</c></td>
            
            <td>
           <div><input id="button" style="font-size:45px;" class="button" type = "submit" value ="제출"></div></td>
         </tr>
      </table>
   </div>

   </div> 
   
   </form>
   

   
<!--    <div class="bottom">
   
   <img id="training" src="resources/img/training.png"
               style="width: 350px; height: 350px;">
   
   <img align=right id="videioTrainging" src="resources/img/videioTrainging.png"
               style="width: 500px; height: 500px;">
         
   </div> -->
<script type="text/javascript"> /* 셀렉트 */
const body = document.querySelector('body');
const select = document.querySelector(`[data-role="selectBox"]`);
const values = select.querySelector(`[date-value="optValue"]`);
const option = select.querySelector('ul');
const opts = option.querySelectorAll('li');
const choice = document.querySelector('#choice');

/* 셀렉트영역 클릭 시 옵션 숨기기, 보이기 */
function selects(e){
    e.stopPropagation();
    option.setAttribute('style',`top:${select.offsetHeight}px`)
    if(option.classList.contains('hide')){
        option.classList.remove('hide');
        option.classList.add('show');
    }else{
        option.classList.add('hide');
        option.classList.remove('show');
    }
    selectOpt();
    choice.classList.add('hide');
}

/* 옵션선택 */
function selectOpt(){
    opts.forEach(opt=>{
        const innerValue = opt.innerHTML;
        function changeValue(){
           var html = innerValue+"<input type = 'hidden' value = '"+innerValue+"' name ='user_gym'></input>"
           values.innerHTML = html;
        }
        opt.addEventListener('click',changeValue)
    });
}

/* 선택시 div보이게 */


/* 렌더링 시 옵션의 첫번째 항목 기본 선택 */
function selectFirst(){
    const firstValue = opts[0].innerHTML;
    values.innerHTML = `${firstValue}`
}



/* 옵션밖의 영역(=바디) 클릭 시 옵션 숨김 */
function hideSelect(){
    if(option.classList.contains('show')){
        option.classList.add('hide');
        option.classList.remove('show');
    }
}

selectFirst();
select.addEventListener('click',selects);
body.addEventListener('click',hideSelect);
</script>
</body>
</html>