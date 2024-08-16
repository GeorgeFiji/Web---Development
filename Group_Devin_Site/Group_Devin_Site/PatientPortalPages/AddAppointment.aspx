<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/MyHealthUsers.master" AutoEventWireup="false" CodeFile="AddAppointment.aspx.vb" Inherits="PatientPortalPages_AddAppointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form method="post">
    <h2 class="heading">Schedule an Appointment With Us</h2><br />

    <div class="myForm">
        <asp:Label ID="lblDoctor" runat="server" Text="Select Doctor: " CssClass="label"></asp:Label>
        <asp:DropDownList ID="ddlDoctor" runat="server" CssClass="TextBox">
            <asp:ListItem Text="Choose Doctor" Value="" disabled="disabled" Selected="True"></asp:ListItem>
            <asp:ListItem>Dr Johnny Badshah</asp:ListItem>
            <asp:ListItem>Dr Abel Patel</asp:ListItem>
            <asp:ListItem>Dr Lana Cruise</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvDoctor" runat="server" ControlToValidate="ddlDoctor" InitialValue="" ErrorMessage="Please select a doctor" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <asp:Label ID="lblTime" runat="server" Text="Select Time: " CssClass="label"></asp:Label>
        <asp:DropDownList ID="ddlTime" runat="server" CssClass="TextBox">
            <asp:ListItem Text="Choose Time" Value="" disabled="disabled" Selected="True"></asp:ListItem>
            <asp:ListItem>8am</asp:ListItem>
            <asp:ListItem>9am</asp:ListItem>
            <asp:ListItem>10am</asp:ListItem>
            <asp:ListItem>11am</asp:ListItem>
            <asp:ListItem>12am</asp:ListItem>
            <asp:ListItem>1pm</asp:ListItem>
            <asp:ListItem>2pm</asp:ListItem>
            <asp:ListItem>3pm</asp:ListItem>
            <asp:ListItem>4pm</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvTime" runat="server" ControlToValidate="ddlTime" InitialValue="" ErrorMessage="Please select a time" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />

        <asp:Label ID="lblDate" runat="server" Text="Select Date: " CssClass="label"></asp:Label>
        <asp:Calendar ID="CalDate" runat="server" StartDate="<%# DateTime.Today %>" CssClass="aspNetCalendar"></asp:Calendar>
        <br />

        <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="button" Color="white" ForeColor="White"/>
        <br />

        <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="true"
            ShowSummary="false" ForeColor="Red" />
            <asp:AccessDataSource ID="adsBooking" runat="server" 
                DataFile="~/App_Data/SerenitySage.mdb" 
                DeleteCommand="DELETE FROM [booking] WHERE [Username] = ?" 
                InsertCommand="INSERT INTO [booking] ([Username], [Doctor], [Time], [Date]) VALUES (?, ?, ?, ?)" 
                SelectCommand="SELECT * FROM [booking]" 
                UpdateCommand="UPDATE [booking] SET [Username] = ?, [Doctor] = ?, [Time] = ?, [Date] = ?">
                <DeleteParameters>
                    <asp:Parameter Name="Username" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Doctor" Type="String" />
                    <asp:Parameter Name="Time" Type="DateTime" />
                    <asp:Parameter Name="Date" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Doctor" Type="String" />
                    <asp:Parameter Name="Time" Type="DateTime" />
                    <asp:Parameter Name="Date" Type="DateTime" />
                </UpdateParameters>
            </asp:AccessDataSource>
      </div>
      </form>

</asp:Content>

