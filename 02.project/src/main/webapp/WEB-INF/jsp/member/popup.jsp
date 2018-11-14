<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>
    
        <h2>중복확인</h2>
        <hr>
        사용가능한 아이디 입니다.<br>
        <input type ="text" id ="msg"/>
        <button onclick="doClose()">닫기</button>

    <script>
    function doClose(){
            //부모창에 있는 id가 result 인 div를 
    opener.doResult(
        
        document.querySelector("#msg").value
    )
        self.close()
    }
    
    </script>


</body>
</html>