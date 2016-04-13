<%@ Page Title="" Language="C#" MasterPageFile="~/WebFormMenu.Master" AutoEventWireup="true" CodeBehind="ConectionWithAs.aspx.cs" Inherits="WebApplication1.For_as" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    <br />
</p>
    <asp:Panel ID="Panel1" runat="server" meta:resourcekey="Panel1Resource1">
        <asp:Label ID="lblTo" runat="server" Text="To:" meta:resourcekey="lblToResource1"></asp:Label>
        &nbsp;
        <asp:TextBox ID="MailTo" runat="server" meta:resourcekey="MailToResource1" style="margin-left: 81px" Width="180px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblFrom" runat="server" meta:resourcekey="lblFromResource1" Text="From:"></asp:Label>
        &nbsp;<asp:TextBox ID="MailFrom" runat="server" meta:resourcekey="MailFromResource1" style="margin-left: 67px" Width="180px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblSubject" runat="server" meta:resourcekey="lblSubjectResource1" Text="Subject:"></asp:Label>
&nbsp;<asp:TextBox ID="Subject" runat="server" meta:resourcekey="SubjectResource2" style="margin-left: 54px" Width="180px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="lblBody" runat="server" meta:resourcekey="lblBodyResource1" Text="Body:"></asp:Label>
        <asp:TextBox ID="Body" runat="server" Height="60px" meta:resourcekey="BodyResource2" style="margin-left: 71px" TextMode="MultiLine" Width="190px"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnSend" runat="server" meta:resourcekey="btnSendResource1" OnClick="btnSend_Click" style="margin-left: 229px" Text="Send" />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="MailMsg" runat="server" ForeColor="#CC0000" meta:resourcekey="MailMsgResource1"></asp:Label>
        <br />
    </asp:Panel>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
<p>
    &nbsp;</p>
</asp:Content>
