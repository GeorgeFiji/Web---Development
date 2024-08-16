<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/MyHealthAdmin.master" AutoEventWireup="false" CodeFile="EditPatients.aspx.vb" Inherits="AdminPages_EditPatients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2 class="SubHeadings">Edit Patients</h2>
    <br />

    <asp:gridview runat="server" AllowSorting="True" 
    AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="adsEditPatients" 
        AllowPaging="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Gender" HeaderText="Gender" 
                SortExpression="Gender" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Username" HeaderText="Username" 
                SortExpression="Username" />
        </Columns>
    </asp:gridview>

    <asp:AccessDataSource ID="adsEditPatients" runat="server" 
        DataFile="~/App_Data/SerenitySage.mdb" 
        DeleteCommand="DELETE FROM [patients] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [patients] ([ID], [Name], [Email], [Gender], [Phone], [Username], [Password]) VALUES (?, ?, ?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [patients]" 
        UpdateCommand="UPDATE [patients] SET [Name] = ?, [Email] = ?, [Gender] = ?, [Phone] = ?, [Username] = ?, [Password] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Gender" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>

</asp:Content>

