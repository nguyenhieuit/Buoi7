<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sanpham.aspx.cs" Inherits="Buoi7.sanpham" %>
<%@ Register src="user_1.ascx" tagname="user_1" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>sản phẩm
        <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenMH") %>'></asp:Label>
                <br />
                <asp:Image CssClass="img_sp" ID="Image3" runat="server" ImageUrl='<%# "~/images/"+Eval("Hinh") %>' Width="100px"/>
                <br />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonGia") %>'></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="chitiet.aspx">Chi tiết</asp:HyperLink>
            </ItemTemplate>
        </asp:DataList>
    </h1>
    <uc1:user_1 ID="user_11" runat="server" />
</asp:Content>
