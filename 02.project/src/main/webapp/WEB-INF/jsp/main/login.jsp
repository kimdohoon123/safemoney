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
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.2/css/bootstrap.min.css">
    
</head>
<style>
@import "bourbon";

body {
	background: #eee !important;	
}

.wrapper {	
	margin-top: 80px;
  margin-bottom: 80px;
}

.form-signin {
  max-width: 380px;
  padding: 15px 35px 45px;
  margin: 0 auto;
  background-color: #fff;
	
  border: 1px solid rgba(0,0,0,0.1);  

  .form-signin-heading,
	.checkbox {
	  margin-bottom: 30px;
	}

	.checkbox {
	  font-weight: normal;
	}

	.form-control {
	  position: relative;
	  font-size: 16px;
	  height: auto;
	  padding: 10px;
		@include box-sizing(border-box);

		:focus {
		  z-index: 2;
		}
	}

	input[type="text"] {
	  margin-bottom: -1px;
	  border-bottom-left-radius: 0;
	  border-bottom-right-radius: 0;
	}

	input[type="password"] {
	  margin-bottom: 20px;
	  border-top-left-radius: 0;
	  border-top-right-radius: 0;
	}
}

</style>
<body>
    
	


	
	<div class="wrapper">
		<form class="form-signin" action="<c:url value='/login/login.do' />" method="post">       
				<img src="<c:url value="/images/금고.jpg"/>" width="330px" height="330px"/> 
					<h2 class="form-signin-heading">로그인 해주세요.</h2>
          <input type="text" class="form-control" name="userid" placeholder="User ID" required="dd" autofocus="" />
          <input type="password" class="form-control" name="password" placeholder="Password" required="dd"/>      
          <label class="checkbox">
						<input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> 기억하기
          </label>
          <button> 로그인 </button>   
          
          <button type="button"><a href="../member/member.do">회원가입 </a></button>  
   
        </form>
		
      </div>
</body>
</html>