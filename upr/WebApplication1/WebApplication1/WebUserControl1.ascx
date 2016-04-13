<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl1.ascx.cs" Inherits="WebApplication1.WebUserControl1" %>
<asp:Panel ID="Panel1" runat="server">
    <asp:Panel ID="Panel2" runat="server" Width="341px">
        <br />
        <asp:Image ID="Image1" runat="server" Height="54px" style="margin-left: 195px" Width="51px" />
        <br />
        &nbsp;&nbsp;
        <asp:Label ID="lblBookNO" runat="server" Text="Book№"></asp:Label>
        <asp:Label ID="lblBookID" runat="server"></asp:Label>
        <br />
        &nbsp;&nbsp;
        <asp:Label ID="lblBookTitleName" runat="server" Text="Book Title:"></asp:Label>
        <asp:Label ID="lblBookTitle" runat="server" Text=" "></asp:Label>
        <asp:Label ID="lblBooksTitle" runat="server"></asp:Label>
        <br />
        &nbsp;&nbsp;
        <asp:Label ID="lblBookPricePrice" runat="server" Text="Book Price:"></asp:Label>
        <asp:Label ID="lblBookPrice" runat="server"></asp:Label>
        <br />
        &nbsp;&nbsp;
        <asp:Label ID="lblQuantity" runat="server" Text="BookQuantity:"></asp:Label>
        <asp:Label ID="lblBookQuantity" runat="server"></asp:Label>
        <br />
        &nbsp;&nbsp;
        <asp:Label ID="lblBookAmount" runat="server" Text="Amount:"></asp:Label>
        <asp:Label ID="lblAmount" runat="server"></asp:Label>
        <br />
        &nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Check for buy" />
        <br />
        <br />
        <br />
    </asp:Panel>
</asp:Panel>

