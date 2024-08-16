<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/SerenitySage.master" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="SitePages_UserLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <form method="post">
    <h2 class="heading">Log in</h2>
    <div class="myForm">
        <asp:Label ID="lblUsername" runat="server" Text="Username:" CssClass="label"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server" CssClass="TextBox"></asp:TextBox>
        <br />
        <asp:Label ID="lblPassword" runat="server" Text="Password:" CssClass="label"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" CssClass="TextBox" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Label ID="lblRole" runat="server" Text="Log in as:" CssClass="label"></asp:Label>
        <asp:DropDownList ID="ddlRole" runat="server" CssClass="TextBox">
            <asp:ListItem Text="choose role" Value="" disabled="disabled" Selected="True"></asp:ListItem>
            <asp:ListItem>Admin</asp:ListItem>
            <asp:ListItem>Doctor</asp:ListItem>
            <asp:ListItem>Patient</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Log In" CssClass="button" />
        <br />
        <asp:AccessDataSource ID="adsUsers" runat="server" DataFile="~/App_Data/SerenitySage.mdb" SelectCommand="SELECT * FROM [patients]"></asp:AccessDataSource>
        <asp:LinkButton ID="linkRegister" runat="server" PostBackUrl="~/SitePages/UserRegistration.aspx" CssClass="linksbutton">Register here</asp:LinkButton>
        <br />
        <asp:Label ID="lblError" runat="server"></asp:Label>
    </div>
    </form>
</asp:Content>
