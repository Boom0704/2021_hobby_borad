<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <script>
            window.onload = function(){
                startRecomandWindow();
            }

            function join(){
                 window.open("join.html", "회원가입", "top=100px, left=100px, height=750px, width=1000px");
            }
            function home(){
                window.open("fPMain.html","_self");        
            }
            function login(){
                window.open("login.html", "회원가입", "top=100px, left=100px, height=750px, width=1000px");
            }

            function startRecomandWindow() {
                var recomandWindow = document.getElementById('recomandWindow');
                
                var preferQuestion =document.createElement('span');
                preferQuestion.setAttribute("class", "mainQuestion");
                var textnode1 = document.createTextNode("취미를 추천해 드립니다.");
                preferQuestion.appendChild(textnode1);
                var div1 =document.createElement('div');
                div1.appendChild(preferQuestion);

                var preferOutdoor =document.createElement('button');
                preferOutdoor.setAttribute("class", "kindOfQuestion");
                var textnode2 = document.createTextNode("야외 활동을 즐기고 싶다.");
                preferOutdoor.appendChild(textnode2);
                preferOutdoor.onclick = function(){
                    resetRecomandWindow();
                    stepTwo("preferOutdoor");
                }
                var div2 =document.createElement('div');
                div2.appendChild(preferOutdoor);
                
                var preferSport =document.createElement('button');
                preferSport.setAttribute("class", "kindOfQuestion");
                var textnode3 = document.createTextNode("경쟁 스포츠를 즐기고 싶다.");
                preferSport.appendChild(textnode3);
                preferSport.onclick = function(){
                    resetRecomandWindow();
                    stepTwo("preferSport");
                }
                var div3 =document.createElement('div');
                div3.appendChild(preferSport);

                var preferMusic =document.createElement('button');
                preferMusic.setAttribute("class", "kindOfQuestion");
                var textnode4 = document.createTextNode("음악에 관련된 취미를 즐기고 싶다.");
                preferMusic.appendChild(textnode4);
                preferMusic.onclick = function(){
                    resetRecomandWindow();
                    stepTwo("preferMusic");
                }
                var div4 =document.createElement('div');
                div4.appendChild(preferMusic);

                var preferLife =document.createElement('button');
                preferLife.setAttribute("class", "kindOfQuestion");
                var textnode5 = document.createTextNode("생활과 관련된 취미를 즐기고 싶다.");
                preferLife.appendChild(textnode5);
                preferLife.onclick = function(){
                    resetRecomandWindow();
                    stepTwo("preferLife");
                }
                var div5 =document.createElement('div');
                div5.appendChild(preferLife);
            

                
                recomandWindow.appendChild(div1);            
                recomandWindow.appendChild(div2);            
                recomandWindow.appendChild(div3);            
                recomandWindow.appendChild(div4);            
                recomandWindow.appendChild(div5);
            }

            //노드 초기화
            function resetRecomandWindow() {
                var recomandWindow = document.getElementById('recomandWindow');
                while (recomandWindow.hasChildNodes()) {
                    recomandWindow.removeChild(recomandWindow.firstChild);
                }
            }

            //마지막 버튼 추가
            function stepFinalBtn() {
                var recomandWindow = document.getElementById('recomandWindow');

                var retry =document.createElement('button');
                retry.setAttribute("class", "resultBtn");
                var textnode1 = document.createTextNode("다시하기");
                retry.appendChild(textnode1);
                retry.onclick = function(){
                    resetRecomandWindow();
                    startRecomandWindow();
                }
            
                var submit =document.createElement('input');
                submit.setAttribute("class", "resultSub");
                submit.setAttribute("type", "submit");
                var textnode2 = document.createTextNode("제출하기");
                submit.appendChild(textnode2);
                submit.onclick = function(){
                    //빈텍스트
                }
                
                recomandWindow.appendChild(retry);
                recomandWindow.appendChild(submit);
            }

            //마지막 텍스트 추가
            function stepFinal(lastlist) {
                var recomandWindow = document.getElementById('recomandWindow');

                if(lastlist=="preferSpecial"){
                    var textnode1 = document.createTextNode("암벽등반, 캠핑, 승마, 골프, 클레이사격, 서바이벌");
                }else if(lastlist=="preferFriendly"){
                    var textnode1 = document.createTextNode("암벽등반, 캠핑, 낚시, 등산");
                }else if(lastlist=="preferCompetitive"){
                    var textnode1 = document.createTextNode("볼링, 야구, 축구, 농구");
                }else if(lastlist=="preferOneOnOne"){
                    var textnode1 = document.createTextNode("테니스, 검도, 당구, 복싱, 농구, 스케이트");
                }else if(lastlist=="preferCooperation"){
                    var textnode1 = document.createTextNode("바이올린, 피아노, 색소폰, 노래, 클래식감상, 가야금, 합창");
                }else if(lastlist=="preferAlone"){
                    var textnode1 = document.createTextNode("기타, 드럼, 피아노, 노래");
                }else if(lastlist=="preferNoMoney"){
                    var textnode1 = document.createTextNode("애니메이션, 게임, 만화, 영화, 사진, 독서, 다도, 서예, 드라이브, 요리, 바둑, 시창작, 소설창작, 도예, 종이접기, 프로그래밍");
                }else if(lastlist=="preferImprovement"){
                    var textnode1 = document.createTextNode("사진, 독서, 다도, 서예, 요리");
                }else if(lastlist=="preferCreate"){
                    var textnode1 = document.createTextNode("사진, 요리, 소설창작, 시창작, 도예, 종이접기, 프로그래밍");
                }

                var lastRecomand =document.createElement('span');
                lastRecomand.setAttribute("class", "result");
                lastRecomand.appendChild(textnode1);
                var div1 =document.createElement('div');
                div1.appendChild(lastRecomand);
                recomandWindow.appendChild(div1);
                stepFinalBtn();
            }

            function stepTwo(kindRecomand) {
                var recomandWindow = document.getElementById('recomandWindow');
                if(kindRecomand=="preferOutdoor"){
                    var preferSpecial =document.createElement('button');
                    preferSpecial.setAttribute("class", "kindOfQuestion");
                    var textnode1 = document.createTextNode("특별한 취미를 즐기고 싶다.");
                    preferSpecial.appendChild(textnode1);
                    preferSpecial.onclick = function(){
                        resetRecomandWindow();
                        stepFinal("preferSpecial");
                    }
                    var div1 =document.createElement('div');
                    div1.appendChild(preferSpecial);

                    var preferFriendly =document.createElement('button');
                    preferFriendly.setAttribute("class", "kindOfQuestion");
                    var textnode2 = document.createTextNode("친근한 취미를 즐기고 싶다.");
                    preferFriendly.appendChild(textnode2);
                    preferFriendly.onclick = function(){
                        resetRecomandWindow();
                        stepFinal("preferFriendly");
                    }
                    var div2 =document.createElement('div');
                    div2.appendChild(preferFriendly);
      
                    recomandWindow.appendChild(div1);            
                    recomandWindow.appendChild(div2);    

                }else if(kindRecomand=="preferSport"){
                    var preferCompetitive = document.createElement('button');
                    preferCompetitive.setAttribute("class", "kindOfQuestion");
                    var textnode1 = document.createTextNode("함께하는 경쟁을 즐긴다.");
                    preferCompetitive.appendChild(textnode1);
                    preferCompetitive.onclick = function(){
                        resetRecomandWindow();
                        stepFinal("preferCompetitive");
                    }
                    var div1 =document.createElement('div');
                    div1.appendChild(preferCompetitive);

                    var preferOneOnOne =document.createElement('button');
                    preferOneOnOne.setAttribute("class", "kindOfQuestion");
                    var textnode2 = document.createTextNode("소규모 인원과 하는 경쟁을 즐긴다.");
                    preferOneOnOne.appendChild(textnode2);
                    preferOneOnOne.onclick = function(){
                        resetRecomandWindow();
                        stepFinal("preferOneOnOne");
                    }    
                    var div2 =document.createElement('div');
                    div2.appendChild(preferOneOnOne);

                    recomandWindow.appendChild(div1);            
                    recomandWindow.appendChild(div2);       
                    
                }else if(kindRecomand=="preferMusic"){
                    var preferCooperation =document.createElement('button');
                    preferCooperation.setAttribute("class", "kindOfQuestion");
                    var textnode1 = document.createTextNode("사람들과 함께하고 싶다.");
                    preferCooperation.appendChild(textnode1);
                    preferCooperation.onclick = function(){
                        resetRecomandWindow();
                        stepFinal("preferCooperation");
                    }
                    var div1 =document.createElement('div');
                    div1.appendChild(preferCooperation);

                    var preferAlone =document.createElement('button');
                    preferAlone.setAttribute("class", "kindOfQuestion");
                    var textnode2 = document.createTextNode("혼자하고 싶다.");
                    preferAlone.appendChild(textnode2);
                    preferAlone.onclick = function(){
                        resetRecomandWindow();
                        stepFinal("preferAlone");
                    }
                    var div2 =document.createElement('div');
                    div2.appendChild(preferAlone);

                    recomandWindow.appendChild(div1);            
                    recomandWindow.appendChild(div2);   
                    
                }else if(kindRecomand=="preferLife"){
                    var preferNoMoney =document.createElement('button');
                    preferNoMoney.setAttribute("class", "kindOfQuestion");
                    var textnode1 = document.createTextNode("자금의 여유가 없다.");
                    preferNoMoney.appendChild(textnode1);
                    preferNoMoney.onclick = function(){
                        resetRecomandWindow();
                        stepFinal("preferNoMoney");
                    }
                    var div1 =document.createElement('div');
                    div1.appendChild(preferNoMoney);

                    var preferImprovement =document.createElement('button');
                    preferImprovement.setAttribute("class", "kindOfQuestion");
                    var textnode2 = document.createTextNode("생활에 도움이 되는 취미를 원한다.");
                    preferImprovement.appendChild(textnode2);
                    preferImprovement.onclick = function(){
                        resetRecomandWindow();
                        stepFinal("preferImprovement");
                    }
                    var div2 =document.createElement('div');
                    div2.appendChild(preferImprovement);

                    var preferCreate =document.createElement('button');
                    preferCreate.setAttribute("class", "kindOfQuestion");
                    var textnode3 = document.createTextNode("창작활동을 하고싶다.");
                    preferCreate.appendChild(textnode3);
                    preferCreate.onclick = function(){
                        resetRecomandWindow();
                        stepFinal("preferCreate");
                    }
                    var div3 =document.createElement('div');
                    div3.appendChild(preferCreate);

                    recomandWindow.appendChild(div1);            
                    recomandWindow.appendChild(div2);            
                    recomandWindow.appendChild(div3);     
                }
            }
            
        </script>
        
        <link rel="stylesheet" href="fpRecomand_css.css">
        <title>취미 추천</title>
    </head>

    <body>
        <% 
            request.setCharacterEncoding("UTF-8");
        %>
        <!-- 헤더파트 (공통) -->
        <header class="header">
            <div class="mainTitleBG">
                <div class="mainTitle">
                    Hobby Community
                </div>
            </div>
            <div class="Mainmenu">
                <ul>
                    <li onclick="location.href='fpMain.html'">홈</li>
                    <li onclick="location.href='fpCumunity.html'">커뮤니티</li>
                    <li onclick="location.href='fpRecomand.html'">나에게 맞는 취미 추천</li>
                    <li onclick="location.href='fpClass.html'">클래스</li>
                    <li>문의사항
                        <ul>
                            <li onclick="location.href='fpOpenClass.html'">취미 관련클래스 개설 문의</li>
                            <li onclick="location.href='fpOtherQuestions.html'">기타 다른 사항 문의</li>
                        </ul>
                    </li>
                </ul>
            </div>
        </header>
        <!-- 헤더파트 (공통) -->

        <div class="bodypart">
            <!-- 어사이드 -->
            <aside class="leftside">
                <div>
                    <ul class="upside">
                    <li><button onclick="home()"><span>HOME</span></button></li>
                    <li><button type="button" onclick="login()" value="로그인">로그인</button></li>
                    <li><button type="button" onclick="join()" value="회원가입">회원가입</button></li>
                    </ul>
                </div>
            </aside>

            <section class="recomandSpace">
                <form class="recomandWindow" id="recomandWindow">

                </form>
            </section>
        </div>
    </body>
</html>