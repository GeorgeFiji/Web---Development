<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/MyHealthAdmin.master" AutoEventWireup="false" CodeFile="EditQuestions.aspx.vb" Inherits="AdminPages_EditQuestions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h2 class="SubHeadings">Edit Questions</h2>
    <br />

    <asp:gridview runat="server" AllowPaging="True" AllowSorting="True" 
    AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="adsEditQuestions">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Full_Name" HeaderText="Full Name" 
                SortExpression="Full_Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" 
                SortExpression="Email" />
            <asp:BoundField DataField="Question" HeaderText="Question" 
                SortExpression="Question" />
            <asp:BoundField DataField="Answers" HeaderText="Answers" 
                SortExpression="Answers" />
        </Columns>
    </asp:gridview>
    <asp:AccessDataSource ID="adsEditQuestions" runat="server" 
        DataFile="~/App_Data/SerenitySage.mdb" 
        DeleteCommand="DELETE FROM [Question] WHERE [ID] = ?" 
        InsertCommand="INSERT INTO [Question] ([ID], [Full_Name], [Email], [Question]) VALUES (?, ?, ?, ?)" 
        SelectCommand="SELECT * FROM [Question]" 
        UpdateCommand="UPDATE [Question] SET [Full_Name] = ?, [Email] = ?, [Question] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Full_Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Question" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Full_Name" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Question" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:AccessDataSource>

</asp:Content>

