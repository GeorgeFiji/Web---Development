<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/SerenitySage.master" AutoEventWireup="false" CodeFile="Specialist.aspx.vb" Inherits="SitePages_Specialist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">

    <section>
        <h2 class="heading">Meet Our Team</h2>
        <br />
        <p class="paragraph">At Serenity Sage Wellness Medical Center, our team is our greatest asset. Comprised of dedicated and experienced medical professionals, our team is committed to providing exceptional care in a compassionate and friendly environment. Our doctors, nurses, therapists, and administrative staff work collaboratively to ensure each patient receives personalized and holistic care. We invite you to meet our team and experience the warmth, expertise, and exceptional care that define Serenity Sage Wellness Medical Center.</p>
    </section>

    <section class="section-two">
        <div>
            <asp:image ID="ImgJohnny" runat="server" CssClass="section-image" ImageUrl="~/Images/team-1.jpg" alt="Our Specialist"/>
            <figcaption class="description">Dr Johnny Badshah - Anesthesiology</figcaption>
        </div>
        <div>
            <h2 class="SubHeadings">Dr. Johnny Badshah</h2>
            <p class="paragraph">Dr. Johnny Badshah is a highly respected and integral part of our team at Serenity Sage Wellness Medical Center. As our lead Anesthesiologist, Dr. Badshah brings a wealth of knowledge and experience in the field of anesthesiology. He is known for his meticulous attention to detail and his commitment to patient safety and comfort. His expertise lies in administering anesthesia for a wide range of surgical procedures, ensuring that patients have a pain-free experience. Dr. Badshah's compassionate approach and dedication to his patients' well-being truly embody the values of our center. We are proud to have him as a part of our team.</p>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.facebook.com" CssClass="fa fa-facebook"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="https://twitter.com" CssClass="fa fa-twitter"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="https://www.linkedin.com" CssClass="fa fa-linkedin"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="https://www.instagram.com" CssClass="fa fa-instagram"></asp:HyperLink>
        </div>
    </section>

    <section class="section-one">
        <div>
            <h2 class="SubHeadings">Dr. Abel Patel</h2>
            <p class="paragraph">Dr. Abel Patel is a valued member of our team at Serenity Sage Wellness Medical Center, serving as our lead Cardiologist. With his profound knowledge and experience in cardiology, Dr. Patel specializes in diagnosing and treating diseases of the cardiovascular system. His expertise includes, but is not limited to, heart disease management, interventional cardiology, and preventive cardiology. Dr. Patel is deeply committed to providing the highest quality of care to his patients, ensuring they receive the most effective treatments for their heart conditions. His compassionate approach and dedication to patient satisfaction truly embody the values of our center. We are proud to have him as a part of our team.</p>
            <br />
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="https://www.facebook.com" CssClass="fa fa-facebook"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="https://twitter.com" CssClass="fa fa-twitter"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="https://www.linkedin.com" CssClass="fa fa-linkedin"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="https://www.instagram.com" CssClass="fa fa-instagram"></asp:HyperLink>
        </div>
        <div>
            <asp:image ID="ImgAbel" runat="server" CssClass="section-image" ImageUrl="~/Images/team-2.jpg" alt="Our Specialist"/>
            <figcaption class="description">Dr. Abel Patel - Cardiology</figcaption>
        </div>
    </section>

    <section class="section-two">
        <div>
            <asp:image ID="ImgLana" runat="server" CssClass="section-image" ImageUrl="~/Images/team-3.jpg" alt="Our Specialist"/>
            <figcaption class="description">Dr. Lana Cruise - Dermatology</figcaption>
        </div>
        <div>
            <h2 class="SubHeadings">Dr. Lana Cruise</h2>
            <p class="paragraph"> Dr. Lana Cruise is a distinguished member of our team at Serenity Sage Wellness Medical Center, serving as our lead Dermatologist. With her extensive knowledge and experience in dermatology, Dr. Cruise specializes in diagnosing and treating a wide range of skin conditions. Her expertise includes, but is not limited to, acne treatment, skin cancer detection, and cosmetic dermatology. Dr. Cruise is deeply committed to providing the highest quality of care to her patients, ensuring they receive the most effective treatments for their skin concerns. Her compassionate approach and dedication to patient satisfaction truly embody the values of our center. We are proud to have her as a part of our team.</p>
             <br />
            <asp:HyperLink ID="HyperLinkFacebook" runat="server" NavigateUrl="https://www.facebook.com" CssClass="fa fa-facebook"></asp:HyperLink>
            <asp:HyperLink ID="HyperLinkTwitter" runat="server" NavigateUrl="https://twitter.com" CssClass="fa fa-twitter"></asp:HyperLink>
            <asp:HyperLink ID="HyperLinkLinkedIn" runat="server" NavigateUrl="https://www.linkedin.com" CssClass="fa fa-linkedin"></asp:HyperLink>
            <asp:HyperLink ID="HyperLinkInstagram" runat="server" NavigateUrl="https://www.instagram.com" CssClass="fa fa-instagram"></asp:HyperLink>
        </div>
    </section>

</asp:Content>

