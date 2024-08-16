<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/MyHealthAdmin.master" AutoEventWireup="false" CodeFile="AdminEditBlogs.aspx.vb" Inherits="AdminPages_AdminEditBlogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <h2 class="SubHeadings">Edit Blogs</h2>
    <br />

    <asp:detailsview runat="server" height="50px" width="500px" AllowPaging="True" 
        AutoGenerateRows="False" CellPadding="4" DataKeyNames="ID" 
        DataSourceID="adsBlogs" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Username" HeaderText="Username" 
                SortExpression="Username" />
            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
            <asp:BoundField DataField="blogs" HeaderText="blogs" SortExpression="blogs" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:detailsview>

    <asp:AccessDataSource ID="adsBlogs" runat="server" 
        DataFile="~/App_Data/SerenitySage.mdb" 
        DeleteCommand="DELETE FROM [blogs] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [blogs] ([ID], [Username], [date], [blogs]) VALUES (?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [blogs]" 
        UpdateCommand="UPDATE [blogs] SET [Username] = ?, [date] = ?, [blogs] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="date" Type="DateTime" />
            <asp:Parameter Name="blogs" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="date" Type="DateTime" />
            <asp:Parameter Name="blogs" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>

</asp:Content>

