<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Buoi7.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="1.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
               <div class="menu">
            <div class="logo">
                <asp:Image CssClass="img_logo" ID="Image1" runat="server" ImageUrl="./images/logo.jpg" /></div>
            <div class="menuright">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx">Trang chủ</asp:HyperLink>
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Dichvu.aspx">Dịch vụ</asp:HyperLink>
                <asp:HyperLink ID="HyperLink3" runat="server">Sản phầm</asp:HyperLink>
                <asp:HyperLink ID="HyperLink4" runat="server">Khuyến mãi</asp:HyperLink>
                <asp:HyperLink ID="HyperLink5" runat="server">Liên hệ</asp:HyperLink>
            </div>
        </div>
        <div class="banner">
            <asp:Image CssClass="img_banner" ID="Image2" runat="server" ImageUrl="./images/banner.png"/>
        </div>
        <div class="left">
            <ul>
                <li>
                    <asp:HyperLink ID="HyperLink6" runat="server">Chính sách bảo hành</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink10" runat="server">Bảo dưỡng sửa chữa</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink8" runat="server">Dịch vụ cứu hộ</asp:HyperLink>
                </li>
                <li>
                    <asp:HyperLink ID="HyperLink9" runat="server">Tư vấn tài chính</asp:HyperLink>
                </li>
            </ul>
        </div>
        <div class="right">
            <div class="top_bread">
                <marquee onmouseover="this.stop()" onmouseout="this.start()">Tuần lễ vàng</marquee>
            </div>
            <div class="content">
                <h1>noi dung home</h1>
            </div>
        </div>
        <div class="footer"> 
            Coppyright <br />
        </div>
    </form>
</body>
</html>
