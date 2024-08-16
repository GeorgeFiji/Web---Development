<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/MyHealthAdmin.master" AutoEventWireup="false" CodeFile="EditAppointments.aspx.vb" Inherits="AdminPages_EditAppointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2 class="SubHeadings">Edit Appointments</h2>
    <br />

    <asp:gridview runat="server" AllowPaging="True" AllowSorting="True" 
    AutoGenerateColumns="False" DataKeyNames="ID" 
    DataSourceID="adsEditAppointments">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Username" HeaderText="Username" 
                SortExpression="Username" />
            <asp:BoundField DataField="Doctor" HeaderText="Doctor" 
                SortExpression="Doctor" />
            <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
        </Columns>
    </asp:gridview>

    <asp:AccessDataSource ID="adsEditAppointments" runat="server" 
        DataFile="~/App_Data/SerenitySage.mdb" 
        DeleteCommand="DELETE FROM [booking] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [booking] ([ID], [Username], [Doctor], [Time], [Date]) VALUES (?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [booking]" 
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
        <UpdateParameters>
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Doctor" Type="String" />
            <asp:Parameter Name="Time" Type="String" />
            <asp:Parameter Name="Date" Type="DateTime" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>

</asp:Content>

