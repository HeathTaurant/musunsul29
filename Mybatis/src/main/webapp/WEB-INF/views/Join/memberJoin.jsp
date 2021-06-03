<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width">
  <link rel="stylesheet" href="/Css/Join/memberJoinStyle.css">
  <title>Insert title here</title>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script src= "/Js/Join/memberJoinJS.js" ></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script type="text/javascript">
    $(function () {
      $('#member_password').keyup(function () {
        if (($('#member_password_chk').val() == '') && ($('#member_password').val() == '')) {
          $('#samechk').html('');
        } else {
          if ($('#member_password').val() != $('#member_password_chk').val()) {
            $('#samechk').html('비밀번호 일치하지 않음');
            $('#samechk').attr('color', 'red');
          } else {
            $('#samechk').html('비밀번호 일치함');
            $('#samechk').attr('color', 'black');
          }
        }
        var pw = $('#member_password').val();
        var num = pw.search(/[0-9]/g);
        var eng = pw.search(/[a-z]/ig);
        var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);

        if (pw.length < 8 || pw.length > 16) {
          $('#chkpw').html(' 8자리 ~ 16자리 이내로 입력해주세요.');
          $('#chkpw').attr('color', 'red');
        } else if (pw.search(/\s/) != -1) {
          $('#chkpw').html(' 비밀번호는 공백 없이 입력해주세요.');
          $('#chkpw').attr('color', 'red');
        } else if ((num < 0 && eng < 0) || (eng < 0 && spe < 0) || (spe < 0 && num < 0)) {
          $('#chkpw').html(' 영문,숫자, 특수문자 중 2가지 이상을 혼합하여 입력해주세요.');
        } else {
          $('#chkpw').html('');
        }
      });

      $('#member_password_chk').keyup(function () {
        if (($('#member_password_chk').val() == '') && ($('#member_password').val() == '')) {
          $('#samechk').html('');
        }
        if ($('#member_password').val() != $('#member_password_chk').val()) {
          $('#samechk').html('비밀번호 일치하지 않음');
          $('#samechk').attr('color', 'red');
        } else {
          $('#samechk').html('비밀번호 일치함');
          $('#samechk').attr('color', 'black');
        }
      });

      $('#member_email').keyup(function () {
        var member_email = $('#member_email').val();
        var regExp = /^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i;

        if ($('#member_email').val() == '') {
          $('#emailchk').html('');
        }
        if (member_email.match(regExp) != null) {
          $('#emailchk').html('');
        } else {
          $('#emailchk').html(' 올바른 형식이 아닙니다.');
          $('#emailchk').attr('color', 'red');
        }
      });
    });
  </script>
</head>

<body>
  <div class="container">
    <div class="header"></div>
    <div class="left"></div>
    <div class="right"></div>
    <div class="section">
      <div class="join">
        <div class="member_join">
          <h3>기본정보</h3>
          <form name="joinForm" action="/Join/joinOk" method="post">
            <table>
              <colgroup>
                <col style="width:150px;">
                <col style="width:auto;">
              </colgroup>
              <tr>
                <th>아이디*</th>
                <td><input type="text" class="member_id" id="member_id" name="mem_userid" onkeydown="inputIdChk()"/>
                  <input class="btn id_chk" type="button" value="아이디 중복확인" onclick="openIdChk()" />
                  <input type="hidden" name="idDuplication" id="idDuplication" value="idUncheck">
                </td>
              </tr>
              <tr>
                <th>비밀번호*</th>
                <td><input type="password" class="member_password" id="member_password"
                    name="mem_password" />&nbsp;<span id="txt">(영문 대소문자/숫자/특수문자 중 2가지
                    이상 조합, 8자~16자)</span>
                  <font id="chkpw"></font>
                </td>
              </tr>
              <tr>
                <th>비밀번호 확인*</th>
                <td><input type="password" class="member_password_chk" id="member_password_chk"
                     />
                  <font id="samechk"></font>
                </td>
              </tr>
              <tr>
                <th>이름*</th>
                <td><input type="text" class="member_name" id="member_name" name="mem_username" /></td>
              </tr>
              <tr>
                <th>생년월일*</th>
                <td>
                <select name="birth_year" class="birth_year" id="memberBirth_year">
                    <option value="1988">1988</option>
                    <option value="1989">1989</option>
                    <option value="1990">1990</option>
                    <option value="1991">1991</option>
                    <option value="1992">1992</option>
                    <option value="1993">1993</option>
                    <option value="1994">1994</option>
                    <option value="1995">1995</option>
                    <option value="1996">1996</option>
                    <option value="1997">1997</option>
                    <option value="1998">1998</option>
                    <option value="1999">1999</option>
                    <option value="2000" selected>2000</option>
                    <option value="2001">2001</option>
                    <option value="2002">2002</option>
                    <option value="2003">2003</option>
                    <option value="2004">2004</option>
                    <option value="2005">2005</option>
                    <option value="2006">2006</option>
                    <option value="2007">2007</option>
                  </select>&nbsp; 년
                  <input type="text" maxlength="2" class="birth_month" id="memberBirth_month"
                    name="birth_month" />&nbsp; 월
                  <input type="text" maxlength="2" class="birth_day" id="memberBirth_day" name="birth_day" />&nbsp; 일
                </td>
              </tr>
               <tr>
                <th>성별*</th>
                <td>
                  <input type="radio" name="mem_sex" value="0"  checked/>남&nbsp;
                  <input type="radio" name="mem_sex" value="1" />여
                </td>
              </tr>
              <tr>
                <th>주소*</th>
                <td>
                  <div> <input type="text" id="member_postcode" class="address member_postcode"
                      name="mem_postcode" />
                    <input type="button" class="btn postcode" placeholder="우편번호" value="우편번호"
                      onclick="DaumPostcode()" />
                  </div>
                  <input type="text" id="member_addr1" class="address member_addr1" name="mem_address1"
                    placeholder="기본주소" /> <br>
                  <input type="text" id="member_addr2" class="address member_addr2" name="mem_address2"
                    placeholder="상세주소" />
                </td>
              </tr>
              <tr>
                <th>휴대전화*</th>
                <td>
                  <select name="num1" class="num1">
                    <option value="010">010</option>
                    <option value="011">011</option>
                    <option value="016">016</option>
                    <option value="017">017</option>
                    <option value="018">018</option>
                    <option value="019">019</option>
                  </select> -
                  <input type="text" maxlength="4" class="mobile num2" id="member_num2" name="mem_num2" /> -
                  <input type="text" maxlength="4" class="mobile num3" id="member_num3" name="mem_num3" />
                </td>
              </tr>
              <tr>
                <th>이메일*</th>
                <td>
                  <input type="text" class="member_email" id="member_email" name="mem_email" />
                  <font id="emailchk"></font>
                </td>
              </tr>
            </table>
          </form>
        </div>
        <br>
        <h3>전체동의</h3>
        <div class="checkButton" id="checkButton">
          <div class="chk boxAll">
            <p>
              <span class=chk>
                <input type="checkbox" id="chk_All" name="chk_All" class="chk All_Checked" onclick="selectAll(this);">
              </span>
              <label>
                <strong>이용약관 및 개인정보수집 및 이용, 쇼핑정보 수신(선택)에 모두 동의합니다.</strong>
              </label>
            </p>
          </div>
          <div class="chk chk_box">
            <p>
              <label>
                <strong>[필수] 이용약관 동의</strong>
              </label>
            <div class="txt">
              <pre><(주)쇼핑몰>('http://localhost'이하 '몰몰')은(는) 「개인정보 보호법」 제30조에 따라 정부주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보 처리방침을 수립·공개합니다.

○ 이 개인정보처리방침은 2021년 1월 1부터 적용됩니다.
                
제1조(개인정보의 처리 목적)
<(주)쇼핑몰>('http://localhost'이하 '몰몰')은(는) 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며 이용 목적이 변경되는 겨우에는 「개인정보 보호법」 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.
1. 홈페이지 회원가입 및 관리
회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리, 서비스 부정이용 방지, 만14세 미만 아동의 개인정보 처리 시 법정대리인의 동의여부 확인 목적으로 개인정보를 처리합니다.
              </pre>
            </div>
            <p>
              <label>
                <strong>이용약관에 동의하십니까? </strong>
              </label>
              <span class="chk">
                <input type="checkbox" id="chk" name="agreements" class="chk" onclick="checkSelectAll();">
              </span>
            </p>
          </div>
          <div class="chk chk_box">
            <p>
              <label>
                <strong>[필수] 개인정보 수집 및 이용 동의</strong>
              </label>
            <div class="txt">
              <pre>
<(주)musun129>('http://localhost'이하 '129mall')은(는) 「개인정보 보호법」 제30조에 따라 정부주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보 처리방침을 수립·공개합니다.

○ 이 개인정보처리방침은 2021년 1월 1부터 적용됩니다.
                
제1조(개인정보의 처리 목적)
<(주)musun129>('http://localhost'이하 '129mall')은(는) 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며 이용 목적이 변경되는 겨우에는 「개인정보 보호법」 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.
1. 홈페이지 회원가입 및 관리
회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 회원자격 유지·관리, 서비스 부정이용 방지, 만14세 미만 아동의 개인정보 처리 시 법정대리인의 동의여부 확인 목적으로 개인정보를 처리합니다.
              </pre>
            </div>
            <p>
              <label>
                <strong>개인정보 수집 및 이용에 동의하십니까? </strong>
              </label>
              <span class="chk">
                <input type="checkbox" id="chk" name="agreements" class="chk" onclick="checkSelectAll();">
              </span>
            </p>
          </div>
        </div>
        <div class="dtn join_dtn">
          <input type="button" class="dtn join" value="회원가입" onclick="joinForm_check();" />
        </div>
      </div>
    </div>
    <div class="footer"></div>
  </div>
</body>

</html>