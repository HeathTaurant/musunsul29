<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../Css/Join/JoinOkStyle.css" />
</head>

<body>
    <div class="container">
        <div class="header"></div>
        <div class="left"></div>
        <div class="right"></div>
        <div class="section">
            <div class="FindContainer">
                <h2>회원가입 성공</h2>
                <p>저희 쇼핑몰을 이용해 주셔서 감사합니다.<br>다시 로그인해주세요</p>
                <hr>
                <div class="content">
                    <div class="center">
                        <div class="find">
                            <div class="find_id">
                                <table>
                                    <colgroup>
                                        <col style="width:100px;">
                                        <col style="width:auto;">
                                    </colgroup>
                                    <tr>
                                        <td>
                                            <p class="txt">이름</p>
                                        </td>
                                        <td><label>${memberRequest.mem_username}</label></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p class="txt">아이디</p>
                                        </td>
                                        <td><label>${memberRequest.mem_userid}</label></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="btn ok">
                            <input type="button" value="로그인하기" onclick="location.href='/Login/loginMain'" />
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