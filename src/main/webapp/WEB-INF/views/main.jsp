<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.mapper.guest" %>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>Insert title here</title>
   <link rel="preconnect" href="https://fonts.googleapis.com">
   <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
   <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap" rel="stylesheet">
<style>
html, body {
  width: 100%;
  height: 100%;
  margin: 0;
  padding: 0;
}

#NSK_font{
font-family: 'Noto Sans KR', sans-serif;
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
    
    .record_wrap, .record_wrap2, .record_wrap3{
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
    height: 50%;
    float: left;
    top: 56px;
    margin-bottom: 40px;
    text-align: right;
    font-family: 'Noto Sans KR';
}

.modal_top_right{
font-size: 40px;
width: 55%;
height: 64%;
float: right;
text-align: left;
top: 6%;
margin-bottom: 20px;
font-family: 'Noto Sans KR';
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
padding: 0px 30px 0px 0px;
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
font-family: 'Noto Sans KR';
}

.main_map {
width:100%;
height:100%;
background-color : #FFFFFF;
}

.main_top {
width:100%;
height:8%;
/** background-color: #CAB0FF;
float:center;
border-bottom-width:thin;
border-bottom-color:rgba(25,80,100,0);
border-bottom:solid; **/}

.top_left{
float:left;
width:80%;
height:100%;

/** border-bottom-right-radius: 2em; **/
}

.top_right{
float:right;
width:20%;
height:100%;
}

.main_mid {
width:100%;
height:95%;
background-color : #F1F2F6;
/** background-color:red;
float:left; **/}

.mid_top{
font-size:80px;
height:8%;
text-align: center;
padding: 41px 0px 0px 100px;
}


.mid_bot{
height:93%;
}

.mid_bot_table{
font-size:50px;
text-align: center;
width: 100%;
}

.main_bot {
position : fixed;
width:100%;
height:10%;
bottom: 0px;
background-color: #FFFFFF;
}

.bicon{
float: left;
padding: 20px 0px 0px 20px;
width: 23%;
font-size:40px;
text-align: center;
color:black;
}


.bimg{
width:150px;
height:150px;
}

.mbimg{
width:550px;
height:500px;
border-radius: 2em;
background: white;
}


td{
font-size:40px;
font-weight:bolder;
}

h1{
position:relative;
left:-10%;
top: -5%;
}

a{
font-size:80px;
font-family: 'Noto Sans KR', sans-serif;
}

#record_top_title{
font-size:100px;
font-weight:bolder;
padding: 70px 50px 50px 50px;
}

#out{
position:relative;
width:100px;
height:100px;
left:40%;
}

#out2{
position:relative;
width:100px;
height:100px;
left:40%;
margin : 0px 0px 0px -70px;
}

#record_middle_content{
text-align:center;
position:relative;
top:3%;
}

.test{
position:relative;
text-align:left;
left:5%;
font-size:50px;
font-weight:bolder;
font-family: 'Noto Sans KR', sans-serif;
WIDTH : 976PX;
}

p{
padding: 0px 100px 0px 50px;
}

.record_down{
text-align:center;
}

#start{
width:300px;
height:100px;
font-size:50px;
font-weight:bolder;
font-family: 'Noto Sans KR', sans-serif;
border-radius:30px;
}

#ex_num{
text-align:center;
width:300px;
height:100px;
font-size:50px;
font-weight:bolder;
font-family: 'Noto Sans KR', sans-serif;
border-radius:30px;
}

#set{
text-align:center;
width:300px;
height:100px;
font-size:50px;
font-weight:bolder;
font-family: 'Noto Sans KR', sans-serif;
border-radius:30px;
}


#ex_num2{
text-align:center;
width:100px;
height:100px;
font-size:70px;
font-weight:bolder;
font-family: 'Noto Sans KR', sans-serif;
border-radius:30px;
border: none;
}

#set2{
text-align:center;
width:100px;
height:100px;
font-size:100px;
font-weight:bolder;
font-family: 'Noto Sans KR', sans-serif;
border-radius:30px;
border: none;
}

b{
padding: 0px 30px 0px 0px;
font-size:40px;
font-weight:bolder;
/* font-family: 'Noto Sans KR', sans-serif; */
}

.div_p1, .div_u1, .div_d1, .div_p2, .div_u2, .div_d2{
display:none;
}
.tate{
padding-top: 30px;
}
.tate2{
padding: 30px 0px 30px 0px;
}
summary {
   padding: 0px 0px 0px 0px;
   font-size: 70px;
   opacity: 0.4;
   margin: 158px 0px 0px 334px;
}

#video {
   width: 1000px;
   height: 800px;
}
li{
font-family: 'Noto Sans KR';
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

    
    function onClick1() {
        document.querySelector('.record_wrap').style.display ='block';
        document.querySelector('.record_bg').style.display ='block';
    }   
    function offClick1() {
        document.querySelector('.record_wrap').style.display ='none';
        document.querySelector('.record_bg').style.display ='none';
    }
    
    function onClick2() {
        document.querySelector('.record_wrap2').style.display ='block';
        document.querySelector('.record_bg').style.display ='block';
    }   
    function offClick2() {
        document.querySelector('.record_wrap2').style.display ='none';
        document.querySelector('.record_bg').style.display ='none';
    }
 
    
    function onClick3() {
        document.querySelector('.record_wrap3').style.display ='block';
        document.querySelector('.record_bg').style.display ='block';
    }   
    function offClick3() {
        document.querySelector('.record_wrap3').style.display ='none';
        document.querySelector('.record_bg').style.display ='none';
    }
    
    document.getElementById('mbimg').addEventListener('click', onClick1);
    document.querySelector('.record_bg').addEventListener('click', offClick1);
    
    document.getElementById('mbimg2').addEventListener('click', onClick1);
    document.querySelector('.record_bg').addEventListener('click', offClick1);
    
    document.getElementById('mbimg3').addEventListener('click', onClick2);
    document.querySelector('.record_bg').addEventListener('click', offClick2);
    
    document.getElementById('mbimg4').addEventListener('click', onClick3);
    document.querySelector('.record_bg').addEventListener('click', offClick2);
    
    function g_click(){
        document.querySelector('.div_g1').style.display ='block';
        document.querySelector('.div_u1').style.display ='none';
        document.querySelector('.div_d1').style.display ='none';
        document.querySelector('.div_p1').style.display ='none';
        document.querySelector('.div_g2').style.display ='block';
        document.querySelector('.div_u2').style.display ='none';
        document.querySelector('.div_d2').style.display ='none';
        document.querySelector('.div_p2').style.display ='none';
    }
    function u_click(){
        document.querySelector('.div_g1').style.display ='none';
        document.querySelector('.div_u1').style.display ='block';
        document.querySelector('.div_d1').style.display ='none';
        document.querySelector('.div_p1').style.display ='none';
        document.querySelector('.div_g2').style.display ='none';
        document.querySelector('.div_u2').style.display ='block';
        document.querySelector('.div_d2').style.display ='none';
        document.querySelector('.div_p2').style.display ='none';
    }
    function d_click(){
        document.querySelector('.div_g1').style.display ='none';
        document.querySelector('.div_u1').style.display ='none';
        document.querySelector('.div_d1').style.display ='block';
        document.querySelector('.div_p1').style.display ='none';
        document.querySelector('.div_g2').style.display ='none';
        document.querySelector('.div_u2').style.display ='none';
        document.querySelector('.div_d2').style.display ='block';
        document.querySelector('.div_p2').style.display ='none';
    }
    function p_click(){
        document.querySelector('.div_g1').style.display ='none';
        document.querySelector('.div_u1').style.display ='none';
        document.querySelector('.div_d1').style.display ='none';
        document.querySelector('.div_p1').style.display ='block';
        document.querySelector('.div_g2').style.display ='none';
        document.querySelector('.div_u2').style.display ='none';
        document.querySelector('.div_d2').style.display ='none';
        document.querySelector('.div_p2').style.display ='block';
    }
    document.getElementById('가슴').addEventListener('click', g_click);
    document.getElementById('어깨').addEventListener('click', u_click);
    document.getElementById('등').addEventListener('click', d_click);
    document.getElementById('팔').addEventListener('click', p_click);
    
}


<%  guest member = (guest) session.getAttribute("member");%>

function go_calender(){
   location.href = "/web/infoCalender.do?user_id=<%=member.getUser_id()%>";
}

function go_record(){
   location.href = "/web/record.do?user_id="+<%=member.getUser_id()%>;
}

function go_cam(exinfo,kind){
   console.log(exinfo)
   location.href = "/web/insertEx.do?ex_name="+exinfo+"&ex_kinds="+kind+"&user_id="+<%=member.getUser_id()%>;
}

function go_warmingup(){
   location.href = "/web/warmingup.do";
}


function go_main(){
   location.href = "/web/main.do";
}

</script>
</head>
<body>

<% member = (guest) session.getAttribute("member");%>

   <div class="black_bg">
   <div class="modal_wrap">
   <div class="modal_main">
      <div class = "modal_top">
         <div style = "font-size:80px;"><b style="font-size: 80px;"><br><%= member.getUser_name() %></b></div>
         <div class = "modal_top_left"> 
            <div><br>만기일</div>
         </div>
         <div class = "modal_top_right">
            <div><br><%=member.getUser_expire_date() %><br>D-day 30일</div>
         </div>
      </div>
      <div class = "modal_mid">
         <div class = "modal_mid_mid">
            <div class = "modal_mid_left"><img id="moicon" src="resources/img/diary.png" onclick = "go_calender()"></div>
            <div class = "modal_mid_right"><b id = "modal_mid_b" onclick = "go_calender()">운동 다이어리</b></div>
         </div>   
         <div class = "modal_mid_mid">
            <div class = "modal_mid_left"><img id="moicon" src="resources/img/video.png" onclick = "go_record()"></div>
            <div class = "modal_mid_right"><b id = "modal_mid_b" onclick = "go_record()">운동 영상</b></div>
         </div>      
      </div>
      <div class = "modal_bot">
         <div>고객센터     010-4903-4073</div>
      </div>
   </div>
   </div>
   </div>
   
   <div class="record_bg"></div>
   <div class="record_wrap">
      <div class="record_top" style="width: 100%; height: 200px;">
         <div id="record_top_title">
            <a> 체스트 플라이 </a> <img id="out" src="resources/img/out.png"
               onclick="go_main()">
         </div>
      </div>

      <div class="record_middle" style="width: 100%; height: 1000px;"
         align="center">
         <div id="record_middle_content">
            <video src="resources/record/체스트 플라이.mp4" id="video"
               controls="controls">

            </video>
         </div>
      </div>

      <div class="record_down" style="width: 100%; height: 150px; margin : -30px 0px 0px 0px;">
      <form action="/web/insertEx.do" method ="post">
         <input type="number" name="user_set" id="set2" placeholder="0"><b>Set</b>
         <b>/</b> 
         <input type="number" name="ex_count" id="ex_num2" placeholder="0"><b>회</b>
         <input type = "hidden" value = "체스트 플라이" name ="ex_name">
         <input type = "hidden" value = "가슴" name ="ex_kinds">
         <input type = "hidden" value = "<%=member.getUser_id() %>" name ="user_id">
         <input type = "submit" id="start" value = "제출">
      </form>
      </div>
      <div class="test">
         <summary id="summary" style="margin: 69px 0px 0px 327px;">운동방법</summary>
         <div style = "border-top: 9px solid gray;width: 1100px;margin: 0px 0px 45px -55px;opacity: 0.2;"></div>
         <p>
         <li id="lineHeight" style="padding-left: 1em; text-indent: -1.4em;">머신에 앉아 등과 엉덩이를 붙이고 허리를 아치형으로 약 10cm정도 띄워줍니다</li>
         <li id="lineHeight" style="padding-left: 1em; text-indent: -1.4em;">팔꿈치를 패드에 고정시키고 90도로 만들어 가슴 중앙 부분과 수평이 되게 해줍니다</li>
         <li id="lineHeight" style="padding-left: 1em; text-indent: -1.4em;">겨드랑이에 힘을 준다는 느낌으로 패드를 가운데로 모아줍니다</li>
         <li id="lineHeight" style="padding-left: 1em; text-indent: -1.4em;">천천히 자극을 느끼며 시작 자세로 돌아갑니다</li>
         </p>
      </div>
      <div class="test">
         <summary id="summary"style="margin: 58px 0px 0px 327px; color: red;">주의사항</summary>
         <div style = "border-top: 9px solid red;width: 1100px;margin: 0px 0px 45px -55px;opacity: 0.1;"></div>
         <p id="lineHeight">
         <li style="padding-left: 1em; text-indent: -1.4em;">다리를 단단히 고정시켜 상체의 흔들림을 최소화합니다</li>
         <li style="padding-left: 1em; text-indent: -1.4em;">본인에게 적당한 중량을 선택해야합니다</li>
         <li style="padding-left: 1em; text-indent: -1.4em;">여성분들은 15~20회 남성분들은 10~15회정도 가능한 중량이 가장 적당합니다</li>
         <li style="padding-left: 1em; text-indent: -1.4em;">시선은 항상 정면을 바라봐야합니다</li>
         <li style="padding-left: 1em; text-indent: -1.4em;">팔의 힘이 들어간다면 중량을 낮춰서 운동해야합니다</li>
         </p>
      </div>
   </div>
   
   <div class="record_bg2"></div>
   <div class="record_wrap2">
      <div class="record_top" style="width: 100%; height: 200px;">
         <div id="record_top_title">
            <a> 덤벨 숄더프레스 </a> <img id="out2" src="resources/img/out.png"
               onclick="go_main()">
         </div>
      </div>

      <div class="record_middle" style="width: 100%; height: 1000px;"
         align="center">
         <div id="record_middle_content">
            <video src="resources/record/덤벨 솔더프레스.mp4" id="video"
               controls="controls">

            </video>
         </div>
      </div>
      <div class="record_down" style="width: 100%; height: 150px;">
      <form action="/web/insertEx.do" method ="post">
         <input type="number" name="user_set" id="set2" placeholder="0"><b>Set</b>
         <b>/</b> 
         <input type="number" name="ex_count" id="ex_num2" placeholder="0"><b>회</b>
         <input type = "hidden" value = "덤벨 솔더프레스" name ="ex_name">
         <input type = "hidden" value = "어깨" name ="ex_kinds">
			<input type = "hidden" value = "<%=member.getUser_id() %>" name ="user_id">
         <input type = "submit" id="start" value = "제출">
      </form>
      </div>
      <div class="test">
         <summary id="summary" style="margin: 69px 0px 0px 327px;">운동방법</summary>
         <div style = "border-top: 9px solid gray;width: 1100px;margin: 0px 0px 45px -55px;opacity: 0.1;"></div>
         <p>
         <li id="lineHeight" style="padding-left: 1em; text-indent: -1.4em;">가슴을 열어준 다음 덤벨을 들어 귀쪽에 위치시켜줍니다.</li>
         <li id="lineHeight" style="padding-left: 1em; text-indent: -1.4em;">팔꿈치를 피면서 덤벨을 머리 위로 들어줍니다.</li>
         <li id="lineHeight" style="padding-left: 1em; text-indent: -1.4em;">머리 위로 올린 덤벨을 다시 처음 위치로 천천히 내려줍니다.</li>
         </p>
      </div>
      <div class="test">
         <summary id="summary"style="margin: 58px 0px 0px 327px; color: red;">주의사항</summary>
         <div style = "border-top: 9px solid red;width: 1100px;margin: 0px 0px 45px -55px;opacity: 0.2;"></div>
         <p id="lineHeight">
         <li style="padding-left: 1em; text-indent: -1.4em;">덤벨숄더프레스를 진행할 때 허리가 꺾이지 않도록 항상 적당한 복압을 주고 실시합니다.</li>
         <li style="padding-left: 1em; text-indent: -1.4em;">덤벨이 너무 옆으로 빠지게 되는 경우 부상을 입을 수 있습니다.</li>
         <li style="padding-left: 1em; text-indent: -1.4em;">내릴 땐 천천히 전면 삼각근의 텐션을 유지하면서 내려줍니다.</li>
         <li style="padding-left: 1em; text-indent: -1.4em;">어깨가 말려있는 라운드 숄더이신분들은 벤치 각도를 살짝 낮추어 덤벨숄더프레스를 진행해 주시는 것이 좋습니다.</li>
         <li style="padding-left: 1em; text-indent: -1.4em;">덤벨을 내릴 때 너무 많이 내리게 되면 전면 삼각근의 텐션이 풀리게 됩니다. 적당한 선까지 덤벨을 내려줍니다.</li>
         </p>
      </div>
   </div>
   
   <div class="record_bg3"></div>
   <div class="record_wrap3">
      <div class="record_top" style="width: 100%; height: 200px;">
         <div id="record_top_title">
            <a> 시티드 로우 </a> <img id="out2" src="resources/img/out.png"
               onclick="go_main()">
         </div>
      </div>

      <div class="record_middle" style="width: 100%; height: 1000px;"
         align="center">
         <div id="record_middle_content">
            <video src="resources/record/시티드 로우.mp4" id="video"
               controls="controls">

            </video>
         </div>
      </div>
	  <form action="/web/insertEx.do" method ="post">
      <div class="record_down" style="width: 100%; height: 150px;">
         <input type="number" name="user_set" id="set2" placeholder="0"><b>Set</b>
         <b>/</b> 
         <input type="number" name="ex_count" id="ex_num2" placeholder="0"><b>회</b>
         <input type = "hidden" value = "시티드 로우" name ="ex_name">
         <input type = "hidden" value = "등" name ="ex_kinds">
         <input type = "hidden" value = "<%=member.getUser_id() %>" name ="user_id">
         <input type = "submit" id="start" value = "제출">
      </form>
      </div>
      <div class="test">
         <summary id="summary" style="margin: 69px 0px 0px 327px;">운동방법</summary>
         <div style = "border-top: 9px solid gray;width: 1100px;margin: 0px 0px 45px -55px;opacity: 0.1;"></div>
         <p>
         <li id="lineHeight" style="padding-left: 1em; text-indent: -1.4em;">먼저 케이블에 착석하고 발을 받침대에 나두고 다리는 약간 구부린 상태를 유지합니다</li>
         <li id="lineHeight" style="padding-left: 1em; text-indent: -1.4em;">그리고 케이블을 잡고 허리를 곧게 핍니다</li>
         <li id="lineHeight" style="padding-left: 1em; text-indent: -1.4em;">케이블을 당기는데 팔꿈치는 너무 벌리지 않게 합니다</li>
         <li id="lineHeight" style="padding-left: 1em; text-indent: -1.4em;">당길 때 가슴을 앞으로 내밀고 견갑은 모아주고 등을 수축시킵니다</li>
         <li id="lineHeight" style="padding-left: 1em; text-indent: -1.4em;">그리고 등을 이완할 때는 가슴을 앞으로 내민 상태에서 허리만 앞으로 숙이고 등은 긴장을 유지합니다</li>
         </p>
      </div>
      <div class="test">
         <summary id="summary"style="margin: 58px 0px 0px 327px; color: red;">주의사항</summary>
         <div style = "border-top: 9px solid red;width: 1100px;margin: 0px 0px 45px -55px;opacity: 0.2;"></div>
         <p id="lineHeight">
         <li style="padding-left: 1em; text-indent: -1.4em;">케이블을 당길 때 견갑을 모으게 되는데 이때 견갑을 모은다고 했는데 어깨를 올리지 않습니다</li>
         <li style="padding-left: 1em; text-indent: -1.4em;">케이블을 잡아당길 때(수축시킬때)에는 빠르게 당기지만 이완할 때는 천천히(네거티브) 동작을 수행하도록 합니다</li>
         <li style="padding-left: 1em; text-indent: -1.4em;">케이블을 잡아 당길때 D형 바는 배꼽~명치 사이에 위치하도록 신경 써가며 수행합니다</li>
         <li style="padding-left: 1em; text-indent: -1.4em;">그리고 케이블을 당기다 보면 몸이 뒤로 젖혀지는데 이때 몸을 너무 많이 뒤로 가지 않도록 주의합니다</li>
         <li style="padding-left: 1em; text-indent: -1.4em;">시티드 로우가 등받이가 없는 운동이기에 코어 근육이나 등이 받쳐주지 않는다면 무게를 너무 무겁게 하지 않습니다</li>
         </p>
      </div>
   </div>
   
   
   <div class="main_map">

      <div class="main_top" style = "text-align : center;">
         <div class="top_left">
            <h1 style = "font-size:80px;">The Ai Fitness</h1>
         </div>
         <div class="top_right">
         
            <img id="modal_btn" src="resources/img/menu.png"
               style="width: 120px; height: 120px;">
         </div>
      </div>


      <div class="main_mid">
         <div class="mid_top">
         
         <div class="div_g1">
            <table>
               <tr>
               <td><img src = "resources/img/가슴.png"
               style = "width:150px; height:150px;"></td>
               <td><b id="NSK_font">오늘의 대흉근</b></td>
               </tr>
            </table>
         </div>
         
         <div class="div_u1">
            <table>
               <tr>
               <td><img src = "resources/img/어깨.png"
               style = "width:150px; height:150px;"></td>
               <td><b id="NSK_font">오늘의 어깨</b></td>
               </tr>
            </table>
         </div>
         
         <div class="div_d1">
            <table>
               <tr>
               <td><img src = "resources/img/등.png"
               style = "width:150px; height:150px;"></td>
               <td><b id="NSK_font">오늘의 등짝</b></td>
               </tr>
            </table>
         </div>
         
         <div class="div_p1">
            <table>
               <tr>
               <td><img src = "resources/img/팔.png"
               style = "width:150px; height:150px;"></td>
               <td><b id="NSK_font">오늘의 팔뚝</b></td>
               </tr>
            </table>
         </div>
         
         </div>
         <div class="mid_bot" >
            
         <div class="div_g2">
            <table class="mid_bot_table" id="NSK_font">
               <tr>
                  <td>
                     <img id="mbimg" class="mbimg" src="resources/img/스탠딩플라이체스트백.png" >
                  </td>
                  <td>
                      <img class="mbimg" src="resources/img/시티드체스트프레스.png">
                  </td>
               </tr>
               <tr>
                  <td class="tate">스탠딩 플라이 체스트&백 </td>
                  <td class="tate">시티드 체스트 프레스</td>
               </tr>
               <tr><td class="tate2"></td><td></td></tr>
               <tr>
                  <td>
                     <img class="mbimg" src="resources/img/인클라인체스트프레스.png">
                  </td>
                  <td>
                     <img id = "mbimg2" class="mbimg" src="resources/img/펙덱플라이.png">
                  </td>
               </tr>
               <tr>
                  <td class="tate">인클라인 체스트 프레스</td>
                  <td class="tate">체스트 플라이</td>
               </tr>
               <tr><td class="tate2"></td><td></td></tr>
               <tr>
                  <td>
                     <img id="mbimg" class="mbimg" src="resources/img/해머플렛벤치.png" >
                  </td>
                  <td>
                      <img class="mbimg" src="resources/img/해머디크라인벤치.png">
                  </td>
               </tr>
               <tr>
                  <td  class="tate">해머 플렛 벤치</td>
                  <td  class="tate">해머 디크라인 벤치</td>
               </tr>
            </table>
         </div>
         
         <div class="div_u2">
            <table class="mid_bot_table" id="NSK_font">
               <tr>
                  <td>
                     <img id="mbimg3" class="mbimg" src="resources/img/덤벨 솔더프레스.png" >
                  </td>
                  <td>
                      <img class="mbimg" src="resources/img/레터럴레이즈.png">
                  </td>
               </tr>
               <tr>
                  <td  class="tate">덤벨 숄더프레스</td>
                  <td  class="tate">레터럴 레이즈</td>
               </tr>
               <tr><td class="tate2"></td><td></td></tr>
               <tr>
                  <td>
                     <img class="mbimg" src="resources/img/스탠딩레터럴레이즈.png">
                  </td>
                  <td>
                     <img class="mbimg" src="resources/img/시티드딥.png">
                  </td>
               </tr>
               <tr>
                  <td  class="tate">스탠딩 레터럴 레이즈</td>
                  <td  class="tate">시티드 딥</td>
               </tr>
               <tr><td class="tate2"></td><td></td></tr>
               <tr>
                  <td>
                     <img id="mbimg" class="mbimg" src="resources/img/스미스수직형.png" >
                  </td>
                  <td>
                      <img class="mbimg" src="resources/img/벤트오버레터럴레이즈.png">
                  </td>
               </tr>
               <tr>
                  <td  class="tate">스미스 (수직형)</td>
                  <td  class="tate">벤트오버 레터럴 레이즈</td>
               </tr>
            </table>
         </div>
         
         <div class="div_d2">
            <table class="mid_bot_table" id="NSK_font">
               <tr>
                  <td>
                     <img id="mbimg" class="mbimg" src="resources/img/렛풀다운.png" >
                  </td>
                  <td>
                      <img id="mbimg4" class="mbimg" src="resources/img/시티드로우.png">
                  </td>
               </tr>
               <tr>
                  <td class="tate">렛풀다운</td>
                  <td class="tate">시티드 로우</td>
               </tr>
               <tr><td class="tate2"></td><td></td></tr>
               <tr>
                  <td>
                     <img class="mbimg" src="resources/img/로우풀리.png">
                  </td>
                  <td>
                     <img class="mbimg" src="resources/img/친&딥어시스트.png">
                  </td>
               </tr>
               <tr>
                  <td class="tate">로우풀리</td>
                  <td class="tate">친 & 딥 어시스트</td>
               </tr>
               <tr><td class="tate2"></td><td></td></tr>
               <tr>
                  <td>
                     <img id="mbimg" class="mbimg" src="resources/img/프론트로우.png" >
                  </td>
                  <td>
                      <img class="mbimg" src="resources/img/와이드풀다운프론트.png">
                  </td>
               </tr>
               <tr>
                  <td class="tate">프론트 로우</td>
                  <td class="tate">와이드 풀다운 프론트</td>
               </tr>
            </table>
         </div>
         
         <div class="div_p2">
            <table class="mid_bot_table" id="NSK_font">
               <tr>
                  <td>
                     <img id="mbimg" class="mbimg" src="resources/img/암컬.png" >
                  </td>
                  <td>
                      <img class="mbimg" src="resources/img/오버헤드 트라이셉스 익스텐션.png">
                  </td>
               </tr>
               <tr>
                  <td class="tate">암 컬</td>
                  <td class="tate">오버헤드 트라이셉스 익스텐션</td>
               </tr>
               <tr><td class="tate2"></td><td></td></tr>
               <tr>
                  <td>
                     <img class="mbimg" src="resources/img/바벨 컬.png">
                  </td>
                  <td>
                     <img class="mbimg" src="resources/img/라잉 트라이셉스 익스텐션.png">
                  </td>
               </tr>
               <tr>
                  <td class="tate">바벨 컬</td>
                  <td class="tate">라잉 트라이셉스 익스텐션</td>
               </tr>
               <tr><td class="tate2"></td><td></td></tr>
               <tr>
                  <td>
                     <img id="mbimg" class="mbimg" src="resources/img/덤벨 컬.png" >
                  </td>
                  <td>
                      <img class="mbimg" src="resources/img/프리처컬벤치.png">
                  </td>
               </tr>
               <tr>
                  <td class="tate">덤벨 컬</td>
                  <td class="tate">프리처 컬 벤치</td>
               </tr>
            </table>
         </div>

         </div>
      <div class="main_bot" id="NSK_font">
         <div class="bicon" id="가슴"><img class="bimg" src="resources/img/가슴.png"><br>가슴</div>
         <div class="bicon" id="어깨"><img class="bimg" src="resources/img/어깨.png"><br>어깨</div>
         <div class="bicon" id="등"><img class="bimg" src="resources/img/등.png"><br>등</div>
         <div class="bicon" id="팔"><img class="bimg" src="resources/img/팔.png"><br>팔</div>
      </div>

   </div>
   
   </div>
   
</body>
</html>