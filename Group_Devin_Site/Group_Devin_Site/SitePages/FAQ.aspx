<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/SerenitySage.master" AutoEventWireup="false" CodeFile="FAQ.aspx.vb" Inherits="SitePages_FAQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">
<div onload="setupFaqToggle();">
  <section class="faq-header">
        <h2 class="heading">Frequently Asked Questions</h2><br />
        <p class="paragraph">Welcome to the Serenity Sage Medical Center FAQ page. Here, you can find answers to some of the most commonly asked questions about our services, policies, and more. Our goal is to provide you with the information you need to make informed decisions about your health care.</p>
  <br />
  </section>

    <section class="faq-content">
        <article class="faq-section">
            <h2 class="SubHeadings">General Information</h2>
            <section class="faq-item">
                <h3 class="SubHeadings">What services does Serenity Sage Medical Center offer?</h3>
                <p class="paragraph">We offer a comprehensive range of medical services including primary care, specialty care, diagnostic testing, and more. For a detailed list of services, please visit our Services page.</p>
            </section>
            <section class="faq-item">
                <h3 class="SubHeadings">What are your operating hours?</h3>
                <p class="paragraph">Our medical center operates Monday through Friday from 8:00 AM to 5:00 PM. We also offer weekend and after-hours appointments by special arrangement.</p>
            </section>
            <section class="faq-item">
                <h3 class="SubHeadings">How can I schedule an appointment?</h3>
                <p class="paragraph">Appointments can be scheduled by calling our main office at (555) 123-4567 or by using our online booking system on the Appointments page.</p>
            </section>
        </article>
        <article class="faq-section">
            <h2 class="SubHeadings">Billing and Insurance</h2>
            <section class="faq-item">
                <h3 class="SubHeadings">What insurance plans do you accept?</h3>
                <p class="paragraph">We accept a wide range of insurance plans. Please check our Insurance page for a complete list of accepted plans or contact our billing department for more information.</p>
            </section>
            <section class="faq-item">
                <h3 class="SubHeadings">How do I pay my bill?</h3>
                <p class="paragraph">Bills can be paid online through our patient portal, by mail, or in person at our billing office. For more details, please visit our Billing page.</p>
            </section>
            <section class="faq-item">
                <h3 class="SubHeadings">Who can I contact for billing questions?</h3>
                <p class="paragraph">For any billing-related inquiries, please contact our billing department at (555) 123-7890 or email billing@serenitysage.com.</p>
            </section>
        </article>
    </section>
    </div>

    <section>
    <h2 class="SubHeadings">Questions asked by Other Users</h2><br />

    <!-- Slideshow container -->
    <div class="slideshow-container">
        <asp:Repeater ID="slideshowContainer1" runat="server">
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
        <asp:Repeater ID="dotContainer1" runat="server">
            <ItemTemplate>
                <span class="dot" onclick="currentSlide(<%# Container.ItemIndex + 1 %>)"></span>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    </section>
    <br/>
   
</asp:Content>

