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
                                <a href="#" class="nav-link dropdown-toggle active" data-toggle="dropdown">Trang</a>
                                <div class="dropdown-menu rounded-0 m-0">
                                    <a href="cart.jsp" class="dropdown-item">Giỏ hàng</a>
                                    <a href="checkout.html" class="dropdown-item active">Thanh toán</a>
                                </div>
                            </div>
                            <a href="contact.jsp" class="nav-item nav-link ">Liên hệ</a>
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
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Thanh Toán</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="">Trang chủ</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Thanh Toán</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Checkout Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <div class="col-lg-8">
                <div class="mb-4">
                    <h4 class="font-weight-semi-bold mb-4">Địa Chỉ Thanh Toán</h4>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>Họ</label>
                            <input class="form-control" type="text" placeholder="Nguyễn">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Tên</label>
                            <input class="form-control" type="text" placeholder="Sáng">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Email</label>
                            <input class="form-control" type="text" placeholder="example@email.com">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Số Điện Thoại</label>
                            <input class="form-control" type="text" placeholder="+123 456 789">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Địa Chỉ 1</label>
                            <input class="form-control" type="text" placeholder="Đường , TP , Tỉnh ">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Địa Chỉ 2</label>
                            <input class="form-control" type="text" placeholder="Đường , TP , Tỉnh ">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Quốc Gia</label>
                            <select class="custom-select">
                                <option selected>Việt Nam</option>
                                <option>Nhật</option>
                                <option>Trung Quốc</option>
                                <option>Thái Lan</option>
                            </select>
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Thành Phố</label>
                            <input class="form-control" type="text" placeholder="TP.Biên Hòa">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Tỉnh</label>
                            <input class="form-control" type="text" placeholder="Đồng Nai">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Mã ZIP</label>
                            <input class="form-control" type="text" placeholder="76116">
                        </div>
                        <div class="col-md-12 form-group">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="newaccount">
                                <label class="custom-control-label" for="newaccount">Tạo Tài Khoản</label>
                            </div>
                        </div>
                        <div class="col-md-12 form-group">
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="shipto">
                                <label class="custom-control-label" for="shipto" data-toggle="collapse"
                                    data-target="#shipping-address">Gửi Đến Địa Chỉ Khác</label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="collapse mb-4" id="shipping-address">
                    <h4 class="font-weight-semi-bold mb-4">Địa Chỉ Thanh Toán 2</h4>
                    <div class="row">
                        <div class="col-md-6 form-group">
                            <label>Họ</label>
                            <input class="form-control" type="text" placeholder="Nguyễn">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Tên</label>
                            <input class="form-control" type="text" placeholder="Sáng">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Email</label>
                            <input class="form-control" type="text" placeholder="example@email.com">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Số Điện Thoại</label>
                            <input class="form-control" type="text" placeholder="+123 456 789">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Địa Chỉ 1</label>
                            <input class="form-control" type="text" placeholder="Đường , TP , Tỉnh ">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Địa Chỉ 2</label>
                            <input class="form-control" type="text" placeholder="Đường , TP , Tỉnh ">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Quốc Gia</label>
                            <select class="custom-select">
                                <option selected>Việt Nam</option>
                                <option>Nhật</option>
                                <option>Trung Quốc</option>
                                <option>Thái Lan</option>
                            </select>
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Thành Phố</label>
                            <input class="form-control" type="text" placeholder="TP.Biên Hòa">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Tỉnh</label>
                            <input class="form-control" type="text" placeholder="Đồng Nai">
                        </div>
                        <div class="col-md-6 form-group">
                            <label>Mã ZIP</label>
                            <input class="form-control" type="text" placeholder="76116">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">

                <!-- Mã mới có Js -->
                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Tổng Đơn Hàng</h4>
                    </div>
                    <div class="card-body">
                        <h5 class="font-weight-medium mb-3">Các Sản Phẩm</h5>
                        <div class="d-flex justify-content-between">
                            <p id="product1">Album Chó</p>
                            <p id="price1">150.000 VNĐ </p>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p id="product2">Album Đua xe</p>
                            <p id="price2">100.000 VNĐ </p>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p id="product3">Album Vũ Trụ </p>
                            <p id="price3">200.000 VNĐ </p>
                        </div>
                        <hr class="mt-0">
                        <div class="d-flex justify-content-between mb-3 pt-1">
                            <h6 class="font-weight-medium">Tổng Tiền Chưa Thuế</h6>
                            <h6 class="font-weight-medium" id="subtotal"></h6>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Giá Vận Chuyển</h6>
                            <h6 class="font-weight-medium" id="shippingFee">40.000 VNĐh6>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Thuế VAT <i style="padding-left: 10px;"
                                    class="far fa-question-circle"
                                    title=" (Value Added Tax) là một loại thuế tiêu thụ được áp dụng trên giá trị gia tăng
                                    của sản phẩm hoặc dịch vụ trong quá trình chuỗi cung ứng."></i>
                            </h6>
                            <h6 class="font-weight-medium" id="vatRate">6%</h6>
                        </div>
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
                        <div class="d-flex justify-content-between mt-2">
                            <h5 class="font-weight-bold">Tổng Cộng</h5>
                            <h5 class="font-weight-bold" id="total"></h5>
                        </div>
                    </div>
                </div>

                <!-- Mã cũ không js -->
                <!-- <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Tổng Đơn Hàng</h4>
                    </div>
                    <div class="card-body">
                        <h5 class="font-weight-medium mb-3">Các Sản Phẩm</h5>
                        <div class="d-flex justify-content-between">
                            <p>Album Số 1</p>
                            <p>$150</p>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p>Ảnh Thiên Nhiên Số 103</p>
                            <p>$150</p>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p>Album Vũ Trụ 4</p>
                            <p>$250</p>
                        </div>
                        <hr class="mt-0">
                        <div class="d-flex justify-content-between mb-3 pt-1">
                            <h6 class="font-weight-medium">Tổng Tiền Chưa Thuế</h6>
                            <h6 class="font-weight-medium">$550</h6>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Giá Vận Chuyển</h6>
                            <h6 class="font-weight-medium">$10</h6>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Thuế VAT</h6>
                            <h6 class="font-weight-medium">6%</h6>
                        </div>
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
                        <div class="d-flex justify-content-between mt-2">
                            <h5 class="font-weight-bold">Tổng Cộng</h5>
                            <h5 class="font-weight-bold">$560</h5>
                        </div>
                    </div>
                </div> -->
                <!-- Mã cũ không js -->

                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Phương Thức Trả</h4>
                    </div>
                    <div class="card-body">
                        <!-- <div class="form-group">
                            <div class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" name="payment" id="paypal">
                                <label class="custom-control-label" for="paypal">Paypal</label>
                            </div>
                        </div> -->
                        <div class="form-group">
                            <div class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" name="payment" id="directcheck">
                                <label class="custom-control-label" for="directcheck">Trả Khi Nhận Hàng</label>
                            </div>
                        </div>
                        <div class="">
                            <div class="custom-control custom-radio">
                                <input type="radio" class="custom-control-input" name="payment" id="banktransfer">
                                <label class="custom-control-label" for="banktransfer">Chuyển Khoản Qua Ngân
                                    Hàng</label>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
                        <button class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3">Đặt Hàng</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Checkout End -->


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
                            <a class="text-dark mb-2" href="checkout.html"><i class="fa fa-angle-right mr-2"></i>Thanh
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
    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Định nghĩa giá của các sản phẩm
            const prices = {
                product1: 150000,
                product2: 100000,
                product3: 200000
            };
    
            // Lấy các phần tử HTML cần thiết
            const subtotalElement = document.getElementById("subtotal");
            const shippingFeeElement = document.getElementById("shippingFee");
            const vatRateElement = document.getElementById("vatRate");
            const totalElement = document.getElementById("total");
    
            // Tính tổng tiền chưa thuế
            const subtotal = Object.values(prices).reduce((acc, price) => acc + price, 0);
            subtotalElement.textContent = formatCurrency(subtotal);
    
            // Tính tổng cộng (bao gồm cả thuế và phí vận chuyển)
            const vatRate = 0.06; // 6%
            const shippingFee = 40000; // 40,000 VNĐ
            const total = subtotal + shippingFee + (subtotal * vatRate);
            totalElement.textContent = formatCurrency(total);
    
            // Hiển thị phí vận chuyển và thuế VAT
            shippingFeeElement.textContent = formatCurrency(shippingFee);
            vatRateElement.textContent = (vatRate * 100) + "%";
    
            // Hàm để định dạng số tiền sang định dạng tiền tệ
            function formatCurrency(amount) {
                return new Intl.NumberFormat('vi-VN', { style: 'currency', currency: 'VND' }).format(amount).replace('₫', 'VNĐ');
            }
        });
    </script>
    


    <script src="js/main.js"></script>
</body>

</html>