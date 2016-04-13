<%@ Page Title="" Language="C#" MasterPageFile="~/WebFormMenu.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="WebApplication1.Cart" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <br />
    </p>
    <p>
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" meta:resourcekey="DataList1Resource1">
            <ItemTemplate>
                <asp:Label ID="LblBookID" runat="server" Visible="False" meta:resourcekey="LblBookIDResource1"></asp:Label>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "./BookPictures/" + Eval("BookID") + ".jpg" %>' meta:resourcekey="Image1Resource1" />
                <br />
                <br />
                BookID:
                <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' meta:resourcekey="BookIDLabelResource1" />
                <br />
                BookTitle:
                <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' meta:resourcekey="BookTitleLabelResource1" />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' meta:resourcekey="PriceLabelResource1" />
                <br />
                Quantity:
                <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' meta:resourcekey="QuantityLabelResource1" />
                <br />
                Total:
                <asp:Label ID="TotalLabel" runat="server" Text='<%# Eval("Total") %>' meta:resourcekey="TotalLabelResource1" />
                <br />
                <asp:CheckBox ID="CheckBox1" runat="server" Text="Check to remove" meta:resourcekey="CheckBox1Resource1" />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="SELECT BookID,BookTitle,Price,Sum(Qty)as Quantity , sum(Price*Qty)as Total from ShopCart Group by BookID,BookTitle,Price"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="SELECT sum(Price*Qty)as Total from ShopCart "></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Height="54px" style="text-align: center" Width="271px" meta:resourcekey="GridView1Resource1">
            <Columns>
                <asp:BoundField DataField="Total" HeaderText="Total" ReadOnly="True" SortExpression="Total" meta:resourcekey="BoundFieldResource1" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="BtnDelBooks" runat="server" OnClick="BtnDelBooks_Click" Text="Delete the selected books" meta:resourcekey="BtnDelBooksResource1" />
    </p>
    <p style="margin-left: 80px">
        <asp:Label ID="Label1" runat="server" meta:resourcekey="Label1Resource1"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>
