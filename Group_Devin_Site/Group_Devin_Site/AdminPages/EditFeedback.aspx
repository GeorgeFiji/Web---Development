<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/MyHealthAdmin.master" AutoEventWireup="false" CodeFile="EditFeedback.aspx.vb" Inherits="AdminPages_EditFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2 class="SubHeadings">Edit Feedbacks</h2>
    <br />

    <asp:detailsview runat="server" height="50px" width="1000px" AllowPaging="True" 
        AutoGenerateRows="False" CellPadding="4" DataKeyNames="ID" 
        DataSourceID="adsEditFeedback" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Full_Name" HeaderText="Full_Name" 
                SortExpression="Full_Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Rate_Service" HeaderText="Rate_Service" 
                SortExpression="Rate_Service" />
            <asp:BoundField DataField="Rate_Website" HeaderText="Rate_Website" 
                SortExpression="Rate_Website" />
            <asp:BoundField DataField="Comments" HeaderText="Comments" 
                SortExpression="Comments" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:detailsview>

    <asp:AccessDataSource ID="adsEditFeedback" runat="server" 
        DataFile="~/App_Data/SerenitySage.mdb" 
        DeleteCommand="DELETE FROM [Feedback] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [Feedback] ([Full_Name], [Email], [Rate_Service], [Rate_Website], [Comments]) VALUES (?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [Feedback]" 
        UpdateCommand="UPDATE [Feedback] SET [Full_Name] = ?, [Email] = ?, [Rate_Service] = ?, [Rate_Website] = ?, [Comments] = ?, WHERE [ID] = ?">
        <DeleteParameters>
           <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Full_Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Rate_Service" Type="String" />
            <asp:Parameter Name="Rate_Website" Type="String" />
            <asp:Parameter Name="Comments" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Full_Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Rate_Service" Type="String" />
            <asp:Parameter Name="Rate_Website" Type="String" />
            <asp:Parameter Name="Comments" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>

</asp:Content>

