<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="../../Css/Login/findPwStyle.css" />
<title>findId</title>
</head>

<body>
    <div class="container">
        <div class="header"></div>
        <div class="left"></div>
        <div class="right"></div>
        <div class="section">
            <div class="FindContainer">
                <h2>Find PW</h2>
                <p>이름과 아이디, 휴대폰번호로 임시 비밀번호를 발급받을 수 있습니다.</p>
                <hr>
                <div class="content">
                    <div class="center">
                        <div class="find">
                            <div class="find_pw">
                                <table>
                                    <colgroup>
                                        <col style="width:120px;">
                                        <col style="width:220px;">
                                    </colgroup>
                                    <tr>
                                        <td>
                                            <p class="txt">이름</p>
                                        </td>
                                        <td><input type="text" class="member member_name"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p class="txt">아이디</p>
                                        </td>
                                        <td><input type="text" class="member member_id"></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p class="txt">핸드폰번호</p>
                                        </td>
                                        <td>
                                            <input type="text" style="width: 40px;" maxlength="3" class="mobile num1"
                                                name="member_num1" /> -
                                            <input type="text" style="width: 60px;" maxlength="4" class="mobile num2"
                                                name="member_num2" /> -
                                            <input type="text" style="width: 60px;" maxlength="4" class="mobile num3"
                                                name="member_num3" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="btn ok">
                            <input type="button" value="확인" onclick="" />
                        </div>
                    </div>
                </div>
                <hr>
            </div>
        </div>
        <div class="footer"></div>
    </div>
</body>

</html>