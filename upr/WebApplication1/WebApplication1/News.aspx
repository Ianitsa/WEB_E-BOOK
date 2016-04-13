<%@ Page Title="" Language="C#" MasterPageFile="~/WebFormMenu.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="WebApplication1.News" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="text-align: center">
        <asp:Label ID="lblRSSNews" runat="server" Text="RSS News"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:Label ID="lblTitle" runat="server"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:Label ID="lblLanguage" runat="server"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:Label ID="lblLink" runat="server"></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:Label ID="lblDescription" runat="server"></asp:Label>
        <br />
        <asp:GridView ID="GrViewNews" runat="server" HorizontalAlign="Justify" style="text-align: justify">
        </asp:GridView>
    </p>
    <p>
    </p>
</asp:Content>
