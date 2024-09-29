<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product_Detail.aspx.cs" Inherits="BTL_WebBanHang.src.img.Product_Detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="Product_Detail.css"/>
    <title>Product Detail</title>
</head>
<body>
    <form id="form1" runat="server" method="post">
        <div class="fix">
            <header class="header">
                <div class="tittle">
                    <p>Femme & Hazel</p>
                </div>
                <div class="search">
                    <div class="box">
                        <input type="text" class="search__box-text" placeholder="Search"/>
                        <button class="search__box-btn" type="button">
                            <img src="img/logo_search.webp.png" alt="icon tìm kiếm" class="search__box-btn-icon">
                        </button>
                    </div>
                </div>

                <!-- icon -->
                 <div class="box-gh">
                    <button class="gh" type="button">
                        <a href="Cart.aspx">
                            <img src="img/giohang2.png" alt="" class="img-gh"/>
                        </a>
                    </button>
                 </div>
                 <div class="box-account">
                    <button class="account" type="button">
                        <a href="Sign.aspx">
                            <img src="img/icon_account05.png" alt="" class="img-acc"/>
                        </a>
                    </button>
                     <div id="login" runat="server"></div>
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
       <!-- <div class="container-body" runat="server">
            <div class="body-contents" runat="server">
                
            <div class="body-contents__img">
                    <img class="body-contents__img--img" src="img/kinh01.jpeg" alt="Ảnh kính mắt">
                </div>
                <div class="body-contents__details">
                    <div class="body-contents__details-txt">
                        <a href="../Web.config">../Web.config</a>
                        <h1 class="body-contents__details-txt--inside">Kính mắt 001</h1>
                        <p class="body-contents__details-txt--inside body-contents__details-txt--inside-size"><b>$500</b></p>
                        <p class="body-contents__details-txt--inside body-contents__details-txt--inside-size">So.. I am 21 years old now! Iam really tired about my IT major, but iam still working hard, and styding english to get 700 point toeic certificate. I hope i will get a intern job by the first of next year.</p>
                    </div>
                    <div class="body-contents__details-btn">
                        <button class="body-contents__details-btn--add">Thêm vào giỏ hàng</button>
                    </div>
                </div> 
            </div>
        </div>-->
         
                    <div id="infoProduct" name="infoProduct" runat="server"></div>
                        

            


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
        </form>
</body>
</html>
