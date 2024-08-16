<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/SerenitySage.master" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="SitePages_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
    <section class="section-one">
        <div>
            <h2 class="heading">Welcome to SerenitySage Wellness</h2>
            <p class="paragraph">We are here, because you are here. We provide comprehensive wellness services designed to enhance your physical, mental, and emotional well-being. Located in a serene environment, our clinic offers personalized care and support to help you achieve your health goals. From holistic treatments to modern therapies, we are dedicated to guiding you on your journey to optimal wellness. Come experience tranquility and rejuvenation with us at Serenity Sage Wellness</p>
            <br />
            <asp:LinkButton ID="linkBookNow" runat="server" CssClass="Sectionbutton" PostBackUrl="~/PatientPortalPages/AddAppointment.aspx">Schedule an Appointment</asp:LinkButton>
            <asp:LinkButton ID="linkVisitUs" runat="server" CssClass="Sectionbutton" PostBackUrl="~/SitePages/ContactUs.aspx">Visit Our Clinic</asp:LinkButton>
        </div>
        <div>
            <asp:image ID="ImgHome" runat="server" ImageUrl="~/Images/home.jpg" CssClass="section-image" alt="clinic picture" />

            <figcaption class="description">SerenitySage Wellness Clinic</figcaption>
        </div>
    </section>

    <section class="section-two">
        <div>
            <asp:image ID="ImgPortal" runat="server" ImageUrl="~/Images/portal-login.png" alt="MyHealth Portal" />
            <figcaption class="description">MyHealth Portal</figcaption>
        </div>
        <div>
            <h2 class="SubHeadings">Access your care records with the MyHealth portal</h2>
            <p class="paragraph">Our dedication to the Clifton community drives us to provide you with exceptional healthcare, tailored to your needs. That's why we're proud to offer you MyHealth, our cutting-edge online platform that empowers you to take control of your healthcare journey right from the heart of Clifton, Texas.</p>
            <br />
            <asp:LinkButton ID="LinkButton3" runat="server" CssClass="Sectionbutton" PostBackUrl="~/SitePages/Login.aspx">Patient Portal</asp:LinkButton>
            <asp:LinkButton ID="LinkButton4" runat="server" CssClass="Sectionbutton" PostBackUrl="~/SitePages/UserRegistration.aspx">Register</asp:LinkButton>
        </div>
    </section>

    <h2 class="SubHeadings">Mental Health Moments Blog</h2>
    <section class="section-three">
        <div>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/blog-1.png" CssClass="section-image" alt="Blog Post One" PostBackUrl="~/SitePages/Blogs.aspx"></asp:ImageButton>
            <figcaption class="description">Beyond Disaster: Building Resilience</figcaption>
        </div>
        <div>
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/blog-2.png" CssClass="section-image" alt="Blog Post Two" PostBackUrl="~/SitePages/Blogs.aspx"></asp:ImageButton>
            <figcaption class="description">Thinking Positive Thoughts</figcaption>
        </div>
    </section>

    <h2 class="SubHeadings">Our Patients Testimonials</h2>

    <section>
    <!-- Slideshow container -->
    <div class="slideshow-container">
        <asp:Repeater ID="slideshowContainer" runat="server">
            <ItemTemplate>
                <%# Container.DataItem %>
            </ItemTemplate>
        </asp:Repeater>

        <!-- Next/prev buttons -->
        <a class="prev" onclick="plusSlides(-1)">❮</a>
        <a class="next" onclick="plusSlides(1)">❯</a>
    </div>

    <!-- Dots/bullets/indicators -->
    <div class="dot-container">
        <asp:Repeater ID="dotContainer" runat="server">
            <ItemTemplate>
                <span class="dot" onclick="currentSlide(<%# Container.ItemIndex + 1 %>)"></span>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    </section>
    <br />
</asp:Content>
