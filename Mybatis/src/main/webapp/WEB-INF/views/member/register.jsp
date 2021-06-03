<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<!-- jQuery UI CSS파일 --> 
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->
<!--  jQuery 기본 js파일 -->
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<!-- jQuery UI 라이브러리 js파일-->
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<link rel="stylesheet" href="../../../css/register.css">

<script>
$(function() {
    $( "#testDatepicker" ).datepicker({
    	changeMonth: true, 
        changeYear: true,
         yearRange: '1900',  
        nextText: '다음 달',
        prevText: '이전 달' ,
        dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
        dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
        monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
        monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
       
    });
});
</script>



</head>


   
    <body>
        <div id="con">
        <div id="login">
        <div id="login_form"><!--로그인 폼-->
            <form id="register" action="registermember.do" method="post">
            
                <h3 class="login" style="letter-spacing:-1px;">Sign up to Web</h3>
    
            <!-- <p>
                <input type="submit" value="Sign in with Google" class="btn" style="background-color:#217Af0">
            </p> 구글로 로그인-->
    
            <hr>
    
            <!-- <span>ID</span> -->
            <p style="text-align: left; font-size:12px; color:#666">userid</p>
            <input type="text" placeholder="아이디" name="mem_id" class="size">
            <p></p>
            </label><!--아이디-->
    
            <label>
            <!-- <span>PW</span> -->
            <p style="text-align: left; font-size:12px; color:#666">Password </p>
            <input type="password" placeholder="비밀번호" name="mem_pw" class="size">
            </label><!--비밀번호-->
    
           <!--  <label>
               
                <p style="text-align: left; font-size:12px; color:#666"> </p>
                <input type="password" placeholder="비밀번호 확인" class="size">
            </label> -->


    
            <label>
                <!-- <span>PW</span> -->
            <p style="text-align: left; font-size:12px; color:#666">Mobile Phone</p>
                 <select class="size num1">
                    <option value="1" selected>SKT</option>
                    <option value="2" selected>KT</option>
                    <option value="3" selected>LG</option>
                </select>
                <select class="size num1" name="phone_num1">
                    <option value="010" selected>010</option>
            
                </select>
                 
                <input placeholder="전회번호" name="phone_num2"  class="size num2" maxlength="4" required>
                 <input placeholder="전회번호" name="phone_num3" class="size num2" maxlength="4" required>
                
             </label> <!--전화번호-->
    
    
             <label>
                    <!-- <span>PW</span> -->
                <p style="text-align: left; font-size:12px; color:#666">E-mail</p>
                    <input type="text" placeholder="이메일" class="size">
            </label> <!--이메일-->  

            <label>
                    <!-- <span>PW</span> -->
                <p style="text-align: left; font-size:12px; color:#666">username</p>
                    <input type="text" name="mem_name" placeholder="이름" class="size">
            </label> <!--이메일--> 



    <label>
        <!-- <span>PW</span> -->
    <p style="text-align: left; font-size:12px; color:#666">nickname</p>
        <input type="text" name="mem_nickname" placeholder="닉네임" class="size">
    </label> <!--이메일--> 


    <label>
        <!-- <span>PW</span> -->
    <p style="text-align: left; font-size:12px; color:#666">성별</p>
       
        <select class="size" name="mem_sex">
                    <option value="남자" selected>남</option>
                    <option value="여자" selected>여</option>
                </select>
    </label> <!--이메일--> 


    <label>
        <!-- <span>PW</span> -->
    <p style="text-align: left; font-size:12px; color:#666">나이</p>
        <input type="text" name="mem_age"  placeholder="이름" class="size">
    </label> <!--이메일--> 


    <label>
        <!-- <span>PW</span> -->
    <p style="text-align: left; font-size:12px; color:#666">생년월일</p>
        <input type="date" id="" class="size" name="mem_birthday" placeholder="생년월일">
    </label> <!--이메일--> 

      
    
        <br>
            <p>
                <input type="submit" value="Create Acoout" class="btn">
                
            </p>
        </form>
    
        <hr>
        <p class="find">
            <span><a href="member/login" >로그인 페이지로 이동</a></span>
        </p>
        </div>
        <div>
        </div><!--con-->
    
    </body>

    

</html>