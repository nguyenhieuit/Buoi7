<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangki.aspx.cs" Inherits="Buoi7.dangki" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .DK{
            font-size:20px;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-weight:bold;
            color:blue;
        }
        .DKTK{
            margin-left:185px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="DK">
            <tr class="tenDN">
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Tên đăng nhập"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txt_tendangnhap" runat="server"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="KT_tendangnhap" runat="server" ControlToValidate="txt_tendangnhap" Display="Dynamic" ErrorMessage="Tên đăng nhập không đc để trống"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Mật khẩu"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txt_MK" runat="server" MaxLength="30" TextMode="Password" ></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="KT_MK" runat="server" ControlToValidate="txt_MK" Display="Dynamic" ErrorMessage="Mật khẩu ko được phép để trống"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Nhập lại mật khẩu" ></asp:Label></td>
                <td>
                    <asp:TextBox ID="txt_ktMK" runat="server" MaxLength="30" TextMode="Password"></asp:TextBox></td>
                <td>
                    <asp:CompareValidator ID="xacnhanMK" runat="server" ControlToCompare="txt_MK" ControlToValidate="txt_ktMK" Display="Dynamic" ErrorMessage="Mật khẩu nhập vào không khớp"></asp:CompareValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_ktMK" ErrorMessage="không được để trống mục này"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Địa chỉ EMAIL"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txt_Email" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="KT_Email" runat="server" ControlToValidate="txt_Email" Display="Dynamic" ErrorMessage="Địa chỉ email không được để trống"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="KT_DinhDangEmail" runat="server" ControlToValidate="txt_Email" Display="Dynamic" ErrorMessage="Email nhập sai định dạng" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        <div>
            <asp:Button CssClass="DKTK" ID="btn_DK" runat="server" Text="Đăng ký" OnClick="btn_DK_Click" BackColor="#CCFFFF" ForeColor="Red"  Font-Size="20px" />
        </div>
    </form>
</body>
</html>
