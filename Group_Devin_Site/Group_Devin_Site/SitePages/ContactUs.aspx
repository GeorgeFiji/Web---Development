<%@ Page Title="" Language="VB" Debug="true" MasterPageFile="~/MasterPages/SerenitySage.master" AutoEventWireup="false" CodeFile="ContactUs.aspx.vb" Inherits="SitePages_ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">


<h2 class="heading">Contact Us</h2>
<br />
    <section class="contact-section">
        <h2 class="SubHeadings">Get In Touch With Our Medical Staffs</h2>
        <p class="contact-details"> In case of an Emergency Dial 9-1-1</p>
        <p class="contact-details"> Mental Health Crisis Hotline Text or Call 988</p>
        <p class="contact-details"> Hospital - +679XXXXXXX</p>
    </section>

    <section class="contact-section">
        <h2 class="SubHeadings">Or come visit us at</h2> 
        <address>
            <p class="contact-details">P.O. Box XX</p>  
            <p class="contact-details">201 No Where Street</p>
            <p class="contact-details">Somewhere, Fiji </p>
        </address>  
        <br />

        <h2 class="SubHeadings">Our Social Media Platforms</h2> 
        <br />
        <asp:HyperLink ID="HyperLinkFacebook" runat="server" NavigateUrl="https://www.facebook.com" CssClass="fa fa-facebook"></asp:HyperLink>
        <asp:HyperLink ID="HyperLinkTwitter" runat="server" NavigateUrl="https://twitter.com" CssClass="fa fa-twitter"></asp:HyperLink>
        <asp:HyperLink ID="HyperLinkLinkedIn" runat="server" NavigateUrl="https://www.linkedin.com" CssClass="fa fa-linkedin"></asp:HyperLink>
        <asp:HyperLink ID="HyperLinkInstagram" runat="server" NavigateUrl="https://www.instagram.com" CssClass="fa fa-instagram"></asp:HyperLink>
    </section>

    <section class="map-container">
        <h2 class="SubHeadings">Need Directions?</h2>
        <br />       
       <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6376.209668662699!2d178.44565579929144!3d-18.14930749973262!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6e1bddd1d33b500d%3A0x151b26830981d6a1!2sThe%20University%20of%20the%20South%20Pacific!5e0!3m2!1sen!2sfj!4v1716676840718!5m2!1sen!2sfj"></iframe>                                     
     </section> 
   
    <form method="post">
    <div class="ContactBox">

        <asp:Panel ID="formPanel" runat="server">

        <h2 class="SubHeadings"> HAVE QUESTIONS? </h2>

        <asp:Label for="txtfName" class="formLables"   runat="server" Text="Full Name:"></asp:Label>
        <asp:TextBox ID="txtfName" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvFirstName" ControlToValidate="txtfName" ErrorMessage="Full name is required" ForeColor="Red" runat="server" />
        <br /><br />

        <asp:Label for="txtEmail" class="formLables"  runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEmail" ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red" runat="server" />
        <asp:RegularExpressionValidator ID="revEmail" ControlToValidate="txtEmail" ErrorMessage="Invalid email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" runat="server" />
        <br /><br />

        <asp:Label for="txtQuestion" class="formLables"  runat="server" Text="Question:"></asp:Label>
        <br />
     
        <asp:TextBox ID="txtQuestion" CssClass="form-control" runat="server" TextMode="MultiLine" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvQuestion" ControlToValidate="txtQuestion" ErrorMessage="Question is required" ForeColor="Red" runat="server" />
         <br />
           <asp:AccessDataSource ID="adsQuestion" runat="server" 
               DataFile="~/App_Data/SerenitySage.mdb" 
               DeleteCommand="DELETE FROM [Question] WHERE [Email] = ?" 
               InsertCommand="INSERT INTO [Question] ([Full_Name], [Email], [Question]) VALUES (?, ?, ?)" 
               SelectCommand="SELECT * FROM [Question]" 
           
               UpdateCommand="UPDATE [Question] SET [Full_Name] = ?, [Email] = ?, [Question] = ? ">
               <DeleteParameters>
                   <asp:Parameter Name="ID" Type="Int32" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:Parameter Name="Full_Name" Type="String" />
                   <asp:Parameter Name="Email" Type="String" />
                   <asp:Parameter Name="Question" Type="String" />
               </InsertParameters>
               <UpdateParameters>
                   <asp:Parameter Name="Full_Name" Type="String" />
                   <asp:Parameter Name="Email" Type="String" />
                   <asp:Parameter Name="Question" Type="String" />
               </UpdateParameters>
           </asp:AccessDataSource>
           <br />
       <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="button" />

        </asp:Panel>
                <asp:Panel ID="thankYouPanel" runat="server" Visible="False">
                    <h2 class="SubHeadings">Thank You!</h2>
                    <p class="thank-you-message">Your question has been submitted successfully. We will get back to you shortly.</p>
                </asp:Panel>
       </div>
       </form>
</asp:Content>


