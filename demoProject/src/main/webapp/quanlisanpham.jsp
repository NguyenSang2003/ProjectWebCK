<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Quản lí sản phẩm || Admin</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/css/logo.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.6.2/axios.min.js" integrity="sha512-b94Z6431JyXY14iSXwgzeZurHHRNkLt9d6bAHt7BZT38eqV+GyngIi/tVye4jBKPYQ2lBdRs0glww4fmpuLRwA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</head>

<body>
    <!-- Topbar Start -->
    <div class="container-fluid">
       
        <div class="row align-items-center py-3 px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a href="index.jsp" class="text-decoration-none">
                    <h1 class="logo">Nhóm 26</h1>
                </a>
            </div>
            <div class="col-lg-6 col-6 text-left">
                <form action="">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Tìm kiếm sản phẩm">
                        <div class="input-group-append">
                            <span class="input-group-text bg-transparent text-primary">
                                <i class="fa fa-search"></i>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-3 col-6 text-right">
                <a href="quanlichude.jsp" class="btn border">
                    <i class="fa-solid fa-boxes-stacked text-primary"></i>
                </a>
                <a href="quanlidonhang.jsp" class="btn border">
                    <i class="fas fa-shopping-cart text-primary"></i>
                </a>
                <a href="quanlinguoidung.jsp" class="btn border">
                    <i class="fa-regular fa-user text-primary"></i>

                </a>
                <a href="./quanlisanpham.html" class="btn border">
                    <i class="fa-brands fa-product-hunt text-primary"></i>
                </a>
            </div>
        </div>
    </div>
    <!-- Topbar End -->



    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Quản lí sản phẩm</h1>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Cart Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <div class="col-lg-0 table-responsive mb-5">
                <table class="table table-bordered text-center mb-0">
                    <thead class="bg-secondary text-dark">
                        <tr>
                            <th>Tên bộ sưu tập</th>
                            <th>Giá</th>
                            <th>Thuộc chủ đề</th>
                            <th>Sửa</th>
                            <th>Xóa</th>
                        </tr>
                    </thead>
                    <tbody class="align-middle">
                        <tr>
                            <td class="text-left"><img src="img/flower.jpg" alt="" style="width: 50px;"> Hoa Anh Đào</td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                    <p class="text-center">Hoa</p>
                            </td>
                            <td class="align-middle"><button class="btn btn-sm btn-primary"><i class="fa-solid fa-pen"></i></button></td>
                            <td class="align-middle"><button class="btn btn-sm btn-primary"><i class="fa fa-times"></i></button></td>
                        </tr>
                        <tr>
                            <td class="text-left"><img src="img/car.avif" alt="" style="width: 50px;"> Xe độ</td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                    <p class="text-center">Xe</p>
                            </td>
                            <td class="align-middle"><button class="btn btn-sm btn-primary"><i class="fa-solid fa-pen"></i></button></td>
                            <td class="align-middle"><button class="btn btn-sm btn-primary"><i class="fa fa-times"></i></button></td>
                        </tr>
                        <tr>
                            <td class="text-left"><img src="img/animal.avif" alt="" style="width: 50px;"> Động vật</td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <p class="text-center">Động vật hoang dã</p>
                            </td>
                            <td class="align-middle"><button class="btn btn-sm btn-primary"><i class="fa-solid fa-pen"></i></button></td>
                            <td class="align-middle"><button class="btn btn-sm btn-primary"><i class="fa fa-times"></i></button></td>
                        </tr>
                        <tr>
                            <td class="text-left"><img src="img/pepole.avif" alt="" style="width: 50px;"> Hành trình khám phá</td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <p class="text-center">Con người</p>
                            </td>
                            <td class="align-middle"><button class="btn btn-sm btn-primary"><i class="fa-solid fa-pen"></i></button></td>
                            <td class="align-middle"><button class="btn btn-sm btn-primary"><i class="fa fa-times"></i></button></td>
                        </tr>
                        <tr>
                            <td class="text-left"><img src="img/anime.avif" alt="" style="width: 50px;"> Siêu nhân</td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                    <p class="text-center">Hoạt hình</p>
                            </td>
                            <td class="align-middle"><button class="btn btn-sm btn-primary"><i class="fa-solid fa-pen"></i></button></td>
                            <td class="align-middle"><button class="btn btn-sm btn-primary"><i class="fa fa-times"></i></button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-lg-6 table-responsive mb-5">
                <div class="card-header bg-secondary border-0">
                    <h6 class="font-weight-semi-bold m-0">Thêm album mới </h6>
                </div>
                <form class="mb-5  mt-4" action="" id="formAlbum" enctype="multipart/form-data" accept-charset="UTF-8">
                    <div class="input-group d-flex justify-content-between mt-3">
                        <input type="text" id="idbts" class="form-control p-3" placeholder="Thuộc chủ đề">
                    </div>
                    <div class="input-group d-flex justify-content-between mt-4">
                        <input type="text" id="name-album" class="form-control p-3" placeholder="Tên bộ sưu tập">
                    </div>
                    <div class="input-group d-flex justify-content-between mt-3">
                        <input type="number" id="price-album" class="form-control p-3" placeholder="Giá">
                    </div>
                    <div class="input-group d-flex justify-content-between mt-3">
                        <input type="number" id="discount-album" class="form-control p-3" placeholder="Giảm giá">
                    </div>
                    <div class="input-group d-flex justify-content-between mt-3">
                        <input type="text"  id="description-album" class="form-control p-3" placeholder="Mô tả sản phẩm">
                    </div>
                    <div class="input-group d-flex justify-content-between mt-3">
                        <input type="file" accept="image/*" multiple style="height: 100%;" id="upload-img" class="form-control p-3" placeholder="Tải ảnh lên">
                    </div>
                    <div id="show-upload-img" class="input-group d-flex  mt-3">

                    </div>
                    <div class="input-group-append mt-4">
                        <button class="btn btn-primary">Đăng bán</button>
                    </div>
                </form>
            </div>
            <div class="col-lg-6 table-responsive mb-5">
                <div class="card-header bg-secondary border-0">
                    <h6 class="font-weight-semi-bold m-0">Thêm ảnh lẻ mới</h6>
                </div>
                <form class="mb-5  mt-4"id="form-odd"  action=""  enctype="multipart/form-data" accept-charset="UTF-8">
                    <div class="input-group d-flex justify-content-between mt-3">
                        <input type="text" id="idbts-odd" class="form-control p-3" placeholder="Thuộc chủ đề">
                    </div>
                    <div class="input-group d-flex justify-content-between mt-4">
                        <input type="text" id="name-odd" class="form-control p-3" placeholder="Tên ảnh">
                    </div>
                    <div class="input-group d-flex justify-content-between mt-3">
                        <input type="number" id="price-odd" class="form-control p-3" placeholder="Giá">
                    </div>
                    <div class="input-group d-flex justify-content-between mt-3">
                        <input type="number" id="discount-odd" class="form-control p-3" placeholder="Giảm giá">
                    </div>
                    <div class="input-group d-flex justify-content-between mt-3">
                        <input type="text" id="description-odd" class="form-control p-3" placeholder="Mô tả sản phẩm">
                    </div>
                    <div class="input-group d-flex justify-content-between mt-3">
                        <input type="file" style="height: 100%;" id="oddImage" class="form-control p-3" placeholder="Tải ảnh lên"  accept="image/*">
                    </div>
                    <img src="" alt="" class="mt-4" id="show-image-odd" style="height: 400px;">
                    <div class="input-group-append mt-4">
                        <button class="btn btn-primary">Đăng bán</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Cart End -->

    <script type="module" src="js/quanlisanpham.js"></script>
    <!-- Footer Start -->
    <div class="container-fluid bg-secondary text-dark mt-5 pt-5">
        <div class="row px-xl-5 pt-5">
            <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
                <a href="index.jsp" class="text-decoration-none">
                    <h1 class="logo" style="height: 60px; text-align: start; margin-top: -16px;">Nhóm 26</h1>
                </a>
                <p>Shop Nhóm 26 - Điểm đến đáng tin cậy cho các loại ảnh bản quyền, với sự đa dạng và phong phú trong
                    tất cả các thể loại. Khi bạn cần ảnh bản quyền. Hãy nhớ "Cần ảnh bản quyền đến với Shop Nhóm 26".
                </p>
                <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>ĐH Nông Lâm HCM, Tp.Thủ Đức</p>
                <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>nhom26@gmail.com</p>
                <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+010 345 67890</p>
            </div>
            <div class="col-lg-8 col-md-12">
                <div class="row">
                    <div class="col-md-6 mb-5" style="padding-left: 70px;">
                        <h5 class="font-weight-bold text-dark mb-4">Di Chuyển Nhanh</h5>
                        <div class="d-flex flex-column justify-content-start">
                            <a class="text-dark mb-2" href="index.jsp"><i class="fa fa-angle-right mr-2"></i>Trang
                                chủ</a>
                            <a class="text-dark mb-2" href="shop.jsp"><i class="fa fa-angle-right mr-2"></i>Của
                                hàng</a>
                            <a class="text-dark mb-2" href="albumnew.html"><i class="fa fa-angle-right mr-2"></i>Bộ sưu
                                tập mới</a>
                            <a class="text-dark mb-2" href="cart.jsp"><i class="fa fa-angle-right mr-2"></i>Giỏ
                                hàng</a>
                            <a class="text-dark mb-2" href="checkout.jsp"><i class="fa fa-angle-right mr-2"></i>Thanh
                                toán</a>
                            <a class="text-dark" href="contact.jsp"><i class="fa fa-angle-right mr-2"></i>Liên hệ</a>
                        </div>
                    </div>
                    <div class="col-md-6 mb-5">
                        <h5 class="font-weight-bold text-dark mb-4">Đăng ký mới</h5>
                        <form action="">
                            <div class="form-group">
                                <input type="text" class="form-control border-0 py-4" placeholder="Tên của bạn"
                                    required="required" />
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control border-0 py-4" placeholder="Email của bạn"
                                    required="required" />
                            </div>
                            <div>
                                <button class="btn btn-primary btn-block border-0 py-3" type="submit">Đăng ký
                                    ngay!</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>