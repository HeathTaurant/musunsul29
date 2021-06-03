<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/Css/Login/findIdStyle.css" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>findId</title>
<%@ include file="findIdModal.jsp" %>
<script type="text/javascript">
	window.onload = function(){
		function onClick(){
			document.querySelector('.background_modal').style.display='block';
			document.querySelector('.modal_contesnts').style.display='block';
		}
		function offClick(){
			document.querySelector('.background_modal').style.display='none';
			document.querySelector('.modal_contesnts').style.display='none';	
		}
		
		document.getElementById('searchBtn').addEventListener('click', onClick);
		document.querySelector('.close').addEventListener('click',offClick);
	};
</script>
<script>
//함수 정의
	function idSerch_Click(){
		var mem_username= $("#mem_username").val();
		var mem_num1 = $("#member_num1").val();
		var mem_num2 = $("#member_num2").val();
		var mem_num3 = $("#member_num3").val();
		var param = {'mem_username': mem_username,
				'mem_num1' : mem_num1,
				'mem_num2' : mem_num2,
				'mem_num3' : mem_num3};
		console.log(mem_num3);
		$.ajax({
			type : 'POST', //전송 방식
			url : '/user/userIdSearch',
			contentType: "application/json; charset=UTF-8",
			dataType: "json",
			data :  //전송 파라미터
				//'mem_username': mem_username,
				//'mem_num1' : mem_num1,
				//'mem_num2' : mem_num2,
				//'mem_num3' : mem_num1
				//$('#idFindForm').serialize(),
				JSON.stringify(param)
			})
			.done(function(data){
				console.log(data);
				//alert('성공');
				var str = data.mem_userid;
				if(str == 0){
					$('#id_value').text("회원 정보를 확인해주세요!");
				}else{
					console.log(data);
					$('#id_value').text(str);
					//아이디값 별도로 저장
					var idV = str;
				}
			})
			.fail(function(errorThrown){
				alert("error");
				console.log(errorThrown);
			})
		}
	
</script>
</head>
<body>
    <div class="container">
        <div class="header"></div>
        <div class="left"></div>
        <div class="right"></div>
        <div class="section">
            <div class="FindContainer">
                <h2>Find ID</h2>
                <p>이름과 휴대폰번호로 아이디 찾기가 가능합니다.</p>
                <hr>
                <div class="content">
                    <div class="center">
                        <form id="idFindForm">
                        <div class="find">
                            <div class="find_id">
                                <table>
                                    <colgroup>
                                        <col style="width:120px;">
                                        <col style="width:220px;">
                                    </colgroup>
                                    <tr>
                                        <td>
                                            <p class="txt">이름</p>
                                        </td>
                                        <td><input type="text" class="member member_name" name="mem_username" id="mem_username"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p class="txt">핸드폰번호</p>
                                        </td>
                                        <td>
                                            <input type="text" style="width: 40px;" maxlength="3" class="mobile num1" id="member_num1"
                                                name="mem_num1" /> -
                                            <input type="text" style="width: 60px;" maxlength="4" class="mobile num2" id="member_num2"
                                                name="mem_num2" /> -
                                            <input type="text" style="width: 60px;" maxlength="4" class="mobile num3" id="member_num3"
                                                name="mem_num3" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="btn ok">
                            <input type="button" id="searchBtn" value="ID찾기" onclick="idSerch_Click()"/>
                        </div>
                        </form>
                    </div>
                </div>
                <hr>
            </div>
        </div>
        <div class="footer"></div>
    </div>
</body>

</html>