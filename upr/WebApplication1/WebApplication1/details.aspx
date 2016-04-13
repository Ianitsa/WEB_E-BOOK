<%@ Page Title="" Language="C#" MasterPageFile="~/WebFormMenu.Master" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="WebApplication1.details" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" DataKeyNames="BookID" DataSourceID="SqlDataSource1" OnPageIndexChanging="FormView1_PageIndexChanging" meta:resourcekey="FormView1Resource1">
    <EditItemTemplate>
        BookID:
        <asp:Label ID="BookIDLabel1" runat="server" Text='<%# Eval("BookID") %>' meta:resourcekey="BookIDLabel1Resource1" />
        <br />
        BookTitle:
        <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' meta:resourcekey="BookTitleTextBoxResource1" />
        <br />
        BookAuthor:
        <asp:TextBox ID="BookAuthorTextBox" runat="server" Text='<%# Bind("BookAuthor") %>' meta:resourcekey="BookAuthorTextBoxResource1" />
        <br />
        BookDescription:
        <asp:TextBox ID="BookDescriptionTextBox" runat="server" Text='<%# Bind("BookDescription") %>' meta:resourcekey="BookDescriptionTextBoxResource1" />
        <br />
        BookPrice:
        <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' meta:resourcekey="BookPriceTextBoxResource1" />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CommandName="Update" Text="Update" meta:resourcekey="UpdateButtonResource1" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" meta:resourcekey="UpdateCancelButtonResource1" />
    </EditItemTemplate>
    <InsertItemTemplate>
        BookID:
        <asp:TextBox ID="BookIDTextBox" runat="server" Text='<%# Bind("BookID") %>' meta:resourcekey="BookIDTextBoxResource1" />
        <br />
        BookTitle:
        <asp:TextBox ID="BookTitleTextBox" runat="server" Text='<%# Bind("BookTitle") %>' meta:resourcekey="BookTitleTextBoxResource2" />
        <br />
        BookAuthor:
        <asp:TextBox ID="BookAuthorTextBox" runat="server" Text='<%# Bind("BookAuthor") %>' meta:resourcekey="BookAuthorTextBoxResource2" />
        <br />
        BookDescription:
        <asp:TextBox ID="BookDescriptionTextBox" runat="server" Text='<%# Bind("BookDescription") %>' meta:resourcekey="BookDescriptionTextBoxResource2" />
        <br />
        BookPrice:
        <asp:TextBox ID="BookPriceTextBox" runat="server" Text='<%# Bind("BookPrice") %>' meta:resourcekey="BookPriceTextBoxResource2" />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" meta:resourcekey="InsertButtonResource1" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" meta:resourcekey="InsertCancelButtonResource1" />
    </InsertItemTemplate>
    <ItemTemplate>
        <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' Visible="False" meta:resourcekey="BookIDLabelResource1" />
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "./BookPictures/" + Eval("BookID") + ".jpg" %>' meta:resourcekey="Image1Resource1" />
        <br />
        BookTitle:
        <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Bind("BookTitle") %>' meta:resourcekey="BookTitleLabelResource1" />
        <br />
        <span style="color: #FF0066">BookAuthor:</span>
        <asp:Label ID="BookAuthorLabel" runat="server" Text='<%# Bind("BookAuthor") %>' meta:resourcekey="BookAuthorLabelResource1" />
        <br />
        <span style="color: #660066">BookDescription</span>:
        <asp:Label ID="BookDescriptionLabel" runat="server" Text='<%# Bind("BookDescription") %>' meta:resourcekey="BookDescriptionLabelResource1" />
        <br />
        <span style="color: #FF0066">BookPrice:</span>
        <asp:Label ID="BookPriceLabel" runat="server" Text='<%# Bind("BookPrice") %>' meta:resourcekey="BookPriceLabelResource1" />
        <br />
        <asp:Label ID="QuantityLabel" runat="server" Text="Quantity" meta:resourcekey="QuantityLabelResource1"></asp:Label>
        <asp:TextBox ID="txtQuantity" runat="server" style="margin-left: 9px" meta:resourcekey="txtQuantityResource1"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="Red" onClick="Button1_Click"  style="margin-left: 132px" Text="Add to cart" meta:resourcekey="Button1Resource1" />
        <br />
        <br />

    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString %>" SelectCommand="SELECT [BookID], [BookTitle], [BookAuthor], [BookDescription], [BookPrice] FROM [Books] WHERE ([BookID] = @BookID)">
    <SelectParameters>
        <asp:QueryStringParameter Name="BookID" QueryStringField="BookID" Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server" Text="Label" meta:resourcekey="Label1Resource2"></asp:Label>
    <br />
    <asp:LinkButton ID="LinkBtnBack" runat="server" OnClick="LinkBtnBack_Click" meta:resourcekey="LinkBtnBackResource1">Back</asp:LinkButton>
    <br />
</asp:Content>
