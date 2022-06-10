<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/homepage.css">
    <!-- <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'> -->
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
            border: 0
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
</head>

<body>
    <div class="homepage-container">
        <div class="header">
            <div class="header-content_wrapper">
                <div class="header-content">
                    <div class="left_content">
                        <div class="left_content-item">
                            <img src="https://d3uk5h2fsqai9v.cloudfront.net/assets/ellii-logo-rgb-yellow-bulb-3797d90c86b8ea228145439af7574b30fc73f2f80ca5eca666ced3b11f200a9e.svg"
                                alt="logo">
                        </div>
                        <div class="left_content-item">
                            <a href="index.html" class="left_content-item-link">Trang ch?</a>
                        </div>
                        <div class="left_content-item">
                            <a href="hoctap.html" class="left_content-item-link">H?c t?p</a>
                        </div>
                        <div class="left_content-item">
                            <span>Luy?n t?p</span>
                        </div>
                        <div class="left_content-item">
                            <span>Thành tích</span>
                        </div>
                    </div>
                    <div class="right_content">
                        <div class="right_content-item">
                            <span>Login</span>
                        </div>
                        <div class="SignUp_btn">
                            <span>Sign Up</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
                                    <h3>Nguy?n Ng?c Duy</h3>
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
                                            <th width="30%">H? và tên</th>
                                            <td>
                                                <!-- <input type="text"></input> -->
                                                Nguy?n Ng?c Duy
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="30%">Sinh n?m</th>
                                            <td>
                                                <!-- <input type="text"></input> -->2001
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="30%">Gi?i tính</th>
                                            <td>
                                                <!-- <input type="text"></input> -->Nam
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="30%">Quê quán</th>
                                            <td>
                                                <!-- <input type="text"></input> -->Hà N?i
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="30%">Tên ??ng nh?p</th>
                                            <td>
                                                <!-- <input type="text"></input> -->ngocduy2001@gmail.com
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="30%">M?t kh?u</th>
                                            <td>
                                                <!-- <input type="text"></input> -->
                                            </td>
                                        </tr>
                                    </table>
                                    <button class="card-header2" type="button"
                                        onclick="alert('C?p nh?t thành công')">C?p
                                        nh?t
                                        thông tin
                                        khách hàng</button>
                                </div>
                            </div>
                            <div style="height: 25px"></div>
                            <div class="card shadow-sm">
                                <div class="card-header bg-transparent ">
                                    <h3 class="">Gi?i thi?u v? b?n thân</h3>
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