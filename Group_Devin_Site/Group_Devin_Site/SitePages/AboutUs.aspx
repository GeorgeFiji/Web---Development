<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/SerenitySage.master" AutoEventWireup="false" CodeFile="AboutUs.aspx.vb" Inherits="SitePages_AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">

    <h2 class="heading">About Us</h2>
    <section class="aboutus">
        <p class="paragraph">
            Welcome to Serenity Sage Wellness Clinic, where we prioritize your health and well-being through a holistic approach. Our clinic is dedicated to providing comprehensive, personalized care tailored to meet the unique needs of each patient. With a team of experienced specialists and a wide range of services, we strive to create a serene environment that promotes healing and relaxation. At Serenity Sage, we believe in the power of integrative medicine, combining traditional treatments with alternative therapies to enhance your overall health and quality of life.
        </p>
        <br />
        <asp:Button ID="btnDownloadFrom" runat="server" Text="Download Release Form" onclick="Unnamed1_Click" CssClass="button"></asp:Button>
    </section>

    <section>
    <!-- Slideshow container -->
    <div class="slideshow-container">
        <div class="mySlides">
            <h2 class="SubHeadings">Mission</h2>
            <br />
            <p class="MissionVision">Provide quality healthcare for all patients and actively contribute to the physical, mental, and social well-being of the community inclusively without being biased based on gender, race, religion, or age. They aim to promote quality living standards for individuals of all ages.</p>
        </div>
        <div class="mySlides">
            <h2 class="SubHeadings">Vision</h2>
            <br />
            <p class="MissionVision">A future in which everyone who requires help regardless of location, age, gender, or any form of discrimination is paid attention to as immediately as they can.</p>
        </div>
        <!-- Next/prev buttons -->
        <a class="prev" onclick="plusSlides(-1)">❮</a>
        <a class="next" onclick="plusSlides(1)">❯</a>
    </div>
    <!-- Dots/bullets/indicators -->
    <div class="dot-container">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
    </div>
    </section>
    <br />

    <h2 class="heading">Meet Our Developers Team</h2>
    <section class="section-two">
        <div>
        <asp:image ID="imgAkash" runat="server" CssClass="section-image"  ImageUrl="~/Images/akash.jpg" alt="Developer" />
        <figcaption class="description">Senior Software Engineer</figcaption>
        </div>
        <div>
            <h2 class="SubHeadings">Mr. Akash Mishra</h2>
            <p class="paragraph"> Our senior software engineer, with over 0 years of experience in healthcare technology, specializes in backend development and system architecture. He's known for delivering robust solutions that improve patient care and operational efficiency. Outside work, he enjoys photography, painting, and watching anime. Despite his dislike for presentations, his work speaks for itself. He values rest, believing a well-rested mind is key to creativity and productivity. His dedication, creativity, and balance make him an invaluable part of our team.</p>
            <br />
            <asp:HyperLink ID="HyperLinkFacebook" runat="server" NavigateUrl="https://www.facebook.com" CssClass="fa fa-facebook"></asp:HyperLink>
            <asp:HyperLink ID="HyperLinkTwitter" runat="server" NavigateUrl="https://twitter.com" CssClass="fa fa-twitter"></asp:HyperLink>
            <asp:HyperLink ID="HyperLinkLinkedIn" runat="server" NavigateUrl="https://www.linkedin.com" CssClass="fa fa-linkedin"></asp:HyperLink>
            <asp:HyperLink ID="HyperLinkInstagram" runat="server" NavigateUrl="https://www.instagram.com" CssClass="fa fa-instagram"></asp:HyperLink>
       </div>
    </section>

    <section class="section-one">
        <div>
            <h2 class="SubHeadings">Mr. George Fong</h2>
            <p class="paragraph"> Meet our full-stack developer, a tech enthusiast with a passion for building seamless integrations between front-end and back-end systems. His keen eye for detail and commitment to quality are evident in the robust and user-friendly applications he develops. When he's not coding, you can find him on the basketball court, either playing a game or cheering on his favorite team. He values rest as much as work, believing that a well-rested mind is key to effective coding. While presentations aren't his cup of tea, his work speaks volumes about his capabilities, making him an invaluable asset to our team.</p>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.facebook.com" CssClass="fa fa-facebook"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="https://twitter.com" CssClass="fa fa-twitter"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="https://www.linkedin.com" CssClass="fa fa-linkedin"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="https://www.instagram.com" CssClass="fa fa-instagram"></asp:HyperLink>
        </div>
        <div>
        <asp:image ID="imgGeorge" runat="server" CssClass="section-image" ImageUrl="~/Images/george.jpg" alt="Developer"/>
        <figcaption  class="description">Full-Stack Developer</figcaption>
        </div>
    </section>

    <section class="section-two">
        <div>
            <asp:image ID="imgShindu" runat="server" CssClass="section-image"  ImageUrl="~/Images/Shindu.jpg" alt="Developer"/>
            <figcaption class="description">Front-End Developer</figcaption>
        </div>
        <div>
            <h2 class="SubHeadings">Miss Shindu Chand</h2>
            <p class="paragraph">Meet our front-end developer, a master at creating intuitive and responsive user interfaces. Her expertise in HTML, CSS, and JavaScript frameworks allows her to craft digital experiences that are not only visually appealing but also user-friendly. Her passion for front-end development is evident in the meticulous attention to detail she brings to every project. Outside of coding, she has a love for literature, often found immersed in a good book or expressing her thoughts through writing. An avid traveler, she enjoys exploring new places and cultures, accompanied by the rhythm of her favorite music. Despite her diverse interests, there's one thing she can't stand - pineapple on pizza. Her unique blend of technical skills, creativity, and personal interests make her an invaluable asset to our team.</p>
            <br />
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="https://www.facebook.com" CssClass="fa fa-facebook"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="https://twitter.com" CssClass="fa fa-twitter"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="https://www.linkedin.com" CssClass="fa fa-linkedin"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="https://www.instagram.com" CssClass="fa fa-instagram"></asp:HyperLink>
       </div>
    </section>

    <section class="section-one">
        <div>
            <h2 class="SubHeadings">Miss Josifini Raqiawa</h2>
            <p class="paragraph">Meet our DevOps engineer, a key player in our team. She ensures our systems are scalable, reliable, and secure, a critical aspect in today's digital world. With her expertise in cloud services, continuous integration, and deployment pipelines, she plays a pivotal role in maintaining the smooth operation of our systems. Her technical skills are complemented by a keen interest in photography, adding a unique blend of creativity to her technical prowess. In her downtime, she enjoys immersing herself in the world of movies, providing a balance to her work. Although presentations aren't her favorite, her work speaks for itself, reflecting her dedication and commitment.</p>
            <br />
            <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="https://www.facebook.com" CssClass="fa fa-facebook"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="https://twitter.com" CssClass="fa fa-twitter"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink11" runat="server" NavigateUrl="https://www.linkedin.com" CssClass="fa fa-linkedin"></asp:HyperLink>
            <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="https://www.instagram.com" CssClass="fa fa-instagram"></asp:HyperLink>
        </div>
       <div>
            <asp:image ID="imgJosifini" runat="server" CssClass="section-image" ImageUrl="~/Images/josifini.jpg" alt="Developer"/>
            <figcaption  class="description">DevOps Engineer</figcaption>
        </div>
    </section>
</asp:Content>
