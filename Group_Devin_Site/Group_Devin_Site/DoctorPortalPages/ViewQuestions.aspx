<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/MyHealthDoctors.master" AutoEventWireup="false" CodeFile="ViewQuestions.aspx.vb" Inherits="DoctorPortalPages_ViewQuestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

     <h2 class="SubHeadings">Answer Questions From Users</h2>
     <br />

    <asp:detailsview runat="server" height="50px" width="500px" AllowPaging="True" 
        AutoGenerateRows="False" CellPadding="4" DataKeyNames="ID" 
        DataSourceID="adsAnsQuestion" GridLines="Horizontal" BackColor="White" 
        BorderColor="#336666" BorderStyle="Double" BorderWidth="3px">
        <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="Full_Name" HeaderText="Full Name" 
                SortExpression="Full_Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Question" HeaderText="Question" 
                SortExpression="Question" />
            <asp:BoundField DataField="Answers" HeaderText="Answers" 
                SortExpression="Answers" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
    </asp:detailsview>

    <asp:AccessDataSource ID="adsAnsQuestion" runat="server" 
        DataFile="~/App_Data/SerenitySage.mdb" 
        DeleteCommand="DELETE FROM [Question] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [Question] ([ID], [Full_Name], [Email], [Question], [Answers]) VALUES (?, ?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [Question]" 
        UpdateCommand="UPDATE [Question] SET [Full_Name] = ?, [Email] = ?, [Question] = ?, [Answers] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Full_Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Question" Type="String" />
            <asp:Parameter Name="Answers" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Full_Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Question" Type="String" />
            <asp:Parameter Name="Answers" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>

    </asp:Content>

