<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Nhóm 26</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/logo.css">
</head>

<body>

    <!-- Start - Phần dùng chung cho các trang dành cho user -->
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
                            <span class="input-group-text bg-transparent text-primary" title="Tìm kiếm">
                                <i class="fa fa-search"></i>
                            </span>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-3 col-6 text-right">
                <a href="favourite.jsp" class="btn border" title="Yêu thích">
                    <i class="fas fa-heart text-primary"></i>
                    <span class="badge">0</span>
                </a>
                <a href="cart.jsp" class="btn border" title="Giỏ hàng">
                    <i class="fas fa-shopping-cart text-primary"></i>
                    <span class="badge">0</span>
                </a>
            </div>
        </div>
    </div>
    <!-- Topbar End -->

    <!-- Navbar Start -->
    <div class="container-fluid">
        <div class="row border-top px-xl-5">
            <div class="col-lg-3 d-none d-lg-block">
                <a class="btn shadow-none d-flex align-items-center justify-content-between bg-primary text-white w-100"
                    data-toggle="collapse" href="#navbar-vertical"
                    style="height: 65px; margin-top: -1px; padding: 0 30px;">
                    <h6 class="m-0">Danh mục</h6>
                    <i class="fa fa-angle-down text-dark"></i>
                </a>
                <nav class="collapse position-absolute navbar navbar-vertical navbar-light align-items-start p-0 border border-top-0 border-bottom-0 bg-light"
                    id="navbar-vertical" style="width: calc(100% - 30px); z-index: 1;">
                    <div class="navbar-nav w-100 overflow-hidden" style="height: 410px">
                        <a href="" class="nav-item nav-link">Con người</a>
                        <a href="" class="nav-item nav-link">Thiên nhiên</a>
                        <a href="" class="nav-item nav-link">Động vật</a>
                        <a href="" class="nav-item nav-link">Chó</a>
                        <a href="" class="nav-item nav-link">Mèo</a>
                        <a href="" class="nav-item nav-link">Xe</a>
                        <a href="" class="nav-item nav-link">Vũ trụ</a>
                        <a href="" class="nav-item nav-link">Hoạt hình</a>
                        <a href="" class="nav-item nav-link">Hoa</a>
                    </div>
                </nav>
            </div>
            <div class="col-lg-9">
                <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                    <a href="" class="text-decoration-none d-block d-lg-none">
                        <h1 class="logo">Nhóm 26</h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                        <div class="navbar-nav mr-auto py-0">
                            <a href="index.jsp" class="nav-item nav-link">Trang chủ</a>
                            <a href="shop.jsp" class="nav-item nav-link">Cửa hàng</a>
                            <a href="donhangcuaban.jsp" class="nav-item nav-link">Đơn hàng của bạn</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Trang</a>
                                <div class="dropdown-menu rounded-0 m-0">
                                    <a href="cart.jsp" class="dropdown-item">Giỏ hàng</a>
                                    <a href="checkout.jsp" class="dropdown-item">Thanh toán</a>
                                </div>
                            </div>
                            <a href="contact.html" class="nav-item nav-link active">Liên hệ</a>
                        </div>
                        <div class="navbar-nav ml-auto py-0">
                            <a href="login.jsp" class="nav-item nav-link">Đăng nhập</a>
                            <a href="register.jsp" class="nav-item nav-link">Đăng ký</a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- Navbar End -->
    <!-- End - Phần dùng chung cho các trang dành cho user -->


    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Liên Hệ</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="index.jsp">Trang Chủ</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Liên Hệ</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Contact Start -->
    <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Liên hệ với chúng tôi nếu bạn có thắc mắc nào</span></h2>
        </div>
        <div class="row px-xl-5">
            <div class="col-lg-7 mb-5">
                <div class="contact-form">
                    <div id="success"></div>
                    <form name="sentMessage" id="contactForm" novalidate="novalidate">
                        <div class="control-group">
                            <input type="text" class="form-control" id="name" placeholder="Nhập tên của bạn"
                                required="required" data-validation-required-message="Xin hãy nhập tên của bạn." />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="email" class="form-control" id="email" placeholder="Nhập Email của bạn"
                                required="required" data-validation-required-message="Xin hãy nhập email của bạn." />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input type="text" class="form-control" id="subject" placeholder="Nhập chủ đề bạn muốn hỏi"
                                required="required"
                                data-validation-required-message="Xin hãy nhập chủ đề tin nhắn này." />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <textarea class="form-control" rows="6" id="message" placeholder="Nhập tin nhắn ở đây"
                                required="required"
                                data-validation-required-message="Xin hãy nhập tin nhắn."></textarea>
                            <p class="help-block text-danger"></p>
                        </div>
                        <div>
                            <button class="btn btn-primary py-2 px-4" type="submit" id="sendMessageButton">Gửi tin
                                nhắn</button>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-5 mb-5">
                <h5 class="font-weight-semi-bold mb-3">Hãy giữ liên lạc</h5>
                <p>"Nếu bạn không tìm thấy ảnh mà bạn đang cần trên trang web của chúng tôi, xin đừng ngần ngại liên hệ
                    với chúng tôi. Chúng tôi luôn sẵn sàng lắng nghe và tìm kiếm để đáp ứng nhu cầu của bạn. Hãy để
                    chúng tôi biết ảnh bạn muốn, và chúng tôi sẽ cố gắng
                    hết sức để giúp bạn tìm thấy nó."</p>
                <div class="d-flex flex-column mb-3">
                    <h5 class="font-weight-semi-bold mb-3">Chi nhánh 1 - A</h5>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>Quận 3, Tp.HCM</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>nhom26@gmail.com</p>
                    <p class="mb-2"><i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890</p>
                </div>
                <div class="d-flex flex-column">
                    <h5 class="font-weight-semi-bold mb-3">Chi nhánh 1 - B</h5>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>Đường Đồng Khởi, Tp.Biên Hòa,
                        Đồng Nai</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>nhom26@gmail.com</p>
                    <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+011 345 67890</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


    <!-- Footer chung cho các trang - Start -->
    <div class="container-fluid bg-secondary text-dark mt-5 pt-5">
        <div class="row px-xl-5 pt-5">
            <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
                <a href="" class="text-decoration-none">
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
                            <a class="text-dark mb-2" href="shop.jsp"><i class="fa fa-angle-right mr-2"></i>Cửa
                                hàng</a>
                            <a class="text-dark mb-2" href="donhangcuaban.jsp"><i
                                    class="fa fa-angle-right mr-2"></i>Đơn hàng của bạn</a>
                            <a class="text-dark mb-2" href="cart.jsp"><i class="fa fa-angle-right mr-2"></i>Giỏ
                                hàng</a>
                            <a class="text-dark mb-2" href="checkout.jsp"><i class="fa fa-angle-right mr-2"></i>Thanh
                                toán</a>
                            <a class="text-dark" href="contact.html"><i class="fa fa-angle-right mr-2"></i>Liên hệ</a>
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
    <!-- Footer chung cho các trang - End -->


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