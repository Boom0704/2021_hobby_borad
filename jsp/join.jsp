<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>회원가입페이지</title>
    <style>
    body{
      background-color: #F3F1E9;
    }
  label{
    display: inline-block;
    width: 120px;
    color: green;
    font-weight: bold;
    text-align: right;
    padding: 10px 0px 0px 10px;
  }
  #b{
  display: inline-block;
  width: 120px;
  color: green;
  font-weight: bold;
  }
  #a{
  text-align: center;
  text-weight: bold;
  padding: 150px;
  }
  #c{
  text-weight: bold;
  color: green;
  }
  #button1{
  background: green;
  padding: 50px;
  font-size:10px;
  font-weight:bold;
  color:#000000;
  text-align:center;
  border:solid 1px #99E000;
  background: -moz-linear-gradient(0%, 100%, 90deg, #75BC00, #ffffff);
  background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#ffffff), to(blue));
  border-radius:5px;
  -moz-border-radius:5px;
  -webkit-border-radius:5px;
  }
</style>
  </head>
  <script type="text/javascript">
  function check(){
	  if (document.form1.uid.value==""){
		  alert("아이디를 입력하세요.");
		  document.form1.uid.focus();
		  return false;
	  }
	  if (document.form1.pw.value==""){
		  alert("비밀번호를 입력하세요");
		  document.form1.pw.focus();
		  return false;
	  }
	  if (document.form1.uname.value==""){
		  alert("이름을 입력하세요");
		  document.form1.uname.focus();
		  return false;
	  }
	  if (document.form1.addr.value==""){
		  alert("주소를 입력하세요");
		  document.form1.addr.focus();
		  return false;
	  }	 
      document.form1.submit();		  
  }</script>
  <body>
    <% 
      request.setCharacterEncoding("UTF-8");
    %>
  <form name="form1" method="post" action="join_ok.jsp">
  <div id="a">
  <section>
    <fieldset>
    <legend style="color:green; font-weight:bold";>회원가입 페이지</legend>
    <label for="uid">아이디:</label>
    <div id="b">
      <input type="text" name="uid" style="width: 150px;" >
    </div><br />
    <label for="pw">비밀번호:</label>
    <div id="b">
      <input type="password" name="pw" style="width: 150px;"><br />
    </div><br />
    <label for="uname">이름:</label>
    <div id="b">
      <input type="text" name="uname" style="width: 150px;"><br>
    </div><br />
    <label for="addr">주소:</label>
    <div id="b">
      <input type="text" name="addr" style="width: 150px;"><br>
    </div><br />
    <label for="hp1">휴대폰 번호  : </label>
      <select name="hp1" class="sel" aria-label="번호">
    <option>번호</option>
    <option value="010">010</option>
    <option value="010">011</option>
    <option value="010">016</option>
    </select>
     -<input type="text" name="hp2" style="width: 45px;">-<input type="text" name="hp3" style="width: 45px;">
     <br>
    <label for="gender">성별:</label>
    남성:<input type="radio" name="gender" value="1" />
    여성:<input type="radio" name="gender" value="2" /><br />
    <label for="year">생년월일:</label><select name="byear" class="sel" aria-label="년">
    <option>년</option>
                          <option value="1960"> 1960</option>
                          <option value="1961"> 1961</option>
                          <option value="1962"> 1962</option>
                          <option value="1963"> 1963</option>
                          <option value="1964"> 1964</option>
                          <option value="1965"> 1965</option>
                          <option value="1966"> 1966</option>
                          <option value="1967"> 1967</option>
                          <option value="1968"> 1968</option>
                          <option value="1969"> 1969</option>
                          <option value="1970"> 1970</option>
                          <option value="1971"> 1971</option>
                          <option value="1972"> 1972</option>
                          <option value="1973"> 1973</option>
                          <option value="1974"> 1974</option>
                          <option value="1975"> 1975</option>
                          <option value="1976"> 1976</option>
                          <option value="1977"> 1977</option>
                          <option value="1978"> 1978</option>
                          <option value="1979"> 1979</option>
                          <option value="1980"> 1980</option>
                          <option value="1981"> 1981</option>
                          <option value="1982"> 1982</option>
                          <option value="1983"> 1983</option>
                          <option value="1984"> 1984</option>
                          <option value="1985"> 1985</option>
                          <option value="1986"> 1986</option>
                          <option value="1987"> 1987</option>
                          <option value="1988"> 1988</option>
                          <option value="1989"> 1989</option>
                          <option value="1990"> 1990</option>
                          <option value="1991"> 1991</option>
                          <option value="1992"> 1992</option>
                          <option value="1993"> 1993</option>
                          <option value="1994"> 1994</option>
                          <option value="1995"> 1995</option>
                          <option value="1996"> 1996</option>
                          <option value="1997"> 1997</option>
                          <option value="1998"> 1998</option>
                          <option value="1999"> 1999</option>
                          <option value="2000"> 2000</option>
                      </select>
                      <select name="bmonth" class="sel" aria-label="월">
                      <option>월</option>
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                      <option value="5">5</option>
                      <option value="6">6</option>
                      <option value="7">7</option>
                      <option value="8">8</option>
                      <option value="9">9</option>
                      <option value="10">10</option>
                      <option value="11">11</option>
                      <option value="12">12</option>
                      </select>
      <select name="bdate" class="sel" aria-label="일">
                   <option>일</option>
                          <option value="01"> 01</option>
                          <option value="02"> 02</option>
                          <option value="03"> 03</option>
                          <option value="04"> 04</option>
                          <option value="05"> 05</option>
                          <option value="06"> 06</option>
                          <option value="07"> 07</option>
                          <option value="08"> 08</option>
                          <option value="09"> 09</option>
                          <option value="10"> 10</option>
                          <option value="11"> 11</option>
                          <option value="12"> 12</option>
                          <option value="13"> 13</option>
                          <option value="14"> 14</option>
                          <option value="15"> 15</option>
                          <option value="16"> 16</option>
                          <option value="17"> 17</option>
                          <option value="18"> 18</option>
                          <option value="19"> 19</option>
                          <option value="20"> 20</option>
                          <option value="21"> 21</option>
                          <option value="22"> 22</option>
                          <option value="23"> 23</option>
                          <option value="24"> 24</option>
                          <option value="25"> 25</option>
                          <option value="26"> 26</option>
                          <option value="27"> 27</option>
                          <option value="28"> 28</option>
                          <option value="29"> 29</option>
                          <option value="30"> 30</option> 
                          <option value="31"> 31</option>
                      </select> <br />
                        <label for="email">이메일 :</label>
                      <div id="b">
                          <input type="text" name="email">
                            </div>
                            <br>
                            <div id="b">
                      직업 :<select name="job">
                      <option value="1">군인</option>
                      <option value="2">학생</option>
                      <option value="3">선생님</option>
                      <option value="4">기타</option>
                      <option value="5">자영업</option>
                      </select><br>
                      </div>
                      <br>
    <input type="button" id="button1" style="cursor:pointer" value="취소" onclick="location.href=''">
    <input  type="button" id="button1" onclick="check();" style="cursor:pointer" value="회원가입" onclick="location.href('')">
</fieldset>
</div>
</form>
</section>
</body>
</html>
