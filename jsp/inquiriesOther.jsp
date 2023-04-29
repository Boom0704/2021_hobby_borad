<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>기타 다른 문의</title>
    <style>
    #button1{
      background: skyblue;
      font-size:20px;
      font-weight:bold;
      color:#000000;
      text-align:center;
      border:solid 1px #99E000;
      background: -moz-linear-gradient(0%, 100%, 90deg, #75BC00, #ffffff);
      background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#ffffff), to(blue));
      border-radius:5px;
      -moz-border-radius:5px;
      -webkit-border-radius:5px;
      padding: 0px 0px 0px 0px;
    }
    
    div.button{
      float: right;
      width: 50%;
      padding: 30px;
    }
    div.button input{
      padding: 10px;
      width: 100%;
      font-size: 18px;
      }
    body{
      height: 100%;
      background-color: #F3F1E9;
    }
    label{
      
      width: 100px;
      color: green;
      font-weight: bold;
      text-align: right;
      padding : 20px 0px 5px 530px;
    }
    input{
      display: inline-block;
      width: 120px;
    }
    fieldset{
      color: #beaed4;
      padding: 40px;
    }
    legend{
      color: green;
      font-weight:bold;
      align:center;
    }
</style>
  </head>
  <script type="text/javascript">
  </script>
  <body>
    <% 
      request.setCharacterEncoding("UTF-8");
    %>
<form name="form1" method="post" action="home2.jsp">
<fieldset>
    <legend>기타 다른 문의</legend>
    <table>
      <tr>
        <td><span>게시글 제목 : </span></td>
        <td><input type=text name=title id="title"></td>
      </tr>
      <tr>
        <td colspan="2"><select name="typeOfInquiry." id="typeOfInquiry">
          <option value="">ㅤ--Please choose an option--ㅤ</option>
          <option value="dog">새로운 취미 영역 추가</option>
          <option value="cat">이용자 관련 문의</option>
          <option value="hamster">클래스 관련 문의</option>
          <option value="parrot">칼럼 관련 문의</option>
          <option value="spider">기타 사항 문의</option>
        </select></td>
      </tr>
      <tr>
        <td><span>문의 내용 : </span></td>
        <td><textarea cols="40" rows="10" name=reason id="reason"></textarea></td>
      </tr>
    </table>
    
    <button type="button" id="button1" onclick="check();">제출</button>
</fieldset>
</form>
  </body>
</html>