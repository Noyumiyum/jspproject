<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 회원 가입 </title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
   label {
      width:165px;
      display: inline-block;
      float: left;
   }
   div {
      text-align:center;
      margin:5px;
      padding-right: 60%;
   }
   
</style>
<script>
   function check_ok() {
      if($("name").val() == "") {
         alert("이름을 작성해주세요");
         $("#name").focus();
         return false;
      }
/*       if($("jumin_1").val() != 6) {
         alert("주민번호 앞자리를 작성해주세요");
         $("#jumin_1").focus();
         return false;
      }
      if($("jumin_2").val() != 7) {
         alert("주민번호 뒷자리를 작성해주세요");
         $("#jumin_2").focus();
         return false;
      }
      if($("id").val() == "") {
         alert("아이디를 작성해주세요");
         $("#id").focus();
         return false;
      }
      if($("id").val() <= 4) {
         alert("아이디는 4글자 이상입니다.");
         $("#id").focus();
         return false;
      }
      if($("pwd").val() == "") {
         alert("비밀번호는 반드시 입력하세요.");
         $("#pwd").focus();
         return false;
      }
      if($("pwd").val() != $("pwd_re").val()) {
         alert("비밀번호가 일치하지 않습니다.");
         $("#pwd_re").focus();
         return false;
      } */
   }
</script> 
<script type="text/javascript"  src="join.js"></script>
</head>
<body>
<form onsubmit="return check_ok()" name="frm" action="JoinServlet">
   <label for="name"> 이름 </label>
   <input type="text" id="name" name="name" value="성윤정"> <br>
  
   <label for="jumin">주민등록번호  </label>
   <input type="text" id="jumin_1" name="jumin_1" value="890719"> - 
   <input type="password" id="jumin_2" name="jumin_2" value="2012123"> <br>
   
   <label for="id"> 아이디  </label>
   <input type="text" id="id" name="id" value="pinksung"><br>
    
    <label for="pwd"> 비밀번호 </label> 
    <input type="password" id="pwd" name="pwd" value="1234"><br>
    
    <label for="pwd_re"> 비밀번호 확인  </label>
    <input type="password" id="pwd_re" name="pwd_re" value="1234"><br>
    
    <label for="email">이메일 </label>
    <input type="text" name="email" value="pinksung"> @ 
    <input type="text" name="email_dns" value="" placeholder="nate.com">
    <select name="emailaddr">
        <option value="">직접입력</option>
        <option value="nate.com" selected="selected">nate.com</option>                
        <option value="daum.net">daum.net</option>
        <option value="empal.com">empal.com</option>
        <option value="gmail.com">gmail.com</option>
        <option value="hanmail.net">hanmail.net</option>
        <option value="msn.com">msn.com</option>
        <option value="naver.com">naver.com</option>
    </select><br>    
    
    <label for="zip">우편번호</label>
    <input type="text" id="zip" name="zip" value="321-212"><br>
           
    <label for="addr1">주소</label>
    <input type="text" id="addr1" name="addr1"  value="서울시 송파구 잠실2동">
    <input type="text" name="addr2" value=" 엘스 아파트 201동 1203호"><br>
    
    <label for="phone">핸드폰번호</label>
    <input type="tel" id="phone" name="phone" value="010-2321-2312"><br>
    
    <label for="job">직업</label>
    <select id="job" name="job" size="4">  
       <option value="학생">학생</option> 
       <option value="컴퓨터/인터넷">컴퓨터/인터넷</option> 
       <option value="언론">언론</option> 
       <option value="공무원" selected="selected">공무원</option> 
       <option value="군인">군인</option> 
       <option value="서비스업">서비스업</option> 
       <option value="교육">교육</option> 
    </select><br>
    
    <label for="chk_mail">메일/SMS 정보 수신</label>
    <input type="radio" id="chk_mail" name="chk_mail" value="on" checked> 수신 
    <input type="radio" id="chk_mail" name="chk_mail" value="off"> 수신거부<br>

    <label for="interest">관심분야</label>
      <input type="checkbox" id="interest" name="interest" value="생두"> 생두         
      <input type="checkbox" id="interest" name="interest" value="원두" checked> 원두         
      <input type="checkbox" id="interest" name="interest" value="로스팅"> 로스팅         
      <input type="checkbox" id="interest" name="interest" value="핸드드립" checked> 핸드드립         
      <input type="checkbox" id="interest" name="interest" value="에스프레소" checked> 에스프레소         
      <input type="checkbox" id="interest" name="interest" value="창업"> 창업<br><br>
    
    <div>
        <input type="submit" value="회원가입">
       <input type="reset" value="취소">
       <!--  onclick="return check_ok()" -->   
    </div>
 
</form>
</body>
</html>