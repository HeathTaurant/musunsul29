<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#wrap {
		width: 490px;
		text-align :center;
		margin: 0 auto 0 auto;
    }
	 #chk{
        text-align :center;
	}
	#cancelBtn{
		visibility:visible;
	}
	#useBtn{
		visibility:hidden;
	}
</style>
<script type="text/javascript">
	var httpRequest = null;
	
	//httpRequest 객체 생성
	function getXMLHttpRequest(){
		var httpRequest = null;
		//브라우저끼리의 객체생성 차이점을 고려해서 XHR 객체를 얻어오는 자바스크립트 코드를 다음과 같이 작성함.
		if(window.ActiveXObject){//ActiveXObject를 지원하는 브라우저라면 오브젝트를 리턴하고 그렇지 않다면 null를 리턴
			try{
				httpRequest = new ActiveXObject("Msxml2.XMLHTTP");
			}catch(e){
				try{
					httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
				} catch (e2) { httpRequest = null; }
			}
		}else if(window.XMLHttpRequest){
            httpRequest = new window.XMLHttpRequest();
        }
        return httpRequest;    
	}

	//회원가입창의 아이디 입력란의 값을 가져온다.
	function pValue(){
		document.getElementById("userId").value = opener.document.joinForm.mem_userid.value; //부모창 접근
	}
	
	//아이디 중복체크
	function idCheck(){
		var id = document.getElementById("userId").value;
		const check_num = /[0-9]/; // 숫자 
		const check_eng = /[a-zA-Z]/; // 문자
		const check_spc = /[~!@#$%^&*()_+|<>?:{}]/; // 특수문자 
		const check_kor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/; // 한글체크

		if(!id){//아이디 입력 여부 검사
			alert("아이디를 입력하지 않았습니다.");
			return false;
		}else if(!(check_num.test(id) || check_eng.test(id)) || check_spc.test(id) || check_kor.test(id)){//(id < "0" || id > "9") && (id < "A" || id > "Z") && (id < "a" || id > "z") 한글 및 특수문자 입력 여부 검사
			alert("한글 및 특수문자는 아이디로 사용하실 수 없습니다.");
			return false;
		}else{
			var param="id="+id;
			//ajax이용해 중복체크.
			console.log(param);
			httpRequest = getXMLHttpRequest(); //객체생성 ajax
			httpRequest.onreadystatechange = callback;
			httpRequest.open("POST","/Join/MemberIdChk",true);
			httpRequest.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
			httpRequest.send(param);
		}
	}
	//요소를 보여주거나 숨겨주는 visibility속성
	//서버로 데이터 전달 후 정상적으로 서버에서 데이터를 받을 경우 실행됨
	function callback(){
		if(httpRequest.readyState == 4){
			//결과값을 가져온다.
			var resultText = httpRequest.responseText;
			if(resultText == 0){//중복아이디0
				alert("사용할수 없는 아이디입니다.");
				document.getElementById("cancelBtn").style.visibility='visible';
				document.getElementById("useBtn").style.visibility='hidden'; //아이디가 중복되었을 경우 사용하기 버튼을 보여주지 않는다.
				document.getElementById("msg").innerHTML="";
			}else if(resultText == 1){//중복아이디x
				document.getElementById("cancelBtn").style.visibility='hidden';
				document.getElementById("useBtn").style.visibility='visible';
				document.getElementById("msg").innerHTML="사용 가능한 아이디입니다.";
			}
		}
	}
	
	//사용하기 클릭시 부모창으로 값 전달
	function sendCheckValue(){
		//중복체크 결과인 innCheck값을 전달한다.
		opener.document.joinForm.idDuplication.value = "idCheck";
		//opener.document.getElementsbyName("idDuplication").value = "idCheck";
		//회원가입 화면의 ID입력란에 값을 전달
		opener.document.joinForm.mem_userid.value = document.getElementById("userId").value;
		
		if(opener != null){
			opener.chkForm = null;
			self.close();
		}
	}
</script>
</head>
<!-- 중복체크 화면이 열리면 onload 이벤트에 의해 pValue( )라는 함수가 호출된다.-->
<body onload="pValue()">
<div id="wrap">
	<br>
	<b><font size="4" color="gray">아이디 중복체크</font></b>
	<hr size="1" width="460">
	<br>
	<div id="chk">
		<form id="checkForm">
			<input type="text" name="idinput" id="userId" />
			<input type="button" value="중복확인" onclick="idCheck()" />		
		</form>
		<div id="msg"></div>
		<br>
		<input id="cancelBtn" type="button" value="취소" onclick="window.close()" /><br>
		<input id="useBtn" type="button" value="사용하기" onclick="sendCheckValue()" />
	</div>
</div>
</body>
</html>