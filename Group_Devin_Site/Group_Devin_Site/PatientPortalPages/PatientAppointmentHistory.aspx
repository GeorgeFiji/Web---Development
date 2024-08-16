<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/MyHealthUsers.master" AutoEventWireup="false" CodeFile="PatientAppointmentHistory.aspx.vb" Inherits="PatientPortalPages_PatientAppointmentHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2 class="SubHeadings">Your Appointment History</h2><br />

    <asp:detailsview runat="server" height="50px" width="500px" AllowPaging="True" 
        AutoGenerateRows="False" BackColor="White" BorderColor="#336666" 
        BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="ID" 
        DataSourceID="adsAppointment" GridLines="Horizontal">
        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Username" HeaderText="Username" 
                SortExpression="Username" />
            <asp:BoundField DataField="Doctor" HeaderText="Doctor" 
                SortExpression="Doctor" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
        </Fields>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
    </asp:detailsview>
    <asp:AccessDataSource ID="adsAppointment" runat="server" 
        DataFile="~/App_Data/SerenitySage.mdb" 
        SelectCommand="SELECT * FROM [booking] WHERE ([Username] = ?)">
        <SelectParameters>
            <asp:SessionParameter Name="Username" SessionField="Username" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>

</asp:Content>

