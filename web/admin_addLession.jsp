<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/admin_addLession.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    
    <title>Document</title>
</head>
<body class="h-100 overflow-hidden">
    <div class="d-flex h-100">  
        <div class="">
            <div class="h-100 overflow-hidden">
                <div class="d-flex h-100 flex-column flex-shrink-0 bg-light" style="width: 280px;">
                    <div class="logo-container">

                    </div>
                    <ul class="nav nav-pills flex-column mb-auto">
                        <li class="d-flex align-items-center list-tools p-2 active-admin-tools">
                            <i class="fa-solid fa-book admin-tools-icon" style="width: 20px;"></i>
                            <a href="admin_addLession.jsp" class="nav-link link-dark" aria-current="page">Thêm bài học</a>
                        </li>
                        <li class="d-flex align-items-center list-tools p-2">
                            <i class="fa-solid fa-users admin-tools-icon" style="width: 20px;"></i>
                            <a href="admin_users.jsp" class="nav-link link-dark">Thống kê người dùng</a>
                        </li>
                        <li class="d-flex align-items-center list-tools p-2">
                            <i class="fa-solid fa-book-open admin-tools-icon" style="width: 20px;"></i>
                            <a href="admin_lessons.jsp" class="nav-link link-dark">Thống kê bài học</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="w-100">
            <header class="p-3 border-bottom">
                <div class="container">
                  <div class="d-flex flex-wrap align-items-center justify-content-end justify-content-lg-end">
            
                    <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
                      <input type="search" class="form-control" placeholder="Search..." aria-label="Search">
                    </form>
            
                    <div class="dropdown text-end">
                      <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="https://s120-ava-talk.zadn.vn/8/1/9/6/39/120/d8b1bf93072087e093ed8d3c702b3dd6.jpg" alt="mdo" width="32" height="32" class="rounded-circle">
                      </a>
                      <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1" style="">
                        <li><a class="dropdown-item" href="#">New project...</a></li>
                        <li><a class="dropdown-item" href="#">Settings</a></li>
                        <li><a class="dropdown-item" href="#">Profile</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Sign out</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
            </header>
            <div class="h-100 pt-3 px-3 overflow-auto">
                <!-- Thêm bài học mới -->
                <div class="d-flex flex-column mt-3">
                    <h5 class="card-title">Thêm bài học <i class="fa-solid fa-book admin-tools-icon" style="width: 20px;"></i></h5>
                    <div class="my-3 w-75 ps-4">
                        <label for="name-lesson" class="form-label font-">Tên bài học</label>
                        <input type="text" class="form-control" id="name-lesson" placeholder="Nhập tên bài học">
                    </div>
                    <!-- for của label === id của input ngay dưới nó nên tự điền nhé -->
                    <div class="mb-3 w-75 ps-4">
                        <label for="" class="form-label font-">Hình chữ viết hoa</label>
                        <input type="file" class="form-control" id="name-lesson">
                    </div>
                    <div class="mb-3 w-75 ps-4">
                        <label for="" class="form-label font-">Hình chữ viết thường</label>
                        <input type="file" class="form-control" id="">
                    </div>
                    <div class="mb-3 w-75 ps-4">
                        <label for="" class="form-label font-">Hình chữ in hoa</label>
                        <input type="file" class="form-control" id="">
                    </div>
                    <div class="mb-3 w-75 ps-4">
                        <label for="" class="form-label font-">Hình chữ in thường</label>
                        <input type="file" class="form-control" id="">
                    </div>
                    <div class="mb-3 w-75 ps-4">
                        <label for="" class="form-label font-">Âm thanh</label>
                        <input type="file" class="form-control" id="" placeholder="Nhập tên bài học">
                    </div>
                </div>

                <!-- Thêm từ mới -->
                <div class="d-flex flex-column mt-3">
                    <h5 class="card-title">Thêm từ <i class="fa-brands fa-amilia admin-tools-icon" style="width: 20px;"></i></h5>
                    <!-- for của label === id của input ngay dưới nó nên tự điền nhé -->
                    <div class="mb-3 w-75 ps-4">
                        <label for="" class="form-label font-">Hình ảnh</label>
                        <input type="file" class="form-control" id="">
                    </div>
                    <div class="mb-3 w-75 ps-4">
                        <label for="" class="form-label font-">Âm thanh</label>
                        <input type="file" class="form-control" id="">
                    </div>
                </div>

                <!-- Thêm từ câu hỏi -->
                <div class="d-flex flex-column mt-3" style="margin-bottom: 150px;">
                    <h5 class="card-title">Thêm câu hỏi <i class="fa-solid fa-question admin-tools-icon" style="width: 20px;"></i></h5>
                    <!-- for của label === id của input ngay dưới nó nên tự điền nhé -->
                    <div class="mb-3 w-75 ps-4">
                        <label for="" class="form-label font-">Câu hỏi</label>
                        <input type="text" class="form-control" id="">
                    </div>
                    <div class="mb-3 w-75 ps-4">
                        <label for="" class="form-label font-">Đáp án</label>
                        <input type="text" class="form-control" id="">
                    </div>
                    <div class="w-75 ps-4 d-flex justify-content-between">
                        <div class="">
                            <label for="" class="form-label font-">Hình ảnh (Tuỳ chọn)</label>
                            <input type="file" class="form-control" id="">
                        </div>
                        <div class="">
                            <label for="" class="form-label font-">Âm thanh (Tuỳ chọn)</label>
                            <input type="file" class="form-control" id="">
                        </div>
                    </div>
                    <button type="button" class="btn btn-info ms-4 mt-4" style="width: 80px";>Save</button>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>