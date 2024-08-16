<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/SerenitySage.master" AutoEventWireup="false" CodeFile="Services.aspx.vb" Inherits="SitePages_Services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">

    <h2 class="heading">Our Services</h2><br />
    <section>
        <p class="paragraph">Welcome to our comprehensive range of specialized healthcare services. At SerenitySage Wellness, we are committed to providing exceptional care tailored to meet your unique needs. Our dedicated team of healthcare professionals delivers a wide array of services, ranging from cardiology and childbirth to dental and tumor care. With a focus on excellence and compassion, we strive to ensure the well-being and satisfaction of every patient we serve. Explore our services below to discover how we can support you on your journey to better health and wellness.</p>
    </section>

    <section class="section-two">
        <div>
            <asp:image ID="ImgCardiology" runat="server" ImageUrl="~/Images/cardiology-service.jpg" alt="Services Provided"/>
            <figcaption class="description">Cardiology Service</figcaption>
        </div>
        <div>
            <h2 class="SubHeadings">Cardiology Service</h2>
            <p class="paragraph">Our dedicated team of healthcare professionals delivers a wide array of services, ranging from cardiology and childbirth to dental and tumor care. With a focus on excellence and compassion, we strive to ensure the well-being and satisfaction of every patient we serve. Explore our services below to discover how we can support you on your journey to better health and wellness.</p>
        </div>
    </section>

    <section class="section-one">
        <div>
            <h2 class="SubHeadings">Childbirth Service</h2>
            <p class="paragraph">Our dedicated team of healthcare professionals delivers a wide array of services, ranging from cardiology and childbirth to dental and tumor care. With a focus on excellence and compassion, we strive to ensure the well-being and satisfaction of every patient we serve. Explore our services below to discover how we can support you on your journey to better health and wellness.</p>
        </div>
        <div>
            <asp:image ID="ImgChildBirth" runat="server" ImageUrl="~/Images/childbirth-service.jpg" alt="Services Provided"/>
            <figcaption class="description">Childbirth Service</figcaption>
        </div>
    </section>

    <section class="section-two">
        <div>
            <asp:image ID="ImgDental" runat="server" ImageUrl="~/Images/dental-service.jpg" alt="Services Provided"/>
            <figcaption class="description">Dental Service</figcaption>
        </div>
        <div>
            <h2 class="SubHeadings">Dental Service</h2>
            <p class="paragraph">Our dedicated team of healthcare professionals delivers a wide array of services, ranging from cardiology and childbirth to dental and tumor care. With a focus on excellence and compassion, we strive to ensure the well-being and satisfaction of every patient we serve. Explore our services below to discover how we can support you on your journey to better health and wellness.</p>
        </div>
    </section>

    <section class="section-one">
        <div>
            <h2 class="SubHeadings">Tumor Service</h2>
            <p class="paragraph">Our dedicated team of healthcare professionals delivers a wide array of services, ranging from cardiology and childbirth to dental and tumor care. With a focus on excellence and compassion, we strive to ensure the well-being and satisfaction of every patient we serve. Explore our services below to discover how we can support you on your journey to better health and wellness.</p>
        </div>
        <div>
            <asp:image ID="ImgTumor" runat="server" ImageUrl="~/Images/tumor-service.jpg" alt="Services Provided"/>
            <figcaption class="description">Tumor Service</figcaption>
        </div>
    </section>

</asp:Content>
