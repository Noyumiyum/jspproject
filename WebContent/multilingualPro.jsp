<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--파라미터 값을 받아서 처리해준다-->
<%
//쿠키정보생성
	Cookie cookie = new Cookie("language", request.getParameter("language"));
	cookie.setMaxAge(60*60);
	/* 클라이언트 쪽으로 정보를 넘긴다 */
	response.addCookie(cookie);
	
	
%>
<script>
location.href="multilingual.jsp"
</script>