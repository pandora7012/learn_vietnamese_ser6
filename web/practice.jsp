<%@include file="includes/header.jsp" %>
<link rel="stylesheet" href="./assets/css/practice_st.css">
</head>
<body>
    <div class="wrapper">
        <%@include file="includes/navbar.jsp" %>
        <div class="content">
            <div class="question-number">
                <ul class="list-question">
                    <li class="question--item"><a href="#" onclick="GetThemeInfo(this.value)">Theme 1</a></li>
                    <li class="question--item"><a href="#" onclick="GetThemeInfo(this.value)">Theme 2</a></li>
                    <li class="question--item"><a href="#" onclick="GetThemeInfo(this.value)">Theme 3</a></li>
                </ul>
            </div>
            <div class="practice_block" dir="auto">
                <div class="question_block" dir="auto">
                    <div class="question" dir="auto"><span class="question_content" id="question_content">Đây là câu hỏi !!! </span></div>
                </div>
                <div class="content-question">
                    <div class="time-running">
                        <span id="timer">10s</span>
                    </div>
                    <div class="question_image_contain" , dir="auto">
                        <img class="question_img" src="./assets/images/c.jpg" alt="image">
                    </div>
                    <div class="score" id='score'>
                        <span>14</span>
                    </div>
                </div>
                <div class="answer_contain">
                    <button class="answer_button1" role="button" id="buttonA" onclick="CheckAnswer(id)"> A </button>
                    <button class="answer_button2" role="button" id="buttonB" onclick="CheckAnswer(id)"> B </button>
                    <button class="answer_button3" role="button" id="buttonC" onclick="CheckAnswer(id)"> C </button>
                    <button class="answer_button4" role="button" id="buttonD" onclick="CheckAnswer(id)"> D </button>
                </div>
                <script src='./assets/js/practice_js.js'></script>
            </div>
        </div>
        <footer>
            <div class="footer-top">
                <div class="container">
                </div>
            </div>
            <div class="footer-bottom">
                <div class="container">
                    <div class="text-copyright">
                        Nhóm 2 - D19 - Khoa Công nghệ thông tin - Học viện Công nghệ Bưu chính viễn thông
                    </div>
                </div>
            </div>
        </footer>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    </div>
</body>

</html>