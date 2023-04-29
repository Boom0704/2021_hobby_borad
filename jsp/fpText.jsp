<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="urf-8" />
        <title>취미 메인</title>
        <link rel="stylesheet" href="fpInquiriesNewHobby_css.css">

        <script>
            function join(){
                 window.open("join.html", "회원가입", "top=100px, left=100px, height=750px, width=1000px");
            }
            function home(){
                window.open("","_self");        
            }
            function login(){
                window.open("login.html", "회원가입", "top=100px, left=100px, height=750px, width=1000px");
            }
        </script>
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
            <section class="inquiries">
                <table class="inquiriesTable">
                    <thead>
                        <tr>
                            <th width="100px">글 번호</th>
                            <th width="1300px">제목</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>작성자</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>글 내용</td>
                            <td width="1400px" height="500px"><p class="num">글 내용</p></td>
                        </tr>
                        <tr>
                            <td colspan="2" width="1400px" >
                                <div class="likeSpace"><input type="button" class="like"><span class="likenNum">2</span></div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </section>
        </div>
    </body>
</html>