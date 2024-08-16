<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/MyHealthAdmin.master" AutoEventWireup="false" CodeFile="AddDoctors.aspx.vb" Inherits="AdminPages_AddDoctors" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form method="post">
    <h2 class="SubHeadings">Add Doctors</h2>
    <br />
    <div class="myForm">
        <asp:Label ID="lblName" runat="server" Text="Full Name: " CssClass="label"></asp:Label>
        <asp:TextBox ID="txtName" runat="server" CssClass="TextBox"></asp:TextBox>
        <br />

        <asp:Label ID="lblAge" runat="server" Text="Age: " CssClass="label"></asp:Label>
        <asp:TextBox ID="txtAge" runat="server" CssClass="TextBox"></asp:TextBox>
        <br />

        <asp:Label ID="lblAddress" runat="server" Text="Address: " CssClass="label"></asp:Label>
        <asp:TextBox ID="txtAddress" runat="server" CssClass="TextBox"></asp:TextBox>
        <br />

        <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number: " CssClass="label"></asp:Label>
        <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="TextBox"></asp:TextBox>
        <br />

        <asp:Label ID="lblEmail" runat="server" Text="Email: " CssClass="label"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" CssClass="TextBox"></asp:TextBox>
        <br />

        <asp:Label ID="ldlGender" runat="server" Text="Gender: " CssClass="label"></asp:Label>
        <asp:DropDownList ID="ddlGender" runat="server" CssClass="TextBox">
            <asp:ListItem Text="Choose gender" Value="" disabled="disabled" Selected="True"></asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Others</asp:ListItem>
        </asp:DropDownList>
        <br />

        <asp:Label ID="ldlSpeciality" runat="server" Text="Speciality: " CssClass="label"></asp:Label>
        <asp:DropDownList ID="ddlSpeciality" runat="server" CssClass="TextBox">
            <asp:ListItem Text="Select Speciality" Value="" disabled="disabled" Selected="True"></asp:ListItem>
            <asp:ListItem>Anesthesiology</asp:ListItem>
            <asp:ListItem>Cardiology</asp:ListItem>
            <asp:ListItem>Dermatology</asp:ListItem>
            <asp:ListItem>Neurology</asp:ListItem>
            <asp:ListItem>Psychiatry</asp:ListItem>
        </asp:DropDownList>
        <br />

        <asp:Label ID="lblUsername" runat="server" Text="Username: " CssClass="label"></asp:Label>
        <asp:TextBox ID="txtUsername" runat="server" CssClass="TextBox"></asp:TextBox>
        <br />

        <asp:Label ID="lblPassword" runat="server" Text="Password: " CssClass="label"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" CssClass="TextBox" TextMode="Password"></asp:TextBox>
        <br />

        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtAge" MinimumValue="0" MaximumValue="120" Type="Integer" ErrorMessage="Please enter a valid age between 0 and 120." ForeColor="Red"></asp:RangeValidator>
        <br />
        <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhoneNumber"
            ErrorMessage="Invalid phone number format. It should be 7 digits" ForeColor="Red"
            ValidationExpression="^\d{7}$"></asp:RegularExpressionValidator>
        <br />
        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail"
            ErrorMessage="Invalid email format" ForeColor="Red"
            ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"></asp:RegularExpressionValidator>
        <br />

        <asp:Button ID="btnAddDoctor" runat="server" Text="Add Doctor" CssClass="button" />
        <asp:accessdatasource runat="server" ID="adsDoctors" 
            DataFile="~/App_Data/SerenitySage.mdb" 
            DeleteCommand="DELETE FROM [doctors] WHERE [Username] = ?" 
            InsertCommand="INSERT INTO [doctors] ([Name], [Age], [Address], [Phone Number], [Email], [Gender], [Speciality], [Username], [Password]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" 
            SelectCommand="SELECT * FROM [doctors]" 
            UpdateCommand="UPDATE [doctors] SET [Name] = ?, [Age] = ?, [Address] = ?, [Phone Number] = ?, [Email] = ?, [Gender] = ?, [Speciality] = ?, [Username] = ?, [Password] = ?">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Age" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="Phone Number" Type="String" />
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
                <asp:Parameter Name="Phone Number" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="Speciality" Type="String" />
                <asp:Parameter Name="Username" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </UpdateParameters>
        </asp:accessdatasource>
    </div>
    </form>
</asp:Content>
