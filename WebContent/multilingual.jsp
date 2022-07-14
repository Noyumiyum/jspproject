<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%
  //쿠키를 읽어온다
  	String language = "korea";
  	request.getHeader("Cookie"); //매개변수값전달 Cookie는 대문자
  	String cookie = request.getHeader("Cookie");
  	
  	if(cookie != null){
  		//배열을 통해 속성과 값의 형태로 저장된것을 가져온다
  		Cookie cookies[] = request.getCookies();
  		
  		for(int i=0;i<cookies.length;i++){
  			if(cookies[i].getName().equals("language")){
  				//new cookie(get, value)
  				language = cookies[i].getValue();
  			}
  		}
  	}
  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%if(language.equals("korea")){ %>
<h3>안녕하세요. 이것은 쿠키 예제입니다.</h3>
<%}else if(language.equals("english")){ %>
<h3>Hello.This is Cookie example.Cookies are delicious. What is your favorite cookie?</h3>
<%}else if(language.equals("spanish")){ %>
<h3>C'est des cookies.J'ai un kiku. Quel est ton cookie préféré ?</h3>
<%}else{ %>
<h3>Bonjour. Voici un exemple de cookie.Las galletas están deliciosas. - Sí.</h3>
<%} %>

<form method="post" action="multilingualPro.jsp">
	<input type="radio" name="language" value="korea" <%if(language.equals("korea")){%>checked<%} %>>한국어 페이지 보기<br>
	<input type="radio" name="language" value="english"<%if(language.equals("english")){%>checked<%} %>>영어 페이지 보기<br>
	<input type="radio" name="language" value="spanish"<%if(language.equals("spanish")){%>checked<%} %>>스페인어 페이지 보기<br>
	<input type="radio" name="language" value="french"<%if(language.equals("french")){%>checked<%} %>>프랑스어 페이지 보기<br>
	<input type="submit" value="설정">
</form>
</body>
</html>