<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/MyHealthDoctors.master" AutoEventWireup="false" CodeFile="ViewFeedback.aspx.vb" Inherits="DoctorPortalPages_ViewFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <h2 class="SubHeadings">Patient Feedbacks</h2>
     <br />

    <asp:detailsview runat="server" height="50px" width="1000px" AllowPaging="True" 
        AutoGenerateRows="False" BackColor="White" BorderColor="#336666" 
        BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="ID" 
        DataSourceID="adsViewFeedbacks" GridLines="Horizontal">
        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Full_Name" HeaderText="Full Name" 
                SortExpression="Full_Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Rate_Service" HeaderText="Service Rating" 
                SortExpression="Rate_Service" />
            <asp:BoundField DataField="Rate_Website" HeaderText="Website Rating" 
                SortExpression="Rate_Website" />
            <asp:BoundField DataField="Comments" HeaderText="Comments" 
                SortExpression="Comments" />
        </Fields>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
    </asp:detailsview>

    <asp:AccessDataSource ID="adsViewFeedbacks" runat="server" 
        DataFile="~/App_Data/SerenitySage.mdb" SelectCommand="SELECT * FROM [Feedback]">
    </asp:AccessDataSource>

</asp:Content>

