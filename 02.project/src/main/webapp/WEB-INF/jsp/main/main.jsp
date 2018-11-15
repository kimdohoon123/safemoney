<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ page import="" %> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<!-- 
	Ajax를 구성하는 기술들...
	-CSS, Javascript, DOM, XMLHttpRequest
 -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous">
	
</script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style>
* {
	margin: 0px;
	padding: 0px;
}

.container {
	width: 1024px;
	/* margin: auto; */
}

#part {
	float: left;
	margin: 0%;
	width: 220px;
	font-size: 30px;
	font-style: normal;
	color: black;
	position: relative;
	/* left: 1px; */
	top: 0%;
}

#part>div {
	border: 2px solid rgb(47, 226, 202)
}

#main {
	width: 760px;
	float: right;
	font-size: 20px;
	font-style: normal;
	color: black;
}

#total {
	font-size: 50px;
	border: 5px solid rgb(255, 208, 0);
}

#part>div:hover {
	border: 3px solid rgb(255, 208, 0);
}

#content {
	width: 38%;
}

#register {
	width: 650px;
}

td {
	border: 2px solid rgb(47, 226, 202);
}

.w170 {
	width: 150px;
}

table {
	margin-bottom: 10px;
	width: 764px;
}

#inputtb>tbody>tr>td:first-child {
	padding: 0px 10px;
}

#out {
	float: right;
}
</style>
</head>
<body>
	<center>
		<h1>나의 금고현황</h1>
	</center>
	<button id="out">
		<a href="login.do">로그아웃</a>
	</button>
	<br>
	<hr>
	<div class="container">
		<div id="part">

			<div>

				<a href="plus.do">수입</a>

			</div>
			<div>
				<a href="minus.do">지출</a>
			</div>
			<div id="total">
				<a href=#>종합</a>
			</div>


		</div>
		<div id="main">

			<div id="content">전체거래내역</div>

			<table id="inputtb">
				<tr>

					<td><input id="t" type="checkbox" name="all" value="10" /></td>
					<td class="w170">분류</td>
					<td class="w170">날짜</td>
					<td class="w170">이름</td>
					<td class="w170">금액</td>
					<td class="w170">내용</td>
				</tr>
				<tr>

					<c:forEach var="a" items="${main}">
						<tr>
							<td>${a.kind}</td>
							<td><fmt:formatDate value="${a.regDate}"
									pattern="yyyy-MM-dd" /></td>
							<td>${a.name}</td>
							<td>${a.coast}</td>
							<td>${a.content}</td>
							<%-- 	<td><a href='<c:url value="/m/redetailmsg.j?idNo=${a.idNo}"/>'>${a.title}</a></td> --%>
						</tr>
					</c:forEach>
					<!-- <td> <input id ="t" type="checkbox" name="all" value="10" /></td>
						<td>지출</td>
						<td>18/11/2</td>
						<td>김도훈</td>
						<td>50,000</td>
						<td>축의금</td>
					</tr>
					<tr>
							<td> <input id ="t" type="checkbox" name="all" value="10" /></td>
							<td>지출</td>
							<td>18/11/3</td>
							<td>김병관</td>
							<td>50,000</td>
							<td>축의금</td>
						</tr>
					<tr>
						<td> <input id ="t" type="checkbox" name="all" value="10"  /></td>
						<td>수입</td>
						<td>18/11/4</td>
						<td>김도훈</td>
						<td>50,000</td>
						<td>축의금</td>
					</tr>
			
					<tr>
						<td> <input id ="t" type="checkbox" name="all" value="10"  /></td>
						<td>수입</td>
						<td>18/11/5</td>
						<td>최창유</td>
						<td>50,000</td>
						<td>축의금</td> -->
				</tr>


			</table>

			<table>
				<tr>

					<td>분류</td>
					<td>날짜</td>
					<td>이름</td>
					<td>금액</td>
					<td>내용</td>
				</tr>
				<tr>
					<form action="writeform.do" parameter="String">

						<td><input type="text" class="w170" /></td>
						<td><input type="text" class="w170" /></td>
						<td><input type="text" class="w170" /></td>
						<td><input type="text" class="w170" /></td>
						<td><input type="text" class="w170" /></td>

						<td><button>저장</button></td>
					</form>
				</tr>
			</table>

		</div>
	</div>

	<!-- 	<script>
		$(function(){
			getAjaxList()
		
		})
		
		function getAjaxList(){
			var xhr = new XMLHttpRequest()
			xhr.onreadystatechange = function(){
				if(xhr.readyState == 4){
					if(xhr.status == 200){
						//서버에서 전송해준 게시물 목록 데이터를 #list 인 div의 innerHTML을
						//변경처리한다.
						alert("서버의 응답이 정상적으로 처리되었습니다.")
						console.log(xhr.responseText)
						
					var list =JSON.parse(xhr.responseText)
					var html = "<table class='table'>"
								+"<tr>"
								+"<th>번호</th><th>제목</th><th>글쓴이</th>"
								+"</tr>"
						for(let b of list){
							html +=  "<tr>"
							html += <td>${b.no}</td>
									 <td><a href='#1' onclick='getAjaxDetail(${b.no})'>${b.title}</a></td>
									 <td>${b.writer}</td>`
							html += "</tr>"
						}
							html += "</table>"
							$("#list").html(html)
					}
				}
				
			}
			xhr.open("GET","/10_ajax/ajax/list",true);
			xhr.send();
		}
		function getAjaxDetail (no){
//			alert(no)
			var xhr = new XMLHttpRequest()
			xhr.onreadystatechange = function(){
				if(xhr.readyState ==4){
					if(xhr.status ==200){
//						alert("상세내용을 아이디가 detail DIV에 표시한다.");
//						console.log(xhr.responseText)
						var board = JSON.parse(xhr.responseText)
						$("#detail").html(
								`<div>번호: ${board.no}</div>
									<div>작성자: ${board.writer}</div>
									<div>제목: ${board.title}</div>`
							);
						}
				}
			}
		xhr.open("GET", "/10_ajax/ajax/detail?no="+no,true);
		xhr.send();
		}
		
		
	</script> -->

</body>
</html>