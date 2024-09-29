<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Introduce.aspx.cs" Inherits="BTL_WebBanHang.src.Introduce" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="Introduce.css"/>
    <title>Introduce</title>
</head>
<body>
    <div class="fix">
            <header class="header">
                <div class="tittle">
                    <p>Femme & Hazel</p>
                </div>
                <div action="" class="search">
                    <div class="box">
                        <input type="text" class="search__box-text" placeholder="Search"/>
                        <button class="search__box-btn">
                            <img src="img\logo_search.webp.png" alt="icon tìm kiếm" class="search__box-btn-icon"/>
                        </button>
                    </div>
                </div>

                <!-- icon -->
                 <div class="box-gh">
                    <button class="gh">
                        <a href="Cart.aspx">
                            <img src="img\giohang2.png" alt="" class="img-gh"/>
                        </a>
                    </button>
                </div>
                
                <div class="box-account">
                    <button class="account">
                        <a href="Sign.aspx">
                            <img src="img\icon_account05.png" alt="" class="img-acc">
                        </a>
                    </button>
                    <div id="login" class="login" runat="server"></div>
                 </div>
                
            </header>
            <menu class="container_menu">
                <ul class="sidebar">
                    <li class="list_bar">
                        <a href="Main.aspx">Sản phẩm</a>
                        <ul class="sub-menu">
                            <li class="list-item">
                                <a href="Product.aspx">Kính tốt</a>
                            </li>
                            <li class="list-item"><a href="DarkGlasses.aspx">Kính râm</a></li>
                            <li class="list-item">Phụ kiện</li>
                        </ul>
                    </li>
                    <li class="list_bar">
                        <a href="Introduce.aspx">Giới thiệu</a>
                        <ul class="sub-menu">
                            <li class="list-item">Bảo hành</li>
                            <li class="list-item">Ưu đãi</li>
                            <li class="list-item">Tư vấn</li>
                        </ul>
                    </li>
                    <li class="list_bar">
                        <a href="">Dịch vụ</a>
                        <ul class="sub-menu">
                            <li class="list-item">
                                <a href="Product_Detail">Chi tiết sản phẩm</a>
                            </li>
                            <li class="list-item">
                                <a href="Cart.aspx">Giỏ hàng</a>
                            </li>
                            <li class="list-item">
                                <a href="Sign.aspx">Đăng nhập</a>
                            </li>
                        </ul>
                    </li>
                    <li class="list_bar">
                        <a href="">Quản lý</a>
                        <ul class="sub-menu">
                            <li class="list-item"><a href="SignManage.aspx">Quản Lý tài khoản</a></li>
                            <li class="list-item"><a href="ProductManage.aspx">Quản lý sản phẩm</a></li>
                            <li class="list-item"><a href="SignOut.aspx">Đăng xuất</a></li>
                        </ul>
                    </li>
                </ul>
            </menu>
        </div>
        <!-- banner -->
         <div class="container_banner01">
                <div class="item">
                    <img class="banner_header" src="img/banner1.png" alt="">
                </div>
         </div>

    <div class="container_mid">
        <div class="item21">
            <img class="mid01" src="img/banner2.png" >
        </div>
        <div class="item22">
            <img class="mid02" src="img//banner3.png" >
        </div>
    </div>

            <div class="section_content">
                <div class="section_item">
                    <div class="section_child">
                        <h3>Hàng chính hãng</h3>
                        <span>Sản Phẩm cửa hàng điểu tính hợp ca mã QR của bộ công thương để quý khách hàng có thể kiểm tra thông tin sản phẩm và tránh hàng giả </span>
                    </div>
                    <div class="section_child">
                        <h3>Khám mắt miễn phí</h3>
                        <span>Anna-Lily thực hiện đo khám mắt miễn phí cho khách hàng khi đặt lịch trước 24 tiếng. Với các bác sĩ chuyên khoa, trình độ chuyên môn cao</span>
                    </div>
                    <div class="section_child">
                        <h3>Bảo hành 12 tháng</h3>
                        <span>Chúng tôi tự tin là đơn vị có chế độ hậu mãi tốt nhất Việt Nam khi áp dụng chính sách bảo hành một năm và đổi trả sản phẩm không cần lí do trong 30 ngày.</span>
                    </div>
                </div>
                <div class="section_item">
                    <div class="section_child">
                        <h3>Vệ sinh và bảo quản kính mắt</h3>
                        <span>Anna-Lily sẽ hướng dẫn bạn cách lau chùi, vệ sinh chiếc kính của bạn thật sạch sẽ mỗi ngày, để có một tầm mình thật sáng rõ và tươi mới.</span>
                    </div>
                    <div class="section_child">
                        <h3>Miễn phí giao hàng</h3>
                        <span>
                            Hiện nay, Hệ thông cửa hàng đã phủ song toàn quốc với hớn 100 cửa hàng hộ trợ giao hàng tận nơi đến tay khách hàng
                        </span>
                    </div>
                    <div class="section_child">
                        <h3>Thu cũ đổi mới</h3>
                        <span>Thu Cũ Đổi Mới- GIẢM 10% đơn hàng kính mắt của Anna-Lily, quý khách hàng sẽ được hỗ trợ thu lại kính mắt và tròng cũ với giá cực kỳ ưu đãi.</span>
                    </div>
                </div>
            </div>


          <!-- Footer -->
           <footer class="container-footer">
                <div class="container-footer__left">
                    <h2 class="container-footer__left-contents">Fenne & Hazel</h2>
                    <h4 class="container-footer__left-contents">Công ty TNHH Thương mại và Dịch vụ <br/> ANNA-LYLIGRUOP Việt Nam</h4>
                    <h4 class="container-footer__left-contents">Địa chỉ: Số 143 ngõ 85 Hạ Đình, <br/>P. Hạ Đình Đình, Q. Thanh xuân, HN</h4><br/>
                    <p class="container-footer__left-contents">Mon - Sun: 8:30 - 22:00 <br/> Email: contact.dinhducnghia1105@gmail.com <br/> holine: 1900 638 096</p><br/>
                    <div class="container-footer__left-img">
                        <img src="img/dangkybct.png" />
                    </div>
                </div>

                <div class="container-footer__center">
                    <h3 class="container-footer__center-contents">Hệ Thống ANNA-Lily Hà Nội<br/>
                    <h3 class="container-footer__center-contents"> Fenne & Hazel 1: Số 356 Cầu Giấy, Hà Nội - <br/> Hotline: 0964.868.635</h3><br/>
                    <h4 class="container-footer__center-contents"> Fenne & Hazel 2: Số 356 Cầu Giấy, Hà Nội - <br/>  Hotline: 0964.868.635</h4><br/>
                    <h4 class="container-footer__center-contents"> Fenne & Hazel 3: Số 356 Cầu Giấy, Hà Nội - <br/>  Hotline: 0964.868.635</h4><br/>
                    <h4 class="container-footer__center-contents"> Fenne & Hazel 5: Số 356 Cầu Giấy, Hà Nội - <br/>  Hotline: 0964.868.635</h4><br/>
                    <h4 class="container-footer__center-contents"> Fenne & Hazel 6: Số 356 Cầu Giấy, Hà Nội - <br/>  Hotline: 0964.868.635</h4><br/>
                </div>

                <div class="container-footer__right">
                    <h3 class="container-footer__right-contents">Tổng đài hỗ trợ miễn phí</h3><br>
                    <h5 class="container-footer__right-contents">
                        Gọi mua hàng 1800.2097 (7h30 - 22h00) <br/><br/>
                        Gọi khiếu nại 1800.2063 (8h00 - 21h30)<br/><br/>
                        Gọi bảo hành 1800.2064 (8h00 - 21h00) <br/><br/>
                    </h5>
                    <h5 class="container-footer__right-contents"></h5><br/>
                    <div class="container-footer__right-img">
                        <img src="img/logo_dmca_footer.png" />
                    </div>
                </div>
           </footer>
</body>
</html>
