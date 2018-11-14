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
<style>
table{
    border: 1px solid skyblue;
    

}
</style>
<body>
    <center>
    <h1>나의 금고</h1>
    <hr>
    <h3>회원가입</h3>
    <table>
        <tr>
            <td>
                아이디
            </td>
            <td>
                <input >
            </td>
            <td>
                <button onclick="openPop(4)">중복확인</button>
            </td>

        </tr>

        <tr>
                <td>비밀번호</td>
                <td>
                        <input >
                    </td>

        </tr>
        <tr>
                <td>비밀번호 확인</td>
                <td>
                        <input >
                 </td>

        </tr>
        <tr>
                <td>핸드폰번호 확인</td>
                <td>
                        <input >
                 </td>
                
                 <td> (-)는 뺴고 기입하십시오 </td>

        </tr>
        <tr>
                <td>집주소</td>
                <td>
                        <input >
                 </td>

        </tr>
        <tr>
                <td>생년월일</td>
                <td>
                        <input >
                 </td>

        </tr>
        
    </table>
    <button><a href="../main/login.do">가입하기</a></button>
        
        <button><a href="../main/login.do">취소하기</a></button>
    </center>
              

        
 
        <script>
     
            //window.open() : 새창 띄우기
            function openPop (comm){
 
 switch(comm){
         //지정한 창이름에서 띄움.(지정한 창이름이 없을경우 새창을 띄움.)


         case 4:
             // 팝업 위치 조절할수있음
             console.log(screen.width, screen.height)
             var left = (screen.width - 400)/2
             var top = (screen.height - 300) / 2


             window.open(
                 "popup.do", "",
                 "width =400 ,  height = 300", `left=${left}, top=${top}`
             )
         break;
      

 }
}
    
    
    </script>






</body>
</html>




