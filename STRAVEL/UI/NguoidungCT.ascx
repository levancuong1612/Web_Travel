<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NguoidungCT.ascx.cs" Inherits="STRAVEL.UI.NguoidungCT" %>
<link rel="stylesheet" type="text/css" href="../Admincss.css" />
<script type="text/javascript">
    $(document).ready(function () {

        var stt = 0;
        stardiv = $("div.noidungmenu:first").attr("stt");
        enddiv = $("div.noidungmenu:last").attr("stt");
        $("div.noidungmenu").each(function () {
            if ($(this).is(':visible'))
                stt = $(this).attr("stt");
        });
        $("#dangbai").click(function () {
            stt = 0;
            dangbai = stt;
            $("div.noidungmenu").hide();
            $("div.noidungmenu").eq(dangbai).show();
        })
        $("#taikhoan").click(function () {
            stt = 1;
            taikhoan = stt;
            $("div.noidungmenu").hide();
            $("div.noidungmenu").eq(taikhoan).show();
        })

    });
 </script>
<div class="bodyadmin" style="background-image:url(./diadiem/nenweb4.jpg)">
    <div style="position:absolute;z-index:1">
    <img style="width:100%;height:100%" src="../diadiem/nenweb4.jpg" />
    </div>
      
    <div class="trangchu" style="width:80%;height:auto;margin-left:10%;margin-top:10%;display:flex;flex-direction:column" >
        <div class="thanhtieude">
            <div style="width:60px;height:100%;display:flex">
                <img style="width:100%;height:100%" src="../img/logo01.png" />
                <div style="width:40%;height:100%;color:#ffffff"><h4 style="margin-top:80%">STRAVELADMIN</h4></div>
            </div>
        </div>
        <div class="thanhnoidung">
            <div class="menuadmin" >
                <div class="taikhoanad">
                    <div class="hinhanhad">
                        <img  src='<%="./admin/"+infoad.HinhAnh %>'/>
                    </div>
                    <div class="adname">
                        <h3 style="height:10px"><%=infoad.HoTen %></h3>
                        <p style="font-style:italic">ID:<%=infoad.ID %></p>
                    </div>
                </div>
               
                <div class="dangbai" id="dangbai">
                    <h2 style="width:80%;margin-left:20%;height:100%;text-align:left" >Đăng Bài</h2>
                   
                    
                </div>
                
                <div class="dangxuat" id="taikhoan">
                    <h2 style="width:80%;margin-left:20%;height:100%;text-align:left" >Tài Khoản</h2>
                </div>
                 
            </div>
            <div class="noidungmenu" stt="0">
                 <div class="noidungdang" style="width:100%;height:auto;background-color:#93dbf5;overflow-y:auto" stt="3">
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

            <div class="noidungmenu" style="display:none" stt="1">
               <h1 style="width:100%;text-align:center;height:40px;border-bottom:1px solid">Tài Khoản</h1>
                <div style="width:100%;height:100%;display:flex;flex-direction:column">
                    <div style="height:50%;display:flex;flex-direction:column;border-bottom:1px solid" >
                        <h3 style="height:30px;margin-top:-2%">Tài Khoản Admin</h3>
                        <div style="width:85%;margin-left:5%;height:90%;display:flex;justify-content:space-between">
                            <div style="width:35%;height:90%">
                                <img style="width:90%;height:100%" src='<%="./admin/"+infoad.HinhAnh %>' />
                            </div>
                            <div style="width:45%;height:100%;display:flex;flex-direction:column;font-size:20px">
                                <p>ID:<%=infoad.ID %></p>
                                <p>Họ Tên:<%=infoad.HoTen %></p>
                                <p>Email:<%=infoad.Email %></p>
                                <p>SĐT:<%=infoad.SDT %></p>
                                <p>Quyền:<%=infoad.Quyen %></p>
                            </div>
                            <div style="width:20%;text-align:center;display:flex;justify-content:space-around;align-items: flex-end;">
                                <asp:Button class="btn_duyet" ID="Button6" runat="server" Text="Sửa Thông Tin" />
                                <asp:Button class="btn_xoa" ID="Button7" runat="server" Text="Xóa Tài Khoản" />
                                 <asp:Button class="btn_xoa" ID="Button8" runat="server" Text="Đăng Xuất" />
                             </div>
                        </div>
                        
                    </div>
                    <div style="height:50%" >
                        <h3 style="height:5%">Bài Đăng</h3>
                        <div style="height:60%;overflow-y:auto;background-color:#ffffff">
                            <%foreach(var item in listtincuand)
                          { %>
                       
                        <table >
                            <tr style="border-bottom:1px solid" >
                                <th style="border-bottom:0.5px solid;width:100px;height:50px">
                                   <img style="width:50px;height:50px" src='<%="./tintuc/"+item.HinhAnh %>'>
                                </th>
                                <th style="border-bottom:0.5px solid;width:500px;text-align:left;">Tiêu Đề:<% =item.TieuDe %></th>
                                <th style="border-bottom:0.5px solid;width:300px;text-align:left;margin-left:40px">Lượt Xem:<%=item.hot %></th>
                                
                            </tr>
                            
                        </table>
                        
                        <%} %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
</div>