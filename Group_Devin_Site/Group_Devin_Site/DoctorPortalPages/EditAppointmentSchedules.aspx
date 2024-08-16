<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/MyHealthDoctors.master" AutoEventWireup="false" CodeFile="EditAppointmentSchedules.aspx.vb" Inherits="DoctorPortalPages_EditAppointmentSchedules" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <h2 class="SubHeadings">Edit Your Appointment Schedules</h2>
     <br />

    <asp:detailsview runat="server" height="50px" width="500px" AllowPaging="True" 
        AutoGenerateRows="False" BackColor="White" BorderColor="#336666" 
        BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="ID" 
        DataSourceID="adsDOcEditAppointment" GridLines="Horizontal">
        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Username" HeaderText="Username" 
                SortExpression="Username" />
            <asp:BoundField DataField="Doctor" HeaderText="Doctor" 
                SortExpression="Doctor" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
    </asp:detailsview>

    <asp:AccessDataSource ID="adsDOcEditAppointment" runat="server" 
        DataFile="~/App_Data/SerenitySage.mdb" 
        DeleteCommand="DELETE FROM [booking] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [booking] ([ID], [Username], [Doctor], [Time], [Date]) VALUES (?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [booking] WHERE ([Doctor] = ?)" 
        
        UpdateCommand="UPDATE [booking] SET [Username] = ?, [Doctor] = ?, [Time] = ?, [Date] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Doctor" Type="String" />
            <asp:Parameter Name="Time" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Doctor" SessionField="Username" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Doctor" Type="String" />
            <asp:Parameter Name="Time" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
        </UpdateParameters>
    </asp:AccessDataSource>

</asp:Content>

