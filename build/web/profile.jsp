<%@include file="includes/header.jsp" %>
<link rel="stylesheet" href="./assets/css/practice_st.css">
    <style>
        /* Duy */
        .profile .card {
            /* padding-bottom: 1.5rem; */
            border-radius: 10px;
        }

        .profile .card .card-header .profile_img {
            width: 150px;
            height: 150px;
            object-fit: cover;
            margin: 10px auto;
            border: 10px solid #ccc;
            border-radius: 50%;
        }

        .profile .card h3 {
            font-size: 25px;
            font-weight: 900;
        }

        .profile .card p {
            font-size: 16px;
            color: #000;
        }

        .profile .table th,
        .profile .table td {
            font-size: 16px;
            padding: 5px 10px;
            color: #000;
        }

        .text-center {
            text-align: center;
        }

        .row {
            display: flex;
            /* flex-wrap: wrap; */
            margin-right: -15px;
            margin-left: -15px;
        }

        .shadow-sm {
            box-shadow: 0 .125rem .25rem rgba(0, 0, 0, .075);
        }

        .card-body {
            flex: 1 1 auto;
            padding: 1.25rem;
            padding-top: 0
        }

        .card {
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            background-color: #fff;
            border: 1px solid rgba(0, 0, 0, .125);
            border-radius: .25rem;
        }

        .bg-transparent {
            background-color: transparent !important
        }

        .col-lg-8 {
            flex: 0 0 66.666667%;
            max-width: 66.666667%
        }

        .col-lg-4 {
            flex: 0 0 33.333333%;
            max-width: 33.333333%;
        }

        .container {
            width: 80%;
            padding: 15px;
            margin-right: auto;
            margin-left: auto;
        }

        .card-header {
            padding: .75rem 1.25rem;
            margin-bottom: 0;
            background-color: rgba(0, 0, 0, .03);
            border-bottom: 1px solid rgba(0, 0, 0, .125);
            border: 0;
        }

        .card-header2 {
            margin-top: 15px;
            padding: .75rem 1.25rem;
            margin-bottom: 0;
            background-color: rgba(225, 243, 87, 0.83);
            border-radius: .25rem;
            cursor: pointer;
            border: 0
        }

        .card-header2:hover {
            background-color: greenyellow;
        }
    </style>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
</head>

<body>
    <div class="homepage-container">
        <%@include file="includes/navbar.jsp" %>
        <div class="yellow-bar"></div>
        <!-- Duy -->
        <div class="lesson">
            <div class="profile">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="card">
                                <div class="card-header bg-transparent text-center">
                                    <img class="profile_img"
                                        src="https://motgame.vn/wp-content/uploads/2022/05/anya-spy-x-family-meme-6.jpg"
                                        alt="student dp">
                                    <h3>Nguyễn Ngọc Duy</h3>
                                </div>
                                <!-- <div class="card-body">
                                    <p class="mb-0"><strong class="pr-1"></strong></p>
                                </div> -->
                            </div>
                        </div>
                        <div class="col-lg-8">
                            <div class="card shadow-sm">
                                <div class="card-header bg-transparent ">
                                    <h3>Thông tin khách hàng</h3>
                                </div>
                                <div class="card-body">
                                    <table class="table">
                                        <tr>
                                            <th width="30%">Họ và tên</th>
                                            <td>
                                                <!-- <input type="text"></input> -->
                                                Nguyễn Ngọc Duy
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="30%">Sinh năm</th>
                                            <td>
                                                <!-- <input type="text"></input> -->2001
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="30%">Giới tính</th>
                                            <td>
                                                <!-- <input type="text"></input> -->Nam
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="30%">Quê quán</th>
                                            <td>
                                                <!-- <input type="text"></input> -->Hà Nội
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="30%">Tên đăng nhập</th>
                                            <td>
                                                <!-- <input type="text"></input> -->ngocduy2001@gmail.com
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="30%">Mật khẩu</th>
                                            <td>
                                                <!-- <input type="text"></input> -->
                                            </td>
                                        </tr>
                                    </table>
                                    <button class="card-header2" type="button"
                                        onclick="alert('Cập nhật thành công')">Cập
                                        nhật
                                        thông tin
                                        khách hàng</button>
                                </div>
                            </div>
                            <div style="height: 25px"></div>
                            <div class="card shadow-sm">
                                <div class="card-header bg-transparent ">
                                    <h3 class="">Giới thiệu về bản thân</h3>
                                </div>
                                <div class="card-body">
                                    <p>Hello</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>
