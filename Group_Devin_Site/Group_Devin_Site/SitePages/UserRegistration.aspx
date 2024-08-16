<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/SerenitySage.master" AutoEventWireup="false" CodeFile="UserRegistration.aspx.vb" Inherits="SitePages_UserRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">

    <form method="post">
        <h2 class="heading">Registration Form</h2>
      
        <div class="myForm">
            <asp:Label ID="lblName" runat="server" Text="Full Name: " CssClass="label"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" CssClass="TextBox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName"
                ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

            <asp:Label ID="lblEmail" runat="server" Text="Email: " CssClass="label"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="TextBox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
                ErrorMessage="Invalid email format" ForeColor="Red"
                ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator>

            <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number: " 
                CssClass="label"></asp:Label>
            <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="TextBox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" ControlToValidate="txtPhoneNumber"
                ErrorMessage="Phone number is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhoneNumber"
                ErrorMessage="Invalid phone number format. It should be 7 digits" ForeColor="Red"
                ValidationExpression="^\d{7}$"></asp:RegularExpressionValidator>

            <asp:Label ID="ldlGender" runat="server" Text="Gender: " CssClass="label"></asp:Label>
            <asp:DropDownList ID="ddlGender" runat="server" CssClass="TextBox">
                <asp:ListItem Text="Choose gender" Value="" disabled="disabled" Selected="True"></asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvGender" runat="server" ControlToValidate="ddlGender"
                InitialValue="" ErrorMessage="Please select a gender" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

            <asp:Label ID="ldlPhoto" runat="server" Text="Upload your picture (optional): " CssClass="label"></asp:Label>
            <asp:fileupload ID="Fileupload1" runat="server"></asp:fileupload>
            <br />

            <asp:Label ID="lblUsername" runat="server" Text="Username: " CssClass="label"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" CssClass="TextBox"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername"
                ErrorMessage="Username is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

            <asp:Label ID="lblPassword" runat="server" Text="Password: " CssClass="label"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="TextBox" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword"
                ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

            <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password: " 
                CssClass="label"></asp:Label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="TextBox" 
                TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword"
                ErrorMessage="Confirm password is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="cvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword"
                ControlToCompare="txtPassword" Operator="Equal" Type="String"
                ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator>
            <br />

            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="button" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true"
                ShowSummary="false" ForeColor="Red" />
            <asp:AccessDataSource ID="adsUsers" runat="server" 
                DataFile="~/App_Data/SerenitySage.mdb" 
                DeleteCommand="DELETE FROM [patients] WHERE [ID] = ?" 
                InsertCommand="INSERT INTO [patients] ([Name], [Email], [Gender], [Phone], [Username], [Password]) VALUES (?, ?, ?, ?, ?, ?)" 
                SelectCommand="SELECT * FROM [patients]" 
                UpdateCommand="UPDATE [patients] SET [Name] = ?, [Email] = ?, [Gender] = ?, [Phone] = ?, [Username] = ?, [Password] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="Name" Type="String" />
                </DeleteParameters>
                <InsertParameters>
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
                </UpdateParameters>
            </asp:AccessDataSource>
        </div>
 </form> 
</asp:Content>
