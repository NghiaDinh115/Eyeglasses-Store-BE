<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductManage.aspx.cs" Inherits="BTL_WebBanHang.src.CartManage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="ProductManage.css"/>
    <title>Quản lý sản phẩm</title>
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
        
         <!-- body-item -->
          <div class="container-body">
               <span id="ql_sanpham">

            <form action="" method="post" runat="server" onsubmit="return btnThem()" >
                <div class="auth__header">
                    <h2>Quản lý sản phẩm</h2>
                    <a  class="login" href="/web_bankinhmat/dangnhap.html"></a>
                </div>
                
                <div class="auth_form">
                    
                    <div class="form-control">
                        <label for="id_sp">Mã ID <i style=" color:red">*</i></label>
                        <input type="text" id="id_sp"  placeholder="8" name="id_sp" />
                        <p runat="server" id="username_error"></p>
                    </div>
                    <div class="form-control">
                        <label for="type_sp">Loại Sản Phẩm <i style=" color:red">*</i></label>
                        <input type="text" id="type_sp"  placeholder="kính" name="type_sp" />
                  
                    </div>
                    <div class="form-control">
                        <label for="username">TÊN SẢN PHẨM<i style=" color:red">*</i></label>
                        <input type="text" id="name_sp" placeholder="Kính râm 013" name="username"/>
                        <p runat="server" id="P1"></p>
                    </div>
                    
                    <div class="form-control">
                        <label for="img_sp">ẢNH SẢN PHẨM<i style=" color:red">*</i></label>
                        <input type="text" id="img_sp" placeholder="../src/img_KinhCan//kinhcan012.jpeg" name="img_sp"/>
                        <p></p>
                    </div>
                    
                    <div class="form-control">
                        <label for="dongia_sanpham">ĐƠN GIÁ<i style=" color:red">*</i></label>
                        <input type="text" id="dongia_sp" placeholder="50000" name="dongia_sanpham" />
                        <p></p>
                    </div>
                    
                    <div class="form-control">
                        <label for="mota_sanpham">MÔ TẢ SẢN PHẨM<i style=" color:red">*</i></label>
                        <input type="text" id="mota_sp" placeholder="Chất liệu Titan" name="mota_sanpham"/>
                        <p></p>
                    </div>
                    <div class="form-control">
                        <label for="tt_sp">Trạng thái<i style=" color:red">*</i></label>
                        <input type="text" id="tt_sp" placeholder="New/old" name="tt_sanpham"/>
                        <p></p>
                    </div>
                    
                    <p runat="server" id="btn_error" style="color:red"></p>

                    <div class="list_btn">
                        <button type="submit" class="add_btn" onclick="btnThem()" id="btnReg">Thêm</button>
                        <button type="button" class="del_btn" id="btnReg">Xoá  </button>
                        <button type="button" class="update_btn" id="update_btn" onserverclick="updateButton()">Update </button>
                    </div>
                </div>
            </form>
        </span>
      </div>

    <div class="container_table">
        <div class="table_product">
            <h3>Bảng thông tin sản phẩm</h3>
            <div id="box" runat="server" >
			    <table class="bang"></table>
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
           <script>
               function btnThem() {
                   var nameSP = document.getElementById('name_sp').value;
                   var id = document.getElementById('id_sp').value;
                   var type = document.getElementById('type_sp').value;
                   var img = document.getElementById('img_sp').value;
                   var price = document.getElementById('dongia_sp').value;
                   var detail = document.getElementById('mota_sp').value;
                   var info = document.getElementById('btn_error');
                   
                   if (id == "") {
                       info.innerHTML = 'Id đang trống, vui lòng nhập id';
                       return false;
                   }
                   if (type == "") {
                       info.innerHTML = 'type đang trống, vui lòng nhập type';
                       return false;
                   }
                   if (nameSP == "") {
                       info.innerHTML = 'Tên sản phẩm đang trống, vui lòng nhập tên';
                       return false;
                   }
                   if (img == "") {
                       info.innerHTML = 'Img đang trống, vui lòng nhập img';
                       return false;
                   }
                   if (price == "") {
                       info.innerHTML = 'Price đang trống, vui lòng nhập price';
                       return false;
                   }
                   if (detail == "") {
                       info.innerHTML = 'Detail đang trống, vui lòng nhập detail';
                       return false;
                   }
                   if (nameSP != "" && id != "" && type != "" && img != "" && price != "" && detail != "") {
                       return true;
                   }
               }
           </script>
</body>
</html>
