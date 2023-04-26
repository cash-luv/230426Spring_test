<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: PM 6:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/resources/css/style.css">
    <title>쇼핑몰회원관리</title>
</head>
<body>
<header>
    <h2>쇼핑몰회원관리 ver 1.0</h2>
</header>
<nav>
    <!-- 메뉴 영역 -->
    <div class="menu">
        <ul class="menubar">
            <li><a href="/">회원등록</a></li>
            <li><a href="/list">회원목록조회/수정</a></li>
            <li><a href="#">회원매출조회</a></li>
            <li><a href="/">홈으로</a></li>
        </ul>
    </div>
</nav>
<section id="section">
    <h3>홈쇼핑 회원등록</h3>

    <div class="container">
        <form action="/update" method="post" onsubmit="return ValidationName()" >
            <label for="custname"><b>회원성명</b> </label>
            <input type="text" name="custname" id="custname" value="${user.custname}"> <br>
            <label for="phone"><b>회원전화</b> </label>
            <input type="text" name="phone" id="phone"  value="${user.phone}"> <br>
            <label for="address"><b>주소</b></label><br>
            <input type="text" name="address" id="address" value="${user.address}"> <br>
            <label for="joindate"><b>가입일자</b></label>
            <input type="text" name="joindate" id="joindate" value="${user.joindate}"> <br>
            <label for="grade"><b>고객등급</b></label>
            <input type="text" name="grade" id="grade" value="${user.grade}"> <br>
            <label for="city"><b>거주도시</b></label>
            <input type="text" name="city" id="city" value="${user.city}"> <br>

            <input type="submit" value="수정" onclick="update_submit()">
            <input type="reset" value="취소" onclick="update_not()">


        </form>
    </div>

</section>
<footer>

    <p>HRDKOREA Copyright&copy; 2023 All rights reserved.Human Resources Development Service of Korea.</p>
</footer>

</body>
<script>
    const ValidationName = () => {
        const name = document.getElementById("custname");
        if(name.value.length == 0){
            name.focus();
            alert("회원성명이 입력되지 않았습니다")
            return false;
        }else {
            return true;
        }
    }
    const update_submit = () => {
      alert("회원정보가 수정되었습니다")
    }
    const update_not = () => {
        location.href ="/list";
    }
</script>
</html>
