<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="BTL_WebBanHang.Product1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="Product.css"/>
    <title>Product</title>
    <style>
        /* Định dạng bộ lọc */
        .filter {
            font-family: Arial, sans-serif;
            margin: 20px;
            margin-left: 30px;
            display: flex;
        }

        .filter__heading {
            font-size: 16px ;
            color:rgb(112, 112, 112);
        }

        .filter__list {
            list-style-type: none;
            padding: 0;
            display: flex;
            margin-left: 10px ;
        }
        .filter__item{
            margin-left: 20px ;
        }

        .filter__item a {
            text-decoration: none;
            color:rgb(112, 112, 112);
            font-size: 1em;
        }

        .filter__item a:hover {
            text-decoration: underline;
        }
      
        .all-products_heading{
            margin-left: 30px;
            font-family: Arial, sans-serif;
        }
        all-products_brand-name h2 {
            color:rgb(112, 112, 112);
        }
        #error{
            color :#56d5d2 ;
            font-family: Arial, sans-serif;
            font-size: 16px ;
        }
        #tableProduct1{
            grid-column-start: 3;
            grid-column-end: 12;
            display: flex;
            flex-wrap: wrap;
        }
    </style>
</head>
<body>
    <form id="form" runat="server" onsubmit="return btnThem()">
    <div class="fix">
            <header class="header">
                <div class="tittle">
                    <p>Femme & Hazel</p>
                </div>
                <div action="" class="search">
                    <div class="box">
                        <input type="text" id="search_text" name="search" runat="server" class="search__box-text" placeholder="Tìm kiếm"/>
                        <button type="Submit" class="search__box-btn" id="search_button" runat="server" onserverclick="searchButton_Click">
                            <img src="img\logo_search.webp.png" alt="icon tìm kiếm" class="search__box-btn-icon"/>
                        </button>
                    </div>
                </div>

                <!-- icon -->
                 <div class="box-gh">
                    <button class="gh" type="button">
                        <a href="Cart.aspx">
                            <img src="img\giohang2.png" alt="" class="img-gh"/>
                        </a>
                    </button>
                </div>
                
                <div class="box-account">
                    <button class="account" type="button">
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
         <div class="banner">
            <div class="banner_img">
                <img src="img\banner_glasses.png" alt="Banner.img"/>
            </div>
         </div>

        <%-- bộ lọc  --%>
      <div class="filter">
        <h3 class="filter__heading">Bộ lọc | </h3>
        <ul class="filter__list">
            <li class="filter__item"><a href="Product.aspx?filter=01"  runat="server" >&le; 1 triệu</a></li>
            <li class="filter__item"><a href="Product.aspx?filter=02" runat="server" >1 - 3 triệu</a></li>
            <li class="filter__item"><a href="Product.aspx?filter=03" runat="server" >&ge; 3 triệu</a></li>
        </ul>
      </div>

      <div class="all-products_heading">
         <h2 class="all-products_brand-name" runat="server" id="all_products_brand_name" style="color:rgb(112, 112, 112);"></h2>
      </div>

         <!-- body-item -->
          <div class="container-body">
              <div id="tableProduct" name="tableProduct" runat="server"> </div>
              <div id="error" name="bang" runat="server"> </div>
              <div id="tableProduct1" name="tableProduct1" runat="server"> </div>
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
            <script>
                function btnThem() {
                    var search = document.getElementById('search_text').value;
                    var infoSearch = document.getElementById('all_products_brand_name');
                    if (search == "") {
                        infoSearch.innerHTML = 'Tìm kiếm đang trống, Vui lòng nhập tên sản phẩm';
                        tableProduct.innerHTML = '';
                        tableProduct1.innerHTML = '';
                        return false;
                    }
                }
            </script>
        </form>
</body>
</html>
