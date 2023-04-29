<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>취미 추가</title>
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
    <legend >취미 추가 페이지</legend>
    <label for="uid">취미 항목</label>
    <input type="text" name="uid" value=""><br />
    <div class="button">
    <button type="button" id="button1" onclick="check();">취미 추가</button>
  <br>  
  </div>    
  
</fieldset>
</form>
  </body>
</html>
