<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2023-04-26
  Time: PM 5:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        const result = '${result}';
        console.log(result);
        if (result > 0) {
            alert("회원 등록 성공!");
            location.href = "/list";
        } else {
            alert("다시 입력해주세요");
            location.href = "/sava";
        }
    </script>
</head>
<body>

</body>
</html>
