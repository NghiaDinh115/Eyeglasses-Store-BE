﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign.aspx.cs" Inherits="BTL_WebBanHang.src.Sign" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
        <link rel="stylesheet" href="Sign.css"/>
        <title>Sign</title>
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
            <div class="form-login">
                <form action="" method="post" runat="server" class="form-login__container" onsubmit="return btnSign()">
                    <div class="form-login__header">
                        <h3 class="form-login__header-text--sign">Đăng nhập</h3>
                        <a class="form-login__header-text--register" href="Register.aspx" >Đăng ký</a>
                    </div>
                    <div class="form-login__body">
                        <div class="form-login__body-contents">
                            <label class="form-login__body-text" for="username">Tài khoản</label>
                            <input class="form-login__body-input" type="text" name="username" id="username" placeholder="Tài khoản"/>
                        </div>
                        <div class="form-login__body-contents">
                            <label class="form-login__body-text" for="password">Mật khẩu</label>
                            <input class="form-login__body-input" type="password" name="password" id="password" placeholder="Mật khẩu"/>
                        </div>
                        <p id="errorMessage" runat="server" style="color: red; font-weight: bold; display: flex; align-items: center; justify-content: center"></p>
                        <div class="form-login__body-button" runat="server" id="btnSign">
                            <button type="submit" onclick="btnSign()" runat="server" id="btnSignn">Đăng Nhập</button>
                        </div>
                    </div>
                </form>
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
                    <h3 class="container-footer__right-contents">Tổng đài hỗ trợ miễn phí</h3><br/>
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
    <script>
        function btnSign() {
            var username = document.getElementById('username').value;
            var btnSign = document.getElementById('btnSign');
            if (username.trim().length < 6) {
                btnSign.classList.add('show');
                return false;
            }
            else {
                return true;
            }
        }
    </script>
</body>
</html>
