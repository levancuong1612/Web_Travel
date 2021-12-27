<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TrangChuCT.ascx.cs" Inherits="STRAVEL.TrangChuCT" %>

<link rel="stylesheet" type="text/css" href="./vungmiencss.css" />    
      <link rel="stylesheet" type="text/css" href="./giaodiencss.css" />

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
  <script type="text/javascript" >
      $(document).ready(function () {

          $('.post-wrapper').slick({
              slidesToShow: 5,
              slidesToScroll: 1,
              autoplay: true,
              autoplaySpeed: 2000,
              nextArrow: $('.next'),
              prevArrow: $('.prev'),
          });

      });</script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
        <script src="placeholderTypewriter.js"></script>
   
  <div class="giaodien" style="position:relative;width:100%">
      <div style="position:absolute;z-index:1;width:100%">
            <img class="slide" src='<%="./cauhinh/"+slide1.GiaTri %>' stt="0" />
            <img class="slide" src='<%="./cauhinh/"+slide2.GiaTri %>' style=" display:none" stt="1" />
            <img class="slide" src='<%="./cauhinh/"+slide3.GiaTri %>' style=" display:none " stt=" 2" />
            <img class="slide" src='<%="./cauhinh/"+slide4.GiaTri %>' style="display:none " stt="3" />
            <img class="slide" src='<%="./cauhinh/"+slide5.GiaTri %>' style="display:none " stt="4" />
            <img class="slide" src='<%="./cauhinh/"+slide6.GiaTri %>' style="display:none " stt="5" />
            <a href="#" id="prev"><img src="./img/left.png" style="width:60px ; height:60px" /> </a>
            <a href="#" id="next"><img src="./img/right.png" style="width:60px ; height:60px" /> </a>
      </div>
        <div style="position:absolute;z-index:2;margin-top:15%;margin-left:35%;color:#ffffff;font-weight:bold;font-size:50px">
           
             <p style="font-weight:bold" ><%=Tenweb.GiaTri %></p>
           
        

        </div>    
     <div style="position:absolute;z-index:2;margin-top:25%;margin-left:30%;width:610px;height:80px;background-color:rgba(0,0,0,0.5);padding:0px">
         <div style="height:47px;width:50px;float:left;background-color:#ffffff;margin-top:16px;margin-left:16px ;position:absolute;border-bottom-left-radius:7px;border-top-left-radius:7px">
             <img src="img/MAP.png" style="width:47%;height:48%;margin-top:12.5px;margin-left:11px" /></div>
          <form class="search-box_wrapper">
              
             <input class="search-box" type="text"  name="search" id="search"  style="width:400px; height:38px;margin-top:16PX;border-top-right-radius:7px;border-bottom-right-radius:7px;margin-left:60px;position:absolute;border:solid white" placeholder="nhập địa điểm cần tìm......."/>
           
                 <asp:TextBox class="search-box2"  type="text"  name="search" ID="txt_timkiem"  runat="server"></asp:TextBox>

                </form>
         
             <script type="text/javascript">
                 var placeholderText = [
           "Bạn Muốn Đi Đâu?",
           "Cần Thơ?",
           "Đà Lạt?",
           "Hà Nội?",
           "Đà Nẵng?"
         
                 ];

                 $('#search').placeholderTypewriter({
                     text: placeholderText,

                 });
             
    </script>     
     
            <div style="border-radius:7px; width:115px;height:35px;background-color:#ffd800;position:absolute;margin-left:480px;margin-top:16px; font-size:20px;padding-top:12px; text-align:center;font-weight:bold;color:white">
                <asp:Button class="btn_timkiem" ID="Button1" runat="server" Text="Tìm Kiếm" OnClick="Button1_Click4" />
                
             </div>
    
    
     </div>
        </div>
     <div class="hinhanh" style="position:relative;margin-top:44%;height:400px">
        <img class="img" src='<%="./cauhinh/"+banner.GiaTri %>' style="margin-bottom:20px;width:100%;height:100%" />
    </div>
       
        
        
    <div class="tieude"> Cùng nhau khám phá</div>
       
    <div style="width:100%;height:10%;float:left;text-align:center">
        <ul class="luachon ">
            <li class="vivu" style="cursor:pointer">
                <a id="vivu" onclick="myfunction1()">Vi Vu Việt Nam </a>
            </li>
            <li style="cursor:pointer">
                <a id="khampha" onclick="myfunction2()">Khám Phá Ẩm Thực</a>

            </li>
            <li style="cursor:pointer">
                <a id="vuichoi" onclick="myfunction3()">Vui Chơi Giải Trí</a>


            </li>
        </ul>
    </div>
        
    
    <div class="body" style=" display:flex;flex-direction: column;justify-content: space-around;align-items: center; width:100%;height:650px" stt="0" >
      
        <div class="divlon">
        
            <div class="div1">
                <a href='<%="Chitietdiadanh.aspx?MaDD="+info1.MaDD %>'>
                    <div class="hinhat1" style="width:230px;height:200px;position:absolute;z-index:1"><img style="width:100%;height:100%" src='<%="./diadiem/"+info1.HinhAnh1 %>' /></div>
                    <div class="nendiadiem1">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold"><%=info1.TenDD %></p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                        
                    </div>
                </a>
            </div>
            <div class="div2">
                <a href='<%="Chitietdiadanh.aspx?MaDD="+info2.MaDD %>'>
                    <div class="hinhat1" style="width:230px;height:200px;position:absolute;z-index:1"><img style="width:100%;height:100%" src='<%="./diadiem/"+info2.HinhAnh1 %>' /> </div>
                    <div class="nendiadiem2">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold"><%=info2.TenDD %></p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div3">
                <a href='<%="Chitietdiadanh.aspx?MaDD="+info3.MaDD %>'>
                    <div class="hinhat1" style="width:228px;height:200px;position:absolute;z-index:1"><img style="width:100%;height:100%" src='<%="./diadiem/"+info3.HinhAnh1 %>' /> </div>
                    <div class="nendiadiem3">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold"><%=info3.TenDD %></p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div4">
                <a href='<%="Chitietdiadanh.aspx?MaDD="+info4.MaDD %>'>
                    <div class="hinhat1" style="width:454px;height:402px;position:absolute;z-index:1">
                        <img style="width:100%;height:100%" src='<%="./diadiem/"+info4.HinhAnh1 %>'  />
                    </div>
                    <div class="nendiadiem4">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold"><%=info4.TenDD %></p>
                        <div class="chitietdiadiem4">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div5">
                <a href='<%="Chitietdiadanh.aspx?MaDD="+info5.MaDD %>'>
                    <div class="hinhat1" style="width:230px;height:200px;position:absolute;z-index:1"><img style="width:100%;height:100%" src='<%="./diadiem/"+info5.HinhAnh1 %>'  /></div>
                    <div class="nendiadiem5">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold"><%=info5.TenDD %></p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                    </div>
                </a>

            </div>
            <div class="div6">
                <a href='<%="Chitietdiadanh.aspx?MaDD="+info6.MaDD %>'>
                    <div class="hinhat1" style=" width: 228px; height: 200px; position: absolute; z-index: 1"><img style="width:100%;height:100%" src='<%="./diadiem/"+info6.HinhAnh1 %>'  /> </div>
                    <div class="nendiadiem6">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold"><%=info6.TenDD %></p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div7">
                <a href='<%="Chitietdiadanh.aspx?MaDD="+info7.MaDD %>'>
                    <div class="hinhat1" style="width:230px;height:200px;position:absolute;z-index:1"><img style="width:100%;height:100%" src='<%="./diadiem/"+info7.HinhAnh1 %>'  /></div>
                    <div class="nendiadiem7">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold"><%=info7.TenDD %></p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div8">
                <a href='<%="Chitietdiadanh.aspx?MaDD="+info8.MaDD %>'>
                    <div class="hinhat1" style=" width: 460px; height: 200px; position: absolute; z-index: 1"><img style="width:100%;height:100%" src='<%="./diadiem/"+info8.HinhAnh1 %>'  /></div>
                    <div class="nendiadiem8">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold"><%=info8.TenDD %></p>
                        <div class="chitietdiadiem8">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div9">
                <a href='<%="Chitietdiadanh.aspx?MaDD="+info9.MaDD %>'>
                    <div class="hinhat1" style=" width: 230px; height: 200px; position: absolute; z-index: 1"><img style="width:100%;height:100%" src="./diadiem/angiang.jpg" /></div>
                    <div class="nendiadiem9">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold">An Giang</p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                    </div>
                </a>
            </div>
          <div class="div10">
                <a href='<%="Chitietdiadanh.aspx?MaDD="+info10.MaDD %>'>
                    <div class="hinhat1" style=" width: 454px; height: 200px; position: absolute; z-index: 1"><img style="width:100%;height:100%" src="./diadiem/danang.jpg" /> </div>
                    <div class="nendiadiem10">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold">Đà Nẵng</p>
                        <div class="chitietdiadiem8">Chi Tiết</div>
                    </div>
                </a>
            </div>
        </div>
        </div>
    <div class="body " style=" display: none; width:100%;height:650px" stt="1">
        <div class="divlon">
            <div class="div1">
                <a href='<%="Chitietamthuc.aspx?MaAmThuc="+infoat1.MaAmThuc %>'>
                    <div class="hinhat1" style="width:230px;height:200px;position:absolute;z-index:1"><img style="width:100%;height:100%" src='<%="./amthuc/"+infoat1.HinhAnh1 %>' /> </div>
                    <div class="nendiadiem1">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold"><%=infoat1.TenAmThuc %></p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div2">
                <a href='<%="Chitietamthuc.aspx?MaAmThuc="+infoat2.MaAmThuc %>'>
                    <div class="hinhat1" style="width:230px;height:200px;position:absolute;z-index:1"><img style="width:100%;height:100%" src='<%="./amthuc/"+infoat2.HinhAnh1 %>' /> </div>
                    <div class="nendiadiem2">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold"><%=infoat2.TenAmThuc %></p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div3">
                <a href='<%="Chitietamthuc.aspx?MaAmThuc="+infoat3.MaAmThuc %>'>
                    <div class="hinhat1" style="width:228px;height:200px;position:absolute;z-index:1"><img style="width:100%;height:100%" src='<%="./amthuc/"+infoat3.HinhAnh1 %>'" /> </div>
                    <div class="nendiadiem3">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold"><%=infoat3.TenAmThuc %></p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div4">
                <a href='<%="Chitietamthuc.aspx?MaAmThuc="+infoat4.MaAmThuc %>'>
                    <div class="hinhat1" style="width:454px;height:402px;position:absolute;z-index:1">
                        <img style="width:100%;height:100%" src='<%="./amthuc/"+infoat4.HinhAnh1 %>' />
                    </div>
                    <div class="nendiadiem4">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold"><%=infoat4.TenAmThuc %></p>
                        <div class="chitietdiadiem4">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div5">
                <a href='<%="Chitietamthuc.aspx?MaAmThuc="+infoat5.MaAmThuc %>'>
                    <div class="hinhat1" style="width:230px;height:200px;position:absolute;z-index:1"><img style="width:100%;height:100%" src='<%="./amthuc/"+infoat5.HinhAnh1 %>' /></div>
                    <div class="nendiadiem5">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold"><%=infoat5.TenAmThuc %></p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                    </div>
                </a>

            </div>
            <div class="div6">
                <a href="#">
                    <div class="hinhat1" style=" width: 228px; height: 200px; position: absolute; z-index: 1"><img style="width:100%;height:100%" src="./amthuc/bunbohhue.jpg" /> </div>
                    <div class="nendiadiem6">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold">Bún Bò Huế</p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div7">
                <a href="#">
                    <div class="hinhat1" style="width:230px;height:200px;position:absolute;z-index:1"><img style="width:100%;height:100%" src="./amthuc/chamuc.jpg" /></div>
                    <div class="nendiadiem7">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold">Chả Mực</p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div8">
                <a href="#">
                    <div class="hinhat1" style=" width: 460px; height: 200px; position: absolute; z-index: 1"><img style="width:100%;height:100%" src="./amthuc/cuhudua.jpg" /></div>
                    <div class="nendiadiem8">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold">Gỏi Củ Hủ Dừa</p>
                        <div class="chitietdiadiem8">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div9">
                <a href="#">
                    <div class="hinhat1" style=" width: 230px; height: 200px; position: absolute; z-index: 1"><img style="width:100%;height:100%" src="./amthuc/comchaykhoquet.jpg" /></div>
                    <div class="nendiadiem9">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold">Cơm Cháy <br /> Kho Quẹt</p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div10">
                <a href="#">
                    <div class="hinhat1" style=" width: 454px; height: 200px; position: absolute; z-index: 1"><img style="width:100%;height:100%" src="./amthuc/banhxeo.jpg" /> </div>
                    <div class="nendiadiem10">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold">Bánh Xèo</p>
                        <div class="chitietdiadiem8">Chi Tiết</div>
                    </div>
                </a>
            </div>
        </div>
        </div>
    <div class="body " style="display:none; width: 100%; height: 650px" stt="2">
        <div class="divlon">
            <div class="div1">
                <a href="#">
                    <div class="hinhat1" style="width:230px;height:200px;position:absolute;z-index:1"><img style="width:100%;height:100%" src="./lehoi/lehoi1.jpg" /> </div>
                    <div class="nendiadiem1">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold">Đàn Ca <br /> Tài Tử</p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div2">
                <a href="#">
                    <div class="hinhat1" style="width:230px;height:200px;position:absolute;z-index:1"><img style="width:100%;height:100%" src="./lehoi/lehoi2.jpg" /> </div>
                    <div class="nendiadiem2">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold">Dân Ca <br /> Quan Họ</p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div3">
                <a href="#">
                    <div class="hinhat1" style="width:228px;height:200px;position:absolute;z-index:1"><img style="width:100%;height:100%" src="./lehoi/lehoi3.jpg" /> </div>
                    <div class="nendiadiem3">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold">Đua Voi</p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div4">
                <a href="#">
                    <div class="hinhat1" style="width:454px;height:402px;position:absolute;z-index:1">
                        <img style="width:100%;height:100%" src="./lehoi/lehoi4.jpg" />
                    </div>
                    <div class="nendiadiem4">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold">Ký Ức <br /> Hội An Show</p>
                        <div class="chitietdiadiem4">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div5">
                <a href="#">
                    <div class="hinhat1" style="width:230px;height:200px;position:absolute;z-index:1"><img style="width:100%;height:100%" src="./lehoi/lehoi5.jpg" /></div>
                    <div class="nendiadiem5">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold">Cải Lương</p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                    </div>
                </a>

            </div>
            <div class="div6">
                <a href="#">
                    <div class="hinhat1" style=" width: 228px; height: 200px; position: absolute; z-index: 1"><img style="width:100%;height:100%" src="./lehoi/lehoi6.jpg" /> </div>
                    <div class="nendiadiem6">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold">Hát Bài Chòi</p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div7">
                <a href="#">
                    <div class="hinhat1" style="width:230px;height:200px;position:absolute;z-index:1"><img style="width:100%;height:100%" src="./lehoi/lehoi7.jpg" /></div>
                    <div class="nendiadiem7">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold">Nhã Nhạc <br /> Cung Đình Huế</p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div8">
                <a href="#">
                    <div class="hinhat1" style=" width: 460px; height: 200px; position: absolute; z-index: 1"><img style="width:100%;height:100%" src="./lehoi/lehoi8.jpg" /></div>
                    <div class="nendiadiem8">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold">Cồng Chiêng <br /> Tây Nguyên</p>
                        <div class="chitietdiadiem8">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div9">
                <a href="#">
                    <div class="hinhat1" style=" width: 230px; height: 200px; position: absolute; z-index: 1"><img style="width:100%;height:100%" src="./lehoi/lehoi10.jpg" /></div>
                    <div class="nendiadiem9">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold">Đàn Ca <br /> Nam Bộ</p>
                        <div class="chitietdiadiem">Chi Tiết</div>
                    </div>
                </a>
            </div>
            <div class="div10">
                <a href="#">
                    <div class="hinhat1" style=" width: 454px; height: 200px; position: absolute; z-index: 1"><img style="width:100%;height:100%" src="./lehoi/lehoi11.jpg" /> </div>
                    <div class="nendiadiem10">
                        <p class="name" style="text-align:center;font-size:25px;color:#ffffff;font-weight:bold">Kéo Co</p>
                        <div class="chitietdiadiem8">Chi Tiết</div>
                    </div>
                </a>
            </div>
        </div>
        </div>
    


     

<h1 style="color:#00ffff ;display: flex;flex-direction: column;justify-content: space-around;align-items: center;">Bài Viết Nổi Bật</h1>

    
    <div class="page-wrapper">
        <div class="post-slider" >       
            <i class="fas fa-chevron-circle-left prev" style="font-size:3em;margin-left:9%;margin-top:10%;color:#808080;position:absolute;z-index:3"></i>
            <i class="fas fa-chevron-circle-right next" style="font-size:3em;margin-left:88%;cursor:pointer;margin-top:10%;color:#808080;position:absolute;z-index:3"></i>
            <div class="post-wrapper" style=" width: 80%; height: 350px; margin: 0px auto; overflow: hidden; ">
                <%foreach (var item in listtintuc)
                  { %>
                <div class="post" style=" margin-left:10px; background-color: #ffffff; display: inline-block; width: 100px; height: 350px">

                
                        <div class="tin" style="width:100%;height:350px;background-color:#ffffff;margin-left:20px">
                            <a href='<%="Chitiettintuc.aspx?MaTin="+item.MaTin %>'>
                            <img style="width:100%;height:280px" src='<%="./tintuc/"+ item.HinhAnh%>' />
                            <p class="tieude" style="width:100%;height:50px;font-weight:bold;font-size:16px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;"><%=item.TieuDe %></p>
                            </a>
                        </div>
                       
                  
                </div>
                <%} %>
              

            </div>
              

        </div>
    </div>
   <div class="noibat">
            <div class="tinhot" style="font-weight:bold">Bài Viết Mới Nhất</div>
       <%foreach (var item in listtintucmoi)
         { %>
            <a class="tin" href='<%="Chitiettintuc.aspx?MaTin="+item.MaTin %>'>
                <div class="tinhot1" style="margin-right:5%;margin-bottom:10%">
                    <div class="hand1" style="width:100%;height:100%">
                        <img src='<%="./tintuc/"+item.HinhAnh%>' style="width:100%;height:100%" />
                    </div>
                    <div class="nd1" style="font-size:35px;font-weight:bold;"><%=item.TieuDe %></div>
                </div>

            </a>

         <%} %>

        </div>

    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

