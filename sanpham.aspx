﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="sanpham.aspx.cs" Inherits="Buoi7.sanpham" %>
<%@ Register src="user_1.ascx" tagname="user_1" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>sản phẩm</h1>
    <uc1:user_1 ID="user_11" runat="server" />
</asp:Content>
