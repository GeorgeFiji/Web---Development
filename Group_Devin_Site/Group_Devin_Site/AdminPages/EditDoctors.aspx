<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/MyHealthAdmin.master" AutoEventWireup="false" CodeFile="EditDoctors.aspx.vb" Inherits="AdminPages_EditDoctors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2 class="SubHeadings">Edit Doctors</h2>
    <br />

    <asp:gridview runat="server" AllowPaging="True" AllowSorting="True" 
    AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="adsEditDoctors">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="Phone Number" HeaderText="Phone Number" 
                SortExpression="Phone Number" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="Speciality" HeaderText="Speciality" 
                SortExpression="Speciality" />
            <asp:BoundField DataField="Username" HeaderText="Username" 
                SortExpression="Username" />
        </Columns>
    </asp:gridview>

    <asp:AccessDataSource ID="adsEditDoctors" runat="server" 
    DataFile="~/App_Data/SerenitySage.mdb" 
    DeleteCommand="DELETE FROM [doctors] WHERE [ID] = ?" 
    InsertCommand="INSERT INTO [doctors] ([ID], [Name], [Age], [Address], [Phone Number], [Email], [Gender], [Speciality], [Username], [Password]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" 
    SelectCommand="SELECT * FROM [doctors]" 
    UpdateCommand="UPDATE [doctors] SET [Name] = ?, [Age] = ?, [Address] = ?, [Phone Number] = ?, [Email] = ?, [Gender] = ?, [Speciality] = ?, [Username] = ?, [Password] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Age" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Phone_Number" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Speciality" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Age" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Phone_Number" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Speciality" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>

</asp:Content>

