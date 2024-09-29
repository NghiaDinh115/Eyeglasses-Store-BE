<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="BTL_WebBanHang.src.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <link rel="stylesheet" href="Cart.css">
    <title>Glasses</title>
</head>
<body>
    <div class="fix">
            <header class="header">
                <div class="tittle">
                    <p>Femme & Hazel</p>
                </div>
                <div class="search">
                    <div class="box">
                        <input type="text" class="search__box-text" placeholder="Search"/>
                        <button class="search__box-btn">
                            <img src="img/logo_search.webp.png" alt="icon tìm kiếm" class="search__box-btn-icon"/>
                        </button>
                    </div>
                </div>

                <!-- icon -->
                 <div class="box-gh">
                    <button class="gh">
                        <a href="Cart.aspx">
                            <img src="img/giohang2.png" alt="" class="img-gh"/>
                        </a>
                    </button>
                 </div>
                 <div class="box-account">
                    <button class="account">
                        <a href="Sign.aspx">
                            <img src="img/icon_account05.png" alt="" class="img-acc"/>
                        </a>
                    </button>
                     <div class="login" id="login" runat="server"></div>
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
        
         <!-- body-item -->
          <div class="container-body">
            <div class="body-contents">
                <div id="cartProduct" name="cartProduct" runat="server"></div>

               <!-- <div class="body-contents__cart-tittle">
                    <table class="cart-table">
                        <tr>
                            <th>Ảnh</th>
                            <th>Tên sản phẩm</th>
                            <th>Giá</th>
                            <th>Số lượng</th>
                            <th>Tổng cộng</th>
                        </tr>
                        <tr class="cart-table-info">
                            <td><img class="cart--img" src="img/kinh02.jpeg" alt=""></td>
                            <td>kính 02</td>
                            <td>1500000</td>
                            <td>2</td>
                            <td>3000000</td>
                        </tr>
                        <tr class="cart-table-info">
                            <td><img class="cart--img" src="img/kinh03.jpeg" alt=""></td>
                            <td>kính 03</td>
                            <td>1500000</td>
                            <td>2</td>
                            <td>3000000</td>
                        </tr>
                        <tr class="cart-table-info">
                            <td><img class="cart--img" src="img/kinh04.jpeg" alt=""></td>
                            <td>kính 04</td>
                            <td>1500000</td>
                            <td>2</td>
                            <td>3000000</td>
                        </tr>
                    </table>
                </div> -->

                <div class="body-contents__cart-price">
                    <div class="cart-right">
                        <h2 class="cart-right__tittle">Đơn hàng</h2>
                        <div class="cart-right__total-product">
                            <p class="cart-right__total-price--text">Tổng tiền sản phẩm</p>
                            <p runat="server" id="product_Price" class="cart-right__total-price--unit">0<span class="cart_price_unit">đ</span></p>
                        </div>
                        <div class="cart-right__total-price">
                            <p class="cart-right__total-price--text">Tổng cộng:</p>
                            <p runat="server" id="order_total_price" class="cart-right__total-price--unit">0<span class="cart_price_unit">đ</span></p>
                        </div>
                        <div class="cart-right__button">
                            <button class="purchase-button" type="button">Thanh toán</button>
                        </div>
                    </div>
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
                    </h5 class="container-footer__right-contents"><br/>
                    <div class="container-footer__right-img">
                        <img src="img/logo_dmca_footer.png" />
                    </div>
                </div>
           </footer>
</body>
</html>
