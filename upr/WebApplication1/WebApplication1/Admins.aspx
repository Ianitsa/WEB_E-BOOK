<%@ Page Title="" Language="C#" MasterPageFile="~/WebFormMenu.Master" AutoEventWireup="true" CodeBehind="Admins.aspx.cs" Inherits="WebApplication1.Admins" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="BookID" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="BookID" HeaderText="BookID" ReadOnly="True" SortExpression="BookID" />
            <asp:BoundField DataField="BookType" HeaderText="BookType" SortExpression="BookType" />
            <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" SortExpression="BookTitle" />
            <asp:BoundField DataField="BookAuthor" HeaderText="BookAuthor" SortExpression="BookAuthor" />
            <asp:BoundField DataField="BookDescription" HeaderText="BookDescription" SortExpression="BookDescription" />
            <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" SortExpression="BookPrice" />
            <asp:BoundField DataField="BookQty" HeaderText="BookQty" SortExpression="BookQty" />
            <asp:CheckBoxField DataField="BookSale" HeaderText="BookSale" SortExpression="BookSale" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" DeleteCommand="DELETE FROM [Books] WHERE [BookID] = @BookID" InsertCommand="INSERT INTO [Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (@BookID, @BookType, @BookTitle, @BookAuthor, @BookDescription, @BookPrice, @BookQty, @BookSale)" SelectCommand="SELECT * FROM [Books]" UpdateCommand="UPDATE [Books] SET [BookType] = @BookType, [BookTitle] = @BookTitle, [BookAuthor] = @BookAuthor, [BookDescription] = @BookDescription, [BookPrice] = @BookPrice, [BookQty] = @BookQty, [BookSale] = @BookSale WHERE [BookID] = @BookID">
        <DeleteParameters>
            <asp:Parameter Name="BookID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BookID" Type="String" />
            <asp:Parameter Name="BookType" Type="String" />
            <asp:Parameter Name="BookTitle" Type="String" />
            <asp:Parameter Name="BookAuthor" Type="String" />
            <asp:Parameter Name="BookDescription" Type="String" />
            <asp:Parameter Name="BookPrice" Type="Decimal" />
            <asp:Parameter Name="BookQty" Type="Int32" />
            <asp:Parameter Name="BookSale" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="BookType" Type="String" />
            <asp:Parameter Name="BookTitle" Type="String" />
            <asp:Parameter Name="BookAuthor" Type="String" />
            <asp:Parameter Name="BookDescription" Type="String" />
            <asp:Parameter Name="BookPrice" Type="Decimal" />
            <asp:Parameter Name="BookQty" Type="Int32" />
            <asp:Parameter Name="BookSale" Type="Boolean" />
            <asp:Parameter Name="BookID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <asp:Button ID="btnUpload" runat="server" Text="Качване на файл" OnClick="btnUpload_Click" />
    <br />
    <br />
    <asp:Label ID="LblMassageText" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    <br />
</asp:Content>
