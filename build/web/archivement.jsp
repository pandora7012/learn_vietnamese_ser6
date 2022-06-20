<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="includes/header.jsp" %>
<link rel="stylesheet" href="./css/style.css">
</head>
<body>
    <%@include file="includes/navbar.jsp" %>
    <section class="content">
        <H3 class="section-heading">Bảng thành tích</H3>
        <div class="title">
            <ul class="nav1 nav-tabs">
                <li>
                    <h3>Tên thành viên</h3>
                </li>
                <li>
                    <h3>Số điểm</h3>
                </li>
            </ul>
        </div>
        <% 
            User user = (User)session.getAttribute("user");
        %>
        <div class="detail-infor">
            <ul class="nav1">
                <li class="user-infor top top1">
                    <div class="infor">
                        <div class="user-img">
                            <a class="link-user-img" href="#">
                                <img src="./assets/images/user_1.png" style="width:50px;" alt="avt">
                            </a>
                        </div>
                        <a class="link-user-name" href="#">Nguyễn Quỳnh Trang</a>
                    </div>
                    <div class="score">160</div>
                </li>
                <hr>
                <li class="user-infor top top2">
                    <div class="infor">
                        <div class="user-img">
                            <a class="link-user-img" href="#">
                                <img src="./assets/images/user_1.png" style="width:40px;" alt="avt">
                            </a>
                        </div>
                        <a class="link-user-name" href="#">Phạm Thị Nga</a>
                    </div>
                    <div class="score">160</div>
                </li>
                <hr>

                <li class="user-infor top top3">
                    <div class="infor">
                        <div class="user-img">
                            <a class="link-user-img" href="#">
                                <img src="./assets/images/user_1.png" style="width:30px;" alt="avt">
                            </a>
                        </div>
                        <a class="link-user-name" href="#">Nguyễn Văn Lực</a>
                    </div>
                    <div class="score">160</div>
                </li>
                <hr>
            </ul>
        </div>

    </section>
    <%@include file="includes/footer.jsp" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
</body>

</html>