<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/MyHealthDoctors.master" AutoEventWireup="false" CodeFile="AddBlog.aspx.vb" Inherits="DoctorPortalPages_AddBlog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <form method="post">
    <h2 class="heading">Add A Blog</h2>
    <div class="myForm">

        <asp:Label ID="lblBlog" runat="server" Text="Enter Blog: " CssClass="label"></asp:Label>
        <asp:TextBox ID="txtBlog" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvBlogs" runat="server" ControlToValidate="txtBlog" ErrorMessage="Input is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Button ID="btnBlog" runat="server" Text="Submit Blog" CssClass="button" />
        <br />

        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <asp:accessdatasource runat="server" DataFile="~/App_Data/SerenitySage.mdb" 
            DeleteCommand="DELETE FROM [blogs] WHERE [ID] = ?" 
            InsertCommand="INSERT INTO [blogs] ([Username], [date], [blogs]) VALUES (?, ?, ?)" 
            SelectCommand="SELECT * FROM [blogs] WHERE ([Username] = ?)" 
            UpdateCommand="UPDATE [blogs] SET [Username] = ?, [date] = ?, [blogs] = ? WHERE [ID] = ?" 
            ID="adsAddBlogs">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
                <asp:Parameter Name="blogs" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="Username" SessionField="Username" Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
                <asp:Parameter Name="blogs" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:accessdatasource>
    </div>
    </form>
</asp:Content>
