<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdminCT.ascx.cs" Inherits="STRAVEL.UI.AdminCT" %>
<%@ Register assembly="FredCK.FCKeditorV2" namespace="FredCK.FCKeditorV2" tagprefix="FCKeditorV2" %>

<link rel="stylesheet" type="text/css" href="../Admincss.css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-1.8.3.min.js">
        </script>
        <script type="text/javascript">
            $(document).ready(function () {

                var stt = 0;
                stardiv = $("div.noidungdang:first").attr("stt");
                enddiv = $("div.noidungdang:last").attr("stt");
                $("div.noidungdang").each(function () {
                    if ($(this).is(':visible'))
                        stt = $(this).attr("stt");
                });
                $("#diadanh").click(function () {
                    stt = 0;
                    diadanh = stt;
                    $("div.noidungdang").hide();
                    $("div.noidungdang").eq(diadanh).show();
                })
                $("#disan").click(function () {
                    stt = 1;
                    disan = stt;
                    $("div.noidungdang").hide();
                    $("div.noidungdang").eq(disan).show();
                })
                $("#amthuc").click(function () {
                    stt = 2;
                    amthuc = stt;
                    $("div.noidungdang").hide();
                    $("div.noidungdang").eq(amthuc).show();
                })
                $("#tintuc").click(function () {
                    stt = 3;
                    tintuc = stt;
                    $("div.noidungdang").hide();
                    $("div.noidungdang").eq(tintuc).show();
                })


            });
        
        </script>
        <script type="text/javascript">
            $(document).ready(function () {

                var stt = 0;
                stardiv = $("div.noidungmenu:first").attr("stt");
                enddiv = $("div.noidungmenu:last").attr("stt");
                $("div.noidungmenu").each(function () {
                    if ($(this).is(':visible'))
                        stt = $(this).attr("stt");
                });
                $("#hot").click(function () {
                    stt = 0;
                    hot = stt;
                    $("div.noidungmenu").hide();
                    $("div.noidungmenu").eq(hot).show();
                })
                $("#dangbai").click(function () {
                    stt = 1;
                    dangbai = stt;
                    $("div.noidungmenu").hide();
                    $("div.noidungmenu").eq(dangbai).show();
                })
                $("#duyetnguoidung").click(function () {
                    stt = 2;
                    duyetnguoidung = stt;
                    $("div.noidungmenu").hide();
                    $("div.noidungmenu").eq(duyetnguoidung).show();
                })
                $("#taikhoan").click(function () {
                    stt= 3;
                    taikhoan = stt;
                    $("div.noidungmenu").hide();
                    $("div.noidungmenu").eq(taikhoan).show();
                })

                $("#quanlybaidang").click(function () {
                    stt = 4;
                    quanlybaidang = stt;
                    $("div.noidungmenu").hide();
                    $("div.noidungmenu").eq(quanlybaidang).show();
                })
                $("#chinhsua").click(function () {
                    stt = 5;
                    chinhsua = stt;
                    $("div.noidungmenu").hide();
                    $("div.noidungmenu").eq(chinhsua).show();
                })

            });

                </script>
        <script type="text/javascript" src="hieuungjs.js"></script>
<div class="bodyadmin" style="background-image:url(./diadiem/nenweb4.jpg);height:auto">
    <div style="position:absolute;z-index:1">
    <img style="width:100%;height:100%" src="../diadiem/nenweb4.jpg" />
    </div>
     
    <div class="trangchu" style="width:80%;height:auto;margin-left:10%;margin-top:10%;display:flex;flex-direction:column" >
        <div class="thanhtieude">
            <div style="width:60px;height:100%;display:flex">
                <img style="width:100%;height:100%" src=<%="./cauhinh/"+cauhinh.GiaTri %> />
                <div style="width:40%;height:100%;color:#ffffff"><h4 style="margin-top:80%">STRAVELADMIN</h4></div>
            </div>
        </div>
        <div class="thanhnoidung">
            <div class="menuadmin" >
                <div class="taikhoanad">
                    <div class="hinhanhad">
                        <img  src='<%="./admin/"+info.HinhAnh %>'/>
                    </div>
                    <div class="adname">
                        <h3 style="height:10px"><%=info.HoTen %></h3>
                        <p style="font-style:italic">ID:<%=info.ID %></p>
                    </div>
                </div>
                <div class="quanlytrangchu" id="hot">
                    <h2 style="width:80%;margin-left:20%;height:100%;text-align:left" >Hot</h2>
                </div>
                <div class="dangbai" id="dangbai">
                    
                    <asp:Button class="btn_dangbai"   ID="Button5" runat="server" Text="Đăng Bài" OnClick="Button5_Click" />
                </div>
                <div class="chinhsuaad" id="chinhsua">
                    <h2 style="width:80%;margin-left:20%;height:100%;text-align:left" >Chỉnh Sửa</h2>
                </div>
                <div class="dangxuat" id="taikhoan">
                    <h2 style="width:80%;margin-left:20%;height:100%;text-align:left" >Tài Khoản</h2>
                </div>
                  <div class="dangxuat" id="duyetnguoidung">
                    <h2 style="width:80%;margin-left:20%;height:100%;text-align:left" >Duyệt Bài Đăng</h2>

                </div>
                <div class="dangxuat" id="quanlybaidang">
                    <h2 style="width:80%;margin-left:20%;height:100%;text-align:left" >Quản Lý Bài Đăng</h2>

                </div>
            </div>
            <div class="noidungmenu" stt="0">
                <div style="width:100%;height:15%"><h1>Hot</h1></div>
                <div class="luotxem" style="width:100%;height:30%;display: flex;justify-content: space-between;">
                    
                    <div style=" width:24%;height:70%;border-right:1px solid rgba(128, 128, 128,0.5);margin-left:2%;text-align:center;background-color:#ffffff;display:flex;flex-direction:column">
                        <h3 style="width:100%;height:30%">Địa Điểm</h3>
                        <p style="width:100%;height:70%;font-size:40px;font-weight:bold;margin-top:-5%">
                             <%=luotxemdd %>
                        </p>
                       
                    </div>
                   
                    <div style="width:24%;height:70%;background-color:#ffffff;border-right:1px solid rgba(128, 128, 128,0.5);text-align:center;display:flex;flex-direction:column">
                        <h3 style="width:100%;height:30%">Di Sản</h3>
                        <p style="width:100%;height:70%;font-size:40px;font-weight:bold;margin-top:-5%">
                             <%=luotxemds %>
                        </p>

                    </div>
                    <div style="width:24%;height:70%;background-color:#ffffff;border-right:1px solid rgba(128, 128, 128,0.5);text-align:center;display:flex;flex-direction:column">
                        <h3 style="width:100%;height:30%">Ẩm Thực</h3>
                        <p style="width:100%;height:70%;font-size:40px;font-weight:bold;margin-top:-5%">
                             <%=luotxemat %>
                        </p>

                    </div>
                    <div style="width:24%;height:70%;background-color:#ffffff;border-right:1px solid rgba(128, 128, 128,0.5);text-align:center;margin-right:2%;display:flex;flex-direction:column">
                        <h3 style="width:100%;height:30%">Tin Tức</h3>
                        <p style="width:100%;height:70%;font-size:40px;font-weight:bold;margin-top:-5%">
                             <%=luotxemtt %>
                        </p>

                    </div>
                </div>
                <div style="width:96%;height:50%;display:flex;flex-direction:column;background-color:#ffffff;margin-left:2%"> 
                    <h3 style="height:10%;margin-left:2%;width:96%;background-color:#ffffff">Người Dùng Hot</h3>
                    <div style="width:96%;height:90%;background-color:#ffffff;border:1px solid;margin-left:2%;display:flex;flex-direction:column;overflow-y:auto">
                         <%foreach(var item in listndhot)
                          { %>
                       
                        <table >
                            <tr style="height:80px;border-bottom:1px solid" >
                                <th style="border-bottom:0.5px solid;width:20%;height:80px">
                                   <img style="width:100px;height:100px" src='<%="./admin/"+item.HinhAnh %>'>
                                </th>
                                <th style="border-bottom:0.5px solid;width:100px;text-align:left">ID:<% =item.ID %></th>
                                <th style="border-bottom:0.5px solid;width:200px;text-align:left">Tên:<%=item.HoTen %></th>
                                <th style="border-bottom:0.5px solid;width:100px;text-align:left">Số Bài Đăng:<%=item.Sobaidang %></th>
                                <th style="border-bottom:0.5px solid;width:200px;text-align:left">Email:<%=item.Email %></th>
                            </tr>
                            
                        </table>
                        
                        <%} %>
                    </div>
                </div>
            </div>
            <div class="noidungmenu" style="display:none;" stt="1" >
            
              <h2 style="width:100%;text-align:center;height:50px">Đăng Bài</h2>
         
          
                <ul style="text-decoration:none;  display: flex;justify-content: center;font-size:25px;font-weight:bold">
                    <li id="diadanh" style="margin-right:70px;width:150px;height:40px;background-color:#ffffff;text-align:center;cursor:pointer" >Địa Danh</li>
                    <li id="disan" style="margin-right:70px;width:150px;height:40px;background-color:#ffffff;text-align:center;cursor:pointer">Di Sản</li>
                    <li id="amthuc" style="margin-right:70px;width:150px;height:40px;background-color:#ffffff;text-align:center;cursor:pointer">Ẩm Thực</li>
                    <li id="tintuc" style="margin-right:70px;width:150px;height:40px;background-color:#ffffff;text-align:center;cursor:pointer">Tin Tức</li>
                </ul>
          
        <div class="noidungdang" style="width:100%;height:auto;margin-top:-30px;margin-bottom:40px;background-color:#ffffff;overflow-y:auto" stt="0">
            <h2 style="width:100%;text-align:center">Đăng Địa Điểm</h2>
            <div style="display:flex;justify-content:space-between">
                <asp:Label class="lbl_vitri" ID="Label36" runat="server" Text="Vị Trí"></asp:Label><br />
                </div>
            <div style="display:flex;justify-content:space-between">
                 <asp:DropDownList class="list" ID="drop_tinh" runat="server" AutoPostBack="true"></asp:DropDownList><br />
            </div>
             <div style="display: flex;justify-content: space-between;">

            <asp:Label class="lbl_tendiadiem" ID="Label1" runat="server" Text="Tiêu Đề"></asp:Label>
            <asp:Label class="lbl_thongtin" ID="Label2" runat="server" Text="Thông Tin"></asp:Label>
            <asp:Label class="lbl_hinhanh" ID="Label3" runat="server" Text="Hình Ảnh"></asp:Label><br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiem" ID="txt_tendiadiem" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidung" ID="txt_thongtin" TextMode="MultiLine" runat="server"></asp:TextBox>
                <asp:FileUpload class="hinhanh" ID="FileUpload1" runat="server"  /><br />
            </div>
            <br />
             <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label4" runat="server" Text="Tiêu Đề 1"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label5" runat="server" Text="Nội Dung 1"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label6" runat="server" Text="Hình Ảnh1"></asp:Label><br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiem" ID="txt_tieude1" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidung" ID="txt_noidung1" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanh" ID="FileUploadanh1" runat="server" /><br />
            </div>
              <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label7" runat="server" Text="Tiêu Đề 2"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label8" runat="server" Text="Nội Dung 2"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label9" runat="server" Text="Hình Ảnh 2"></asp:Label><br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiem" ID="txt_tieude2" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidung" ID="txt_noidung2" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanh" ID="FileUploadanh2" runat="server" /><br />
            </div>

              <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label10" runat="server" Text="Tiêu Đề 3"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label11" runat="server" Text="Nội Dung 3"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label12" runat="server" Text="Hình Ảnh 3"></asp:Label><br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiem" ID="txt_tieude3" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidung" ID="txt_noidung3" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanh" ID="FileUploadanh3" runat="server" /><br />
            </div>

            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label13" runat="server" Text="Tiêu Đề 4"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label14" runat="server" Text="Nội Dung 4"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label15" runat="server" Text="Hình Ảnh 4"></asp:Label><br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiem" ID="txt_tieude4" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidung" ID="txt_noidung4" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanh" ID="FileUploadanh4" runat="server" /><br />
            </div>
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label16" runat="server" Text="Tiêu Đề 5"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label17" runat="server" Text="Nội Dung 5"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label18" runat="server" Text="Hình Ảnh 5"></asp:Label><br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiem" ID="txt_tieude5" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidung" ID="txt_noidung5" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanh" ID="FileUploadanh5" runat="server" /><br />
            </div>
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label19" runat="server" Text="Tiêu Đề 6"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label20" runat="server" Text="Nội Dung 6"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label21" runat="server" Text="Hình Ảnh 6"></asp:Label><br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiem" ID="txt_tieude6" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidung" ID="txt_noidung6" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanh" ID="FileUploadanh6" runat="server" /><br />
            </div>
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label22" runat="server" Text="Tiêu Đề 7"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label23" runat="server" Text="Nội Dung 7"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label24" runat="server" Text="Hình Ảnh 7"></asp:Label><br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiem" ID="txt_tieude7" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidung" ID="txt_noidung7" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanh" ID="FileUploadanh7" runat="server" /><br />
            </div>
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label25" runat="server" Text="Tiêu Đề 8"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label26" runat="server" Text="Nội Dung 8"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label27" runat="server" Text="Hình Ảnh 8"></asp:Label><br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiem" ID="txt_tieude8" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidung" ID="txt_noidung8" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanh" ID="FileUploadanh8" runat="server" /><br />
            </div>
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label28" runat="server" Text="Tiêu Đề 9"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label29" runat="server" Text="Nội Dung 9"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label30" runat="server" Text="Hình Ảnh 9"></asp:Label><br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiem" ID="txt_tieude9" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidung" ID="txt_noidung9" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanh" ID="FileUploadanh9" runat="server" /><br />
            </div>
            
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label31" runat="server" Text="Tiêu Đề 10"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label32" runat="server" Text="Nội Dung 10"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label33" runat="server" Text="Hình Ảnh 10"></asp:Label><br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiem" ID="txt_tieude10" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidung" ID="txt_noidung10" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanh" ID="FileUploadanh10" runat="server" /><br />
            </div>
            <h5>Thông Tin Phụ </h5>
             <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label34" runat="server" Text="Tiêu Đề Phụ"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label35" runat="server" Text="Hình Ảnh Phụ"></asp:Label>
                 <asp:Label class="lbl_hinhanh" ID="Label38" runat="server" Text="Vị Trí"></asp:Label><br />
                
                  <asp:Label class="lbl_hinhanh" ID="Label37" runat="server" Text="Thành Lập"></asp:Label><br />
                  
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tieudephu" ID="txt_tieudephu" runat="server"></asp:TextBox>
                <asp:FileUpload  class="hinhanhphu" ID="FileUploadanhphu" runat="server" /><br />
                <asp:TextBox class="txt_tieudephu" ID="txt_vitri" runat="server"></asp:TextBox>
               
                <asp:TextBox class="txt_thanhlap" ID="txt_thanhlap" TextMode="MultiLine" runat="server"></asp:TextBox>
                 
               
            </div>
                <asp:Button class="btn_dang" ID="Button1" runat="server" Text="Đăng Bài" OnClick="Button1_Click1" />

        </div>


        <div class="noidungdang" style="width:100%;height:auto;margin-top:-30px  ;background-color:#ffffff;display:none;overflow-y:auto" stt="1">
              <h2 style="width:100%;text-align:center">Đăng Di Sản</h2>
             <div style="display: flex;justify-content: space-between;">

            <asp:Label class="lbl_tendiadiem" ID="Label39" runat="server" Text="Tên Di Sản"></asp:Label>
            
                 <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_tendisan" runat="server"></asp:TextBox>
         
                 <br />

            </div>
            <br />
             <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label42" runat="server" Text="Tiêu Đề 1"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label43" runat="server" Text="Nội Dung 1"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label44" runat="server" Text="Hình Ảnh1"></asp:Label>
                   <asp:Label class="lbl_hinhanh" ID="Label78" runat="server" Text="Phụ Đề"></asp:Label>     <br />

              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_dstieude1" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_dsnoidung1" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhds1" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_dsphude1" runat="server"></asp:TextBox><br />
            </div>
              <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label45" runat="server" Text="Tiêu Đề 2"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label46" runat="server" Text="Nội Dung 2"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label47" runat="server" Text="Hình Ảnh 2"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label79" runat="server" Text="Phụ Đề"></asp:Label>       
                  <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_dstieude2" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_dsnoidung2" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhds2" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_dsphude2" runat="server"></asp:TextBox><br />
            </div>

              <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label48" runat="server" Text="Tiêu Đề 3"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label49" runat="server" Text="Nội Dung 3"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label50" runat="server" Text="Hình Ảnh 3"></asp:Label>
                 <asp:Label class="lbl_hinhanh" ID="Label80" runat="server" Text="Phụ Đề"></asp:Label>        
                  <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_dstieude3" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_dsnoidung3" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhds3" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_dsphude3" runat="server"></asp:TextBox><br />
            </div>

            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label51" runat="server" Text="Tiêu Đề 4"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label52" runat="server" Text="Nội Dung 4"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label53" runat="server" Text="Hình Ảnh 4"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label81" runat="server" Text="Phụ Đề"></asp:Label>     
                <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_dstieude4" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_dsnoidung4" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhds4" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_dsphude4" runat="server"></asp:TextBox><br />
            </div>
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label54" runat="server" Text="Tiêu Đề 5"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label55" runat="server" Text="Nội Dung 5"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label56" runat="server" Text="Hình Ảnh 5"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label82" runat="server" Text="Phụ Đề"></asp:Label>     
                <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_dstieude5" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_dsnoidung5" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhds5" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_dsphude5" runat="server"></asp:TextBox><br />
            </div>
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label57" runat="server" Text="Tiêu Đề 6"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label58" runat="server" Text="Nội Dung 6"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label59" runat="server" Text="Hình Ảnh 6"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label83" runat="server" Text="Phụ Đề"></asp:Label>     
                <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_dstieude6" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_dsnoidung6" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhds6" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_dsphude6" runat="server"></asp:TextBox><br />
            </div>
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label60" runat="server" Text="Tiêu Đề 7"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label61" runat="server" Text="Nội Dung 7"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label62" runat="server" Text="Hình Ảnh 7"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label84" runat="server" Text="Phụ Đề"></asp:Label>     
                <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_dstieude7" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_dsnoidung7" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhds7" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_dsphude7" runat="server"></asp:TextBox><br />
            </div>
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label63" runat="server" Text="Tiêu Đề 8"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label64" runat="server" Text="Nội Dung 8"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label65" runat="server" Text="Hình Ảnh 8"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label85" runat="server" Text="Phụ Đề"></asp:Label>     
                <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_dstieude8" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_dsnoidung8" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhds8" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_dsphude8" runat="server"></asp:TextBox><br />
            </div>
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label66" runat="server" Text="Tiêu Đề 9"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label67" runat="server" Text="Nội Dung 9"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label68" runat="server" Text="Hình Ảnh 9"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label86" runat="server" Text="Phụ Đề"></asp:Label>     
                <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_dstieude9" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_dsnoidung9" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhds9" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_dsphude9" runat="server"></asp:TextBox><br />
            </div>
            
        
            <h5>Thông Tin Phụ </h5>
             <div style="display: flex;justify-content: space-between;">

                 <asp:Label class="lbl_tendiadiem" ID="Label40" runat="server" Text="Tiêu Đề Phụ"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label41" runat="server" Text="Hình Ảnh Phụ"></asp:Label>
                 <asp:Label class="lbl_hinhanh" ID="Label72" runat="server" Text="Công Nhận"></asp:Label><br />
                <asp:Label class="lbl_hinhanh" ID="Label73" runat="server" Text="Kiểu "></asp:Label><br />
                  <asp:Label class="lbl_hinhanh" ID="Label74" runat="server" Text="Thêm"></asp:Label><br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tieudephu" ID="txt_dstieudephu" runat="server"></asp:TextBox>
                <asp:FileUpload  class="hinhanhphu" ID="FileUploadanhdsphu" runat="server" /><br />
                <asp:TextBox class="list" ID="txt_dsnam" TextMode="MultiLine" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_tieudephu" ID="txt_dskieu" runat="server"></asp:TextBox>
               
                <asp:TextBox class="txt_thanhlap" ID="txt_dsthem" TextMode="MultiLine" runat="server"></asp:TextBox>
                 
               
            </div>
            <asp:Button class="btn_dang" ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
        </div>
        <div class="noidungdang" style="width:100%;height:auto;margin-top:-30px;background-color:#ffffff;display:none;overflow-y:auto" stt="2">
                    <h2 style="width:100%;text-align:center">Đăng Ẩm thực</h2>
             <div style="display: flex;justify-content: space-between;">

            <asp:Label class="lbl_tendiadiem" ID="Label75" runat="server" Text="Tên Ẩm Thực"></asp:Label>
            
                 <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_tenamthuc" runat="server"></asp:TextBox>
         
                 <br />

            </div>
            <br />
             <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label76" runat="server" Text="Tiêu Đề 1"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label77" runat="server" Text="Nội Dung 1"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label88" runat="server" Text="Hình Ảnh1"></asp:Label>
                   <asp:Label class="lbl_hinhanh" ID="Label89" runat="server" Text="Phụ Đề"></asp:Label>     <br />

              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_attieude1" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_atnoidung1" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhat1" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_atphude1" runat="server"></asp:TextBox><br />
            </div>
              <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label90" runat="server" Text="Tiêu Đề 2"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label91" runat="server" Text="Nội Dung 2"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label92" runat="server" Text="Hình Ảnh 2"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label93" runat="server" Text="Phụ Đề"></asp:Label>       
                  <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_attieude2" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_atnoidung2" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhat2" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_atphude2" runat="server"></asp:TextBox><br />
            </div>

              <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label94" runat="server" Text="Tiêu Đề 3"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label95" runat="server" Text="Nội Dung 3"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label96" runat="server" Text="Hình Ảnh 3"></asp:Label>
                 <asp:Label class="lbl_hinhanh" ID="Label97" runat="server" Text="Phụ Đề"></asp:Label>        
                  <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_attieude3" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_atnoidung3" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhat3" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_atphude3" runat="server"></asp:TextBox><br />
            </div>

            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label98" runat="server" Text="Tiêu Đề 4"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label99" runat="server" Text="Nội Dung 4"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label100" runat="server" Text="Hình Ảnh 4"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label101" runat="server" Text="Phụ Đề"></asp:Label>     
                <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_attieude4" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_atnoidung4" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhat4" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_atphude4" runat="server"></asp:TextBox><br />
            </div>
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label102" runat="server" Text="Tiêu Đề 5"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label103" runat="server" Text="Nội Dung 5"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label104" runat="server" Text="Hình Ảnh 5"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label105" runat="server" Text="Phụ Đề"></asp:Label>     
                <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_attieude5" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_atnoidung5" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhat5" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_atphude5" runat="server"></asp:TextBox><br />
            </div>
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label106" runat="server" Text="Tiêu Đề 6"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label107" runat="server" Text="Nội Dung 6"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label108" runat="server" Text="Hình Ảnh 6"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label109" runat="server" Text="Phụ Đề"></asp:Label>     
                <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_attieude6" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_atnoidung6" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhat6" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_atphude6" runat="server"></asp:TextBox><br />
            </div>
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label110" runat="server" Text="Tiêu Đề 7"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label111" runat="server" Text="Nội Dung 7"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label112" runat="server" Text="Hình Ảnh 7"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label113" runat="server" Text="Phụ Đề"></asp:Label>     
                <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_attieude7" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_atnoidung7" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhat7" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_atphude7" runat="server"></asp:TextBox><br />
            </div>
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label114" runat="server" Text="Tiêu Đề 8"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label115" runat="server" Text="Nội Dung 8"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label116" runat="server" Text="Hình Ảnh 8"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label117" runat="server" Text="Phụ Đề"></asp:Label>     
                <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_attieude8" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_atnoidung8" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhat8" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_atphude8" runat="server"></asp:TextBox><br />
            </div>
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label118" runat="server" Text="Tiêu Đề 9"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label119" runat="server" Text="Nội Dung 9"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label120" runat="server" Text="Hình Ảnh 9"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label121" runat="server" Text="Phụ Đề"></asp:Label>     
                <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_attieude9" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_atnoidung9" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhat9" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_atphude9" runat="server"></asp:TextBox><br />
            </div>
            
            <asp:Button  class="btn_dang" ID="Button3" runat="server" Text="Button" OnClick="Button3_Click" />
            
        </div>
        <div class="noidungdang" style="width:100%;height:auto;margin-top:-30px;background-color:#ffffff;display:none;overflow-y:auto" stt="3">
                <h2 style="width:100%;text-align:center">Đăng Tin Tức</h2>
             <div style="display: flex;justify-content: space-between;">

            <asp:Label class="lbl_tendiadiem" ID="Label69" runat="server" Text="Tiêu Đề Tin"></asp:Label>
            
                 <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_tttieude" runat="server"></asp:TextBox>
         
                 <br />

            </div>
            <br />
             <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label70" runat="server" Text="Tiêu Đề 1"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label71" runat="server" Text="Nội Dung 1"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label87" runat="server" Text="Hình Ảnh1"></asp:Label>
                   <asp:Label class="lbl_hinhanh" ID="Label122" runat="server" Text="Phụ Đề"></asp:Label>     <br />

              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_tttieude1" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_ttnoidung1" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhtt1" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_ttphude1" runat="server"></asp:TextBox><br />
            </div>
              <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label123" runat="server" Text="Tiêu Đề 2"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label124" runat="server" Text="Nội Dung 2"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label125" runat="server" Text="Hình Ảnh 2"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label126" runat="server" Text="Phụ Đề"></asp:Label>       
                  <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_tttieude2" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_ttnoidung2" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhtt2" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_ttphude2" runat="server"></asp:TextBox><br />
            </div>

              <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label127" runat="server" Text="Tiêu Đề 3"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label128" runat="server" Text="Nội Dung 3"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label129" runat="server" Text="Hình Ảnh 3"></asp:Label>
                 <asp:Label class="lbl_hinhanh" ID="Label130" runat="server" Text="Phụ Đề"></asp:Label>        
                  <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_tttieude3" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_ttnoidung3" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhtt3" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_ttphude3" runat="server"></asp:TextBox><br />
            </div>

            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label131" runat="server" Text="Tiêu Đề 4"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label132" runat="server" Text="Nội Dung 4"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label133" runat="server" Text="Hình Ảnh 4"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label134" runat="server" Text="Phụ Đề"></asp:Label>     
                <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_tttieude4" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_ttnoidung4" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhtt4" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_ttphude4" runat="server"></asp:TextBox><br />
            </div>
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label135" runat="server" Text="Tiêu Đề 5"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label136" runat="server" Text="Nội Dung 5"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label137" runat="server" Text="Hình Ảnh 5"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label138" runat="server" Text="Phụ Đề"></asp:Label>     
                <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_tttieude5" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_ttnoidung5" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhtt5" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_ttphude5" runat="server"></asp:TextBox><br />
            </div>
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label139" runat="server" Text="Tiêu Đề 6"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label140" runat="server" Text="Nội Dung 6"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label141" runat="server" Text="Hình Ảnh 6"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label142" runat="server" Text="Phụ Đề"></asp:Label>     
                <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_tttieude6" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_ttnoidung6" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhtt6" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_ttphude6" runat="server"></asp:TextBox><br />
            </div>
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label143" runat="server" Text="Tiêu Đề 7"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label144" runat="server" Text="Nội Dung 7"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label145" runat="server" Text="Hình Ảnh 7"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label146" runat="server" Text="Phụ Đề"></asp:Label>     
                <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_tttieude7" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_ttnoidung7" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhtt7" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_ttphude7" runat="server"></asp:TextBox><br />
            </div>
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label147" runat="server" Text="Tiêu Đề 8"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label148" runat="server" Text="Nội Dung 8"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label149" runat="server" Text="Hình Ảnh 8"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label150" runat="server" Text="Phụ Đề"></asp:Label>     
                <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_tttieude8" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_ttnoidung8" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhtt8" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_ttphude8" runat="server"></asp:TextBox><br />
            </div>
            <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label151" runat="server" Text="Tiêu Đề 9"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label152" runat="server" Text="Nội Dung 9"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label153" runat="server" Text="Hình Ảnh 9"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label154" runat="server" Text="Phụ Đề"></asp:Label>     
                <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_tttieude9" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_ttnoidung9" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhtt9" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_ttphude9" runat="server"></asp:TextBox><br />
            </div>
                 <div style="display: flex;justify-content: space-between;">

                <asp:Label class="lbl_tendiadiem" ID="Label155" runat="server" Text="Tiêu Đề 10"></asp:Label>
                <asp:Label class="lbl_thongtin" ID="Label156" runat="server" Text="Nội Dung 10"></asp:Label>
                <asp:Label class="lbl_hinhanh" ID="Label157" runat="server" Text="Hình Ảnh 10"></asp:Label>
                  <asp:Label class="lbl_hinhanh" ID="Label158" runat="server" Text="Phụ Đề "></asp:Label>     
                <br />
              </div>
             <div style="display: flex;justify-content: space-between;">
                <asp:TextBox class="txt_tendiadiemds" ID="txt_tttieude10" runat="server"></asp:TextBox>
                <asp:TextBox class="txt_noidungds" ID="txt_ttnoidung10" TextMode="MultiLine" runat="server"></asp:TextBox>
                 <asp:FileUpload  class="hinhanhds" ID="FileUploadanhtt10" runat="server" />
                 <asp:TextBox class="txt_tendiadiemds" ID="txt_ttphude10" runat="server"></asp:TextBox><br />
            </div>
            <asp:Button class="btn_dang" ID="Button4" runat="server" Text="Đăng Bài" OnClick="Button4_Click" />
        </div>

       
    </div>
            
            <div class="noidungmenu" style="display:none;" stt="2"> <h2 style="width:100%;text-align:center;height:50px;">Duyệt Bài Đăng</h2>
                <div style="width:100%;height:80%;border-top:1px solid;overflow-y:auto">
                <%foreach(var itemad in listadmin)
                  { %>
                <%foreach( var item in listtin)
                  { %>
                   
                <%if(item.IDAD== itemad.MaAD){ %>
                
                    <div style="width:90%;margin-left:5%;height:200px;display:flex;flex-direction:column;">
                        <div style="width:100%;height:80px;display:flex;">
                            <div style="width:60px;height:60px;">
                                <img style="width:100%;height:100%;text-align: center;padding: 2px;color: #fff;-moz-border-radius: 100px;-webkit-border-radius: 100px;border-radius: 100px;margin-top:8px;"
                                     src='<%="./admin/"+itemad.HinhAnh %>' />
                            </div>
                            <div style="width:100px;height:30px;margin-top:30px;margin-left:10px"><p>ID:<%=itemad.ID %></p>
                            </div>
                          
                         
                        </div>
                      
                        <div  style="width:100%;height:120px;background-color:#ffffff;display:flex">
                            <table style="width:100%;height:120px">
                                <tr >
                                    <th style="width:20%;height:100px">
                                        <img style="width:60%;height:100%" src='<%="./tintuc/"+item.HinhAnh %>' />
                                    </th>
                                    <th style="width:40%;text-align:left">
                                        
                                        <%=item.TieuDe %>
                                    </th>
                                    <th style="width:20%;">Ngày Đăng:<%=item.NgayDang %></th>
                                    <th style="width:20%">
                                        <a href='<%="Duyetbai.aspx?MaTin="+item.MaTin %>'>Duyệt Bài </a>
                                    </th>
                                    
                                </tr>
                            </table>
                        </div>
                
                            
                            
                        
                    </div>
                
                    
                <%} %>
                <%} %>
                <%} %>
                    
                    </div>
            </div>
            <div class="noidungmenu" style="display:none" stt="3">
               <h1 style="width:100%;text-align:center;height:40px;border-bottom:1px solid">Tài Khoản</h1>
                <div style="width:100%;height:100%;display:flex;flex-direction:column">
                    <div style="height:55%;display:flex;flex-direction:column;border-bottom:1px solid" >
                        <h3 style="height:30px;margin-top:-2%">Tài Khoản Admin</h3>
                        <div style="width:85%;margin-left:5%;height:90%;display:flex;justify-content:space-between">
                            <div style="width:35%;height:90%">
                                <img style="width:90%;height:100%" src='<%="./admin/"+info.HinhAnh %>' />
                            </div>
                            <div style="width:45%;height:100%;display:flex;flex-direction:column;font-size:20px">
                                <p>ID:<%=info.ID %></p>
                                <p>Họ Tên:<%=info.HoTen %></p>
                                <p>Email:<%=info.Email %></p>
                                <p>SĐT:<%=info.SDT %></p>
                                <p>Quyền:<%=info.Quyen %></p>
                            </div>
                            <div style="width:20%;text-align:center;display:flex;justify-content:space-around;align-items: flex-end;">
                                <asp:Button class="btn_duyet" ID="Button6" runat="server" Text="Sửa Thông Tin" />
                                <asp:Button class="btn_xoa" ID="Button7" runat="server" Text="Xóa Tài Khoản" />
                                 <asp:Button class="btn_xoa" ID="Button8" runat="server" Text="Đăng Xuất" OnClick="Button8_Click" />
                             </div>
                        </div>
                        
                    </div>
                    <div style="height:45%" >
                        <h3 style="height:5%">Thông Tin Người Dùng</h3>
                        <div style="height:70%;overflow-y:auto;background-color:#ffffff">
                            <%foreach(var item in listndhot)
                          { %>
                       
                        <table >
                            
                            <tr style="border-bottom:1px solid" >
                                
                                <th style="border-bottom:0.5px solid;width:20%;height:50px">
                                    <a href='<%="Thongtinnd.aspx?MaAD="+item.MaAD %>'>

                                 
                                   <img style="width:50px;height:50px" src='<%="./admin/"+item.HinhAnh %>'>
                                           </a>
                                </th>
                                <th style="border-bottom:0.5px solid;width:100px;text-align:left">ID:<% =item.ID %></th>
                                <th style="border-bottom:0.5px solid;width:200px;text-align:left">Tên:<%=item.HoTen %></th>
                                <th style="border-bottom:0.5px solid;width:150px;text-align:left">Số Bài Đăng:<%=item.Sobaidang %></th>
                                <th style="border-bottom:0.5px solid;width:300px;text-align:left">Email:<%=item.Email %></th>
                            </tr>
                            
                        </table>
                        
                        <%} %>
                        </div>
                    </div>
                </div>
            </div>
            <div class="noidungmenu" style="display:none;" stt="4">
                 <h2 style="width:100%;text-align:center;height:50px;border-bottom:1px solid">Quản Lý Bài Đăng</h2>
                <div style="width:100%;height:100%;overflow-y:auto;display:flex;flex-direction:column">
                    <div style="width:90%;height:230px;margin-left:5%;display:flex;flex-direction:column">
                    <h3 style="width:100%;height:30px" >Địa Điểm Du Lịch</h3>
                        <div style="width:50%;margin-left:50%;height:50px;display:flex;justify-content:space-around">
                            <div >
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </div>
                             <div>
                                 <asp:Button class="btn_xoa" ID="Button9" runat="server" Text="Xóa" />
                             </div>
                        </div>
                    <div style="width:100%;height:150px;background-color:#ffffff;overflow-y:auto">
                        <%foreach(var item in listbaixoadiadanh)
                          { %>
                            <table >
                                <tr style="height:50px;width:100%;border-bottom:1px solid black;background-color:rgba(128, 128, 128,0.5)" >
                                    <th style="width:200px" >
                                        <a style="color:black" href='<%="Chitietdiadanh.aspx?MaDiSan="+item.MaDD %>'><%=item.MaDD%></a> 
                                    </th>
                                    <th style="width:500px" >
                                        <%=item.TieuDe1 %>
                                    </th>
                                    <th style="width:100px" >
                                        <img style="width:50px;height:50px" src='<%="./diadiem/"+item.HinhAnh1 %>' />
                                      
                                    </th>
                                </tr>
                            </table>
                        <%} %>
                    </div>
                    </div>
                    <div style="width:90%;height:230px;margin-left:5%;display:flex;flex-direction:column">
                    <h3 style="width:100%;height:30px" >Di Sản Văn Hóa</h3>
                        <div style="width:50%;margin-left:50%;height:50px;display:flex;justify-content:space-around">
                            <div >
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                            </div>
                             <div>
                                 <asp:Button class="btn_xoa" ID="Button21" runat="server" Text="Xóa" />
                             </div>
                        </div>
                    <div style="width:100%;height:150px;background-color:#ffffff;overflow-y:auto">
                        <%foreach(var item in listbaixoadisan)
                          { %>
                            <table >
                                
                                <tr style="height:50px;width:100%;border-bottom:1px solid black;background-color:rgba(128, 128, 128,0.5)" >
                                    <th style="width:200px" >
                                       <a style="color:black" href='<%="Chitietdisan.aspx?MaDiSan="+item.MaDiSan %>'><%=item.MaDiSan%></a> 
                                    </th>
                                    <th style="width:500px" >
                                        <%=item.TieuDe1 %>
                                    </th>
                                    <th style="width:100px"  >
                                        <img style="width:80px;height:50px" src='<%="./disan/"+item.HinhAnh1 %>' />
                                      
                                    </th>
                                </tr>
                            </table>
                        <%} %>
                    </div>
                    </div>
                    <div style="width:90%;height:230px;margin-left:5%;display:flex;flex-direction:column">
                    <h3 style="width:100%;height:30px" >Ẩm Thực</h3>
                        <div style="width:50%;margin-left:50%;height:50px;display:flex;justify-content:space-around">
                            <div >
                                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                            </div>
                             <div>
                                 <asp:Button class="btn_xoa" ID="Button22" runat="server" Text="Xóa" />
                             </div>
                        </div>
                    <div style="width:100%;height:150px;background-color:#ffffff;overflow-y:auto">
                        <%foreach(var item in listbaixoaamthuc)
                          { %>
                            <table >
                                
                                <tr style="height:50px;width:100%;border-bottom:1px solid black;background-color:rgba(128, 128, 128,0.5)" >
                                    <th style="width:200px" >
                                       <a style="color:black" href='<%="Chitietamthuc.aspx?MaAmThuc="+item.MaAmThuc %>'><%=item.MaAmThuc%></a> 
                                    </th>
                                    <th style="width:500px" >
                                        <%=item.TieuDe1 %>
                                    </th>
                                    <th style="width:100px"  >
                                        <img style="width:80px;height:50px" src='<%="./amthuc/"+item.HinhAnh1 %>' />
                                      
                                    </th>
                                </tr>
                            </table>
                        <%} %>
                    </div>
                    </div>
                    <div style="width:90%;height:230px;margin-left:5%;display:flex;flex-direction:column">
                    <h3 style="width:100%;height:30px" >Tin Tức</h3>
                        <div style="width:50%;margin-left:50%;height:50px;display:flex;justify-content:space-around">
                            <div >
                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                            </div>
                             <div>
                                 <asp:Button class="btn_xoa" ID="Button23" runat="server" Text="Xóa" />
                             </div>
                        </div>
                    <div style="width:100%;height:150px;background-color:#ffffff;overflow-y:auto">
                        <%foreach(var item in listbaixoatintuc)
                          { %>
                            <table >
                                
                                <tr style="height:50px;width:100%;border-bottom:1px solid black;background-color:rgba(128, 128, 128,0.5)" >
                                    <th style="width:200px" >
                                       <a style="color:black" href='<%="Chitiettintuc.aspx?MaTin="+item.MaTin %>'><%=item.MaTin%></a> 
                                    </th>
                                    <th style="width:500px" >
                                        <%=item.TieuDe1 %>
                                    </th>
                                    <th style="width:100px"  >
                                        <img style="width:80px;height:50px" src='<%="./tintuc/"+item.HinhAnh1 %>' />
                                      
                                    </th>
                                </tr>
                            </table>
                        <%} %>
                    </div>
                    </div>
                </div>
                
               
            </div>
            
            <div class="noidungmenu" style="display:none;font-weight:bold;text-align:center" stt="5">  
                <h2> Chỉnh sửa giao diện</h2>
                <div style="width:70%;margin-left:15%;height:85%;margin-top:3%;display:flex;flex-direction:column">
                     <div style="width:100%;height:40px;display:flex;justify-content:space-between" >
                         <div style="width:15%;margin-left:10%;font-weight:bold;text-align:left">LOGO</div>

                          <div style="width:55%;text-align:left">
                              <asp:FileUpload class="fileupanh" ID="FileUploadlogo" runat="server" />
                          </div>
                          <div style="width:15%;font-weight:bold;text-align:left">
                              <asp:Button class="btn_duyet" ID="btn_logo" runat="server" Text="Thay Đổi" OnClick="btn_logo_Click" />
                          </div>
                     </div>
                    <div style="width:100%;height:40px;display:flex;justify-content:space-between" >
                         <div style="width:15%;margin-left:10%;font-weight:bold;text-align:left">SLIDE1</div>

                          <div style="width:55%;text-align:left">
                              <asp:FileUpload class="fileupanh" ID="FileUploadslide1" runat="server" />
                          </div>
                        <div style="width:15%;font-weight:bold;text-align:left">
                              <asp:Button class="btn_duyet" ID="btn_slide1" runat="server" Text="Thay Đổi" OnClick="btn_slide1_Click" />
                          </div>
                     </div>
                    <div style="width:100%;height:40px;display:flex;justify-content:space-between" >
                         <div style="width:15%;margin-left:10%;font-weight:bold;text-align:left">SLIDE2</div>

                          <div style="width:55%;text-align:left">
                              <asp:FileUpload class="fileupanh" ID="FileUploadslide2" runat="server" />
                          </div>
                         <div style="width:15%;font-weight:bold;text-align:left">
                              <asp:Button class="btn_duyet" ID="Button10" runat="server" Text="Thay Đổi" OnClick="Button10_Click" />
                          </div>

                     </div>
                    <div style="width:100%;height:40px;display:flex;justify-content:space-between" >
                         <div style="width:15%;margin-left:10%;font-weight:bold;text-align:left">SLIDE3</div>

                          <div style="width:55%;text-align:left">
                              <asp:FileUpload class="fileupanh" ID="FileUploadslide3" runat="server" />
                          </div>
                        <div style="width:15%;font-weight:bold;text-align:left">
                              <asp:Button class="btn_duyet" ID="Button11" runat="server" Text="Thay Đổi" OnClick="Button11_Click" />
                          </div>
                     </div>
                   <div style="width:100%;height:40px;display:flex;justify-content:space-between" >
                         <div style="width:15%;margin-left:10%;font-weight:bold;text-align:left">SLIDE4</div>

                          <div style="width:55%;text-align:left">
                              <asp:FileUpload class="fileupanh" ID="FileUploadslide4" runat="server" />
                          </div>
                       <div style="width:15%;font-weight:bold;text-align:left">
                              <asp:Button class="btn_duyet" ID="Button12" runat="server" Text="Thay Đổi" OnClick="Button12_Click" />
                          </div>
                     </div>
                     <div style="width:100%;height:40px;display:flex;justify-content:space-between" >
                         <div style="width:15%;margin-left:10%;font-weight:bold;text-align:left">SLIDE5</div>

                          <div style="width:55%;text-align:left">
                              <asp:FileUpload class="fileupanh" ID="FileUploadslide5" runat="server" />
                          </div>
                         <div style="width:15%;font-weight:bold;text-align:left">
                              <asp:Button class="btn_duyet" ID="Button13" runat="server" Text="Thay Đổi" OnClick="Button13_Click" />
                          </div>
                     </div>
                     <div style="width:100%;height:40px;display:flex;justify-content:space-between" >
                         <div style="width:15%;margin-left:10%;font-weight:bold;text-align:left">SLIDE6</div>

                          <div style="width:55%;text-align:left">
                              <asp:FileUpload class="fileupanh" ID="FileUploadslide6" runat="server" />
                          </div>
                         <div style="width:15%;font-weight:bold;text-align:left">
                              <asp:Button class="btn_duyet" ID="Button14" runat="server" Text="Thay Đổi" OnClick="Button14_Click" />
                          </div>
                     </div>
                    <div style="width:100%;height:40px;display:flex;justify-content:space-between" >
                         <div style="width:15%;margin-left:10%;font-weight:bold;text-align:left">BANNER</div>

                          <div style="width:55%;text-align:left">
                              <asp:FileUpload class="fileupanh" ID="FileUploadbanner" runat="server" />
                          </div>
                          <div style="width:15%;font-weight:bold;text-align:left">
                              <asp:Button class="btn_duyet" ID="Button15" runat="server" Text="Thay Đổi" OnClick="Button15_Click1" />
                          </div>
                     </div>
                    <div style="width:100%;height:40px;display:flex;justify-content:space-between" >
                         <div style="width:15%;margin-left:10%;font-weight:bold;text-align:left">TÊN WEB</div>

                          <div style="width:55%;text-align:left">
                              <asp:TextBox Class="txt_hoten" ID="txt_tenweb" runat="server"></asp:TextBox>
                          </div>
                        <div style="width:15%;font-weight:bold;text-align:left">
                              <asp:Button class="btn_duyet" ID="Button16" runat="server" Text="Thay Đổi" OnClick="Button16_Click" />
                          </div>
                     </div>
                    <div style="width:100%;height:40px;display:flex;justify-content:space-between" >
                         <div style="width:15%;margin-left:10%;font-weight:bold;text-align:left">ĐỊA CHỈ</div>

                          <div style="width:55%;text-align:left">
                              <asp:TextBox Class="txt_hoten" ID="txt_diachi" runat="server"></asp:TextBox>
                          </div>
                        <div style="width:15%;font-weight:bold;text-align:left">
                              <asp:Button class="btn_duyet" ID="Button17" runat="server" Text="Thay Đổi" OnClick="Button17_Click" />
                          
                          </div>
                     </div>
                    <div style="width:100%;height:40px;display:flex;justify-content:space-between" >
                         <div style="width:15%;margin-left:10%;font-weight:bold;text-align:left">SĐT</div>

                          <div style="width:55%;text-align:left">
                              <asp:TextBox Class="txt_hoten" ID="TextBox3" runat="server"></asp:TextBox>
                          </div>
                        <div style="width:15%;font-weight:bold;text-align:left">
                              <asp:Button class="btn_duyet" ID="Button18" runat="server" Text="Thay Đổi" />
                          </div>
                     </div>
                    <div style="width:100%;height:40px;display:flex;justify-content:space-between" >
                         <div style="width:15%;margin-left:10%;font-weight:bold;text-align:left">EMAIL</div>

                          <div style="width:55%;text-align:left">
                              <asp:TextBox Class="txt_hoten" ID="TextBox4" runat="server"></asp:TextBox>
                          </div>
                         <div style="width:15%;font-weight:bold;text-align:left">
                              <asp:Button class="btn_duyet" ID="Button19" runat="server" Text="Thay Đổi" />
                          </div>
                     </div>
                    <div style="width:100%;height:40px;display:flex;justify-content:space-between" >
                         <div style="width:15%;margin-left:10%;font-weight:bold;text-align:left">FACEBOOK</div>

                          <div style="width:55%;text-align:left">
                              <asp:TextBox Class="txt_hoten" ID="TextBox5" runat="server"></asp:TextBox>
                          </div>
                          <div style="width:15%;font-weight:bold;text-align:left">
                              <asp:Button class="btn_duyet" ID="Button20" runat="server" Text="Thay Đổi" />
                          </div>
                     </div>
                    

                </div>
                  <asp:Label ID="lbl_ht" runat="server" Text="Label"></asp:Label>
               
            </div>
            </div>
        </div>

       
    
    </div>
