<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DiadanhCT.ascx.cs" Inherits="STRAVEL.DiadanhCT" %>
 <link rel="stylesheet" type="text/css" href="./vungmiencss.css" />
  <div class="giaodien">
            <img class="slide" src="./img/banner01.jpg" stt="0" />
            <img class="slide" src="./img/nen3.jpg " style=" display:none" stt="1" />
            <img class="slide" src="./img/banner03.jpg " style=" display:none " stt=" 2" />
            <img class="slide" src="./img/nen4.jpg" style="display:none " stt="3" />
            <img class="slide" src="./img/banner05.jpg" style="display:none " stt="4" />
            <img class="slide" src="./img/banner06.jpg" style="display:none " stt="5" />
            <a href="#" id="prev"><img src="./img/left.png" style="width:60px ; height:60px" /> </a>
            <a href="#" id="next"><img src="./img/right.png" style="width:60px ; height:60px" /> </a>

        </div>
<div class="body" style="width:100%;height:100% ;float:left">
        <div class="danhmuc" >
            <h3 style="width:100%;height:auto;text-align:center;font-size:30px;border-bottom:1px solid black">Các địa điểm nổi bật</h3>
            <ul class="danhmuc1" style="color:black">
                <li><a href="#">THÁC BẢN GIỐC</a></li>
                <li><a href="#">HANG SƠN ĐOÒNG</a></li>
                <li><a href="#">SAPA</a></li>
                <li><a href="#">GHỀNH ĐÁ DĨA</a></li>
                <li><a href="#">CÁP TREO VINPEARL NHA TRANG</a></li>
                <li><a href="#">ĐẢO PHÚ QUỐC</a></li>
                <li><a href="#">VƯỜN QUỐC GIA PHONG NHA- KẺ BÀNG</a></li>
                <li><a href="#">HỘI AN</a></li>
                <li><a href="#">CÁ NGUYÊN ĐÁ ĐỒNG VĂN</a></li>
                <li><a href="#">TRÀNG AN</a></li>
                <li><a href="#">NGÔ ĐỒNG</a></li>
                <li><a href="#">NHÀ HÁT LỚN HÀ NỘI</a></li>
                <li><a href="#">HUẾ</a></li>
                <li><a href="#">RUỘNG BẬC THANG</a></li>
                <li><a href="#">THAN UYÊN</a></li>
                <li><a href="#">LÀNG CHÀI AN BÀNH</a></li>
                <li><a href="#">VỊNH HẠ LONG</a></li>
                <li><a href="#">CÔN ĐẢO</a></li>
                <li><a href="#">QUỐC LỘ 4D</a></li>
                <li><a href="#">NHÀ THỜ ĐỨC BÀ SÀI GÒN</a></li>
                <li><a href="#">ĐÀ LẠT</a></li>
                <li><a href="#">VŨNG TÀU</a></li>

            </ul>
        </div>
    <%foreach (var  item in listdiadanh) 
      {%>
        <div class="diadiemvung1">
            <div class="hinhanhdiadiem" style="float:left;width:30%;height:100%"> <img style="width:100%;height:100%;float:left" src='<%="./diadiem/"+item.HinhAnh1 %>' /> </div>
            <div class="thongtin" style="float:left;width:70%;height:100%;text-align:center;color:black">
                <div class="ten_thongtin" style="float:left;width:100%;height:50%">
                    <h2><%=item.TenDD %></h2>
                    <p style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis;margin-left:5%"><%=item.ThongTinTT %> </p>
                    
                    <a href='<%="Chitietdiadanh.aspx?MaDD="+item.MaDD %>'>
                        <div class="chitiet" style="color:black;font-weight:bold;margin-left:40%;"><p>Xem Chi Tiết</p></div>
                    </a> 
                </div>
            </div>
        </div>  
    <%} %>
    <!--
        <div class="diadiemvung2">
            <div class="hinhanhdiadiem" style="float:left;width:30%;height:100%"> <img style="width:100%;height:100%;float:left" src="./img/culaocham.jpg" /> </div>
            <div class="thongtin" style="float:left;width:70%;height:100%;text-align:center;color:black">
                <div class="ten_thongtin" style="float:left;width:100%;height:50%">
                    <h2>Cù Lao Chàm </h2>
                    <p style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis;margin-left:5%">-Dù vẫn được coi là một hòn ngọc thô, nhưng Cù Lao Chàm đã và đang trở thành điểm đến cực kỳ hấp dẫn đối với rất nhiều du khách trong và ngoài nước mỗi khi tới Hội An. </p>
                    <p style="float:left;margin-left:5%;margin-top:-1.5%">-Vị Trí :Quảng Nam, Việt Nam</p>
                    <a href="#">
                        <div class="chitiet2" style="color:black;font-weight:bold"><p>Xem Chi Tiết</p></div>
                    </a>
                </div>
            </div>
        </div>
        <div class="diadiemvung3">
            <div class="hinhanhdiadiem" style="float:left;width:30%;height:100%"> <img style="width:100%;height:100%;float:left" src="./img/thanhdiams.jpg" /> </div>
            <div class="thongtin" style="float:left;width:70%;height:100%;text-align:center;color:black">
                <div class="ten_thongtin" style="float:left;width:100%;height:50%">
                    <h2>Thánh Địa Mỹ Sơn</h2>
                    <p style="white-space:nowrap;overflow:hidden;text-overflow:ellipsis;margin-left:5%">- Thánh địa Mỹ Sơn là một trong những địa điểm tham quan du lịch lý thú nhất tại miền Trung Việt Nam. Sở hữu nhiều đền đài cổ với phong cách kiến trúc đặc biệt, </p>
                    <p style="float:left;margin-left:5%;margin-top:-1.5%">-Vị Trí :Quảng Nam, Việt Nam.</p>
                    <a href="#">
                        <div class="chitiet3" style="color:black;font-weight:bold"><p >Xem Chi Tiết</p></div>
                    </a>
                </div>
            </div>
        </div>
    </div>