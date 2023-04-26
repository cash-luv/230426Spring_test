<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: PM 1:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">--%>
    <link rel="stylesheet" href="/resources/css/style.css">
    <title>쇼핑몰회원관리</title>
</head>
<body>
<header>
    <h2>쇼핑몰회원관리 ver 1.0</h2>
</header>
<nav>
    <div class="menu">
        <ul class="menubar">
            <li><a href="/save">회원등록</a></li>
            <li><a href="/">회원목록조회/수정</a></li>
            <li><a href="#">회원매출조회</a></li>
            <li><a href="/">홈으로</a></li>
        </ul>
    </div>
</nav>
<section id="section">
    <h3>홈쇼핑 회원등록</h3>
    <br>
    <table id="table" class="table">
        <tr>
            <th>회원번호</th>
            <th>회원성명</th>
            <th>연락처</th>
            <th>주소</th>
            <th>가입일자</th>
            <th>고객등급</th>
            <th>거주지역</th>
            <th>수정</th>
            <th>삭제</th>
        </tr>

        <c:forEach items="${userDTOList}" var="user">
            <tr>
                <td>${user.custno}</td>
                <td>${user.custname}</td>
                <td>${user.phone}</td>
                <td>${user.address}</td>
                <td>${user.joindate}</td>
                <td>${user.grade}</td>
                <td>${user.city}</td>

                <td>
                    <button onclick="update_user('${user.custno}')">수정</button>
                </td>
                <td>
                    <button onclick="delete_user('${user.custno}')">삭제</button>
                </td>
            </tr>

        </c:forEach>

    </table>
</section>

<footer>

    <p>HRDKOREA Copyright&copy; 2023 All rights reserved.Human Resources Development Service of Korea.</p>
</footer>
</body>
<script>
    const update_user = (custno) => {
        location.href = "/update?custno=" + custno;
    }
    const delete_user = (custno) => {
        location.href = "/delete?custno=" + custno;
    }
</script>
</html>
