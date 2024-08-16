<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/SerenitySage.master" AutoEventWireup="false" CodeFile="Feedback.aspx.vb" Inherits="SitePages_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <form method="post">
    <section class="feedback-container">
        <h2 class="heading">Feedback Form</h2>
        <asp:Panel ID="feedbackPanel" runat="server">
            <label for="txtfName">Full Name:</label>
            <asp:TextBox ID="txtfName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtfName" ErrorMessage="Full name is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
            <br />

            <label for="ddlRating">Rating for our Services:</label>
            <asp:DropDownList ID="ddlRating" runat="server">
                <asp:ListItem Text="Choose Rating" Value="" disabled="disabled" Selected="True"></asp:ListItem>
                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                <asp:ListItem Text="2" Value="2"></asp:ListItem>
                <asp:ListItem Text="3" Value="3"></asp:ListItem>
                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                <asp:ListItem Text="5" Value="5"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvRating" runat="server" ControlToValidate="ddlRating" InitialValue="" ErrorMessage="Please select a rating" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

            <label for="ddlExperience">Experience Using the Site:</label>
            <asp:DropDownList ID="ddlExperience" runat="server">
                <asp:ListItem Text="Choose Experience" Value="" disabled="disabled" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Excellent" Value="Excellent"></asp:ListItem>
                <asp:ListItem Text="Good" Value="Good"></asp:ListItem>
                <asp:ListItem Text="Average" Value="Average"></asp:ListItem>
                <asp:ListItem Text="Poor" Value="Poor"></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvExperience" runat="server" ControlToValidate="ddlExperience" InitialValue="" ErrorMessage="Please select an experience" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

            <label for="txtComment">Comments:</label>
            <asp:TextBox ID="txtComment" runat="server" TextMode="MultiLine" Rows="5"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvComment" runat="server" ControlToValidate="txtComment" ErrorMessage="Comments are required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="button" />
            <asp:AccessDataSource runat="server" ID="adsFeedback" 
                DataFile="~/App_Data/SerenitySage.mdb" 
                DeleteCommand="DELETE FROM [Feedback] WHERE [Email] = ?" 
                InsertCommand="INSERT INTO [Feedback] ([Full_Name], [Email], [Rate_Service], [Rate_Website], [Comments]) VALUES (?, ?, ?, ?, ?)" 
                SelectCommand="SELECT * FROM [Feedback]" 
                UpdateCommand="UPDATE [Feedback] SET [Full_Name] = ?, [Email] = ?, [Rate_Service] = ?, [Rate_Website] = ?, [Comments] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="Email" Type="String" />
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
                </UpdateParameters>
            </asp:AccessDataSource>
        </asp:Panel>
        <asp:Panel ID="thankYouPanel" runat="server" Visible="False">
            <h2>Thank You!</h2>
            <p class="thank-you-message">Thank you for your feedback. We value your input and will use it to improve our services.</p>
        </asp:Panel>
    </section>
    </form>

</asp:Content>

