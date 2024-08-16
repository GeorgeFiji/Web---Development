<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/SerenitySage.master" AutoEventWireup="false" CodeFile="Blogs.aspx.vb" Inherits="SitePages_Blogs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" Runat="Server">

        <h2 class="heading">Latest Health Blogs</h2>
        <article class="section-two">
            <div>
                <asp:Image ID="ImgBlogOne" runat="server" ImageUrl="~/Images/blog-1.png" CssClass="section-image" alt="Blog Post"/>
                <figcaption class="description">Building Resilience</figcaption>
            </div>
            <div>
                <h2 class="SubHeadings">Beyond Disaster: Building Resilience</h2>
                <p class="paragraph">
                    As we head into the fourth year of our lives being changed or “turned upside down” by the Covid-19 Pandemic, cumulative stress has had negative effects on each of us physically, emotionally, mentally, and perhaps even spiritually. You are not alone. Even those who appear to be coping well are experiencing underlying anxiety.
                    For your Mental Health Moment today: Stop and think about how Resilient you have been in dealing with the changes that have occurred over the last 3 years. Resilience is your inner strength and ability to cope and deal competently and successfully, day after day, with the challenges and demands you encounter. You have the ability to “bounce back!”
                </p>
            </div>
        </article>

        <article class="section-one">
            <div>
                <h2 class="SubHeadings">Thinking Positive Thoughts</h2>
                <p class="paragraph">
                    Many of us pay a lot of attention to what we eat. We count our calories, limit fatty foods, and reduce our intake of sugar and salt. And we make an effort to eat the not-so-good-for-us-foods in moderation. We may love French fries but we all know the consequences if that were all we ate for a week.
                    It's the same with our emotions. Just like the foods we eat, some are more nutritious than others.
                    Do you live on a regular diet of stressful emotions? Do you worry a lot or get down on yourself all the time or feel anxious about something every day? A steady diet made up of these kinds of emotions can be harmful to your mental and physical health as well as the overall quality of your life. We're not advocating repressing 'negative' emotions or never feeling sad or frustrated. But we do know that positive emotions, like appreciation, care, and kindness, are more beneficial in the long run.
                </p>
            </div>
            <div>
                <asp:Image ID="ImgBlogTwo" runat="server" ImageUrl="~/Images/blog-2.png" CssClass="section-image" alt="Blog Post"/>
                <figcaption class="description">Thinking Positive Thoughts</figcaption>
            </div>
        </article>

        <article>
            <h2 class="SubHeadings">Common Anxiety Disorders and Prevalence In Adolescents</h2>
            <p class="paragraph">Anxiety can originate from a variety of situations or predispositions. Anxiety can be caused by genetics or environmental factors, such as stress or developmental factors. Anxiety can be triggered or can increase from a multitude of circumstances such as school environment, social media, trauma, and specific situations that cause worry or avoidance.</p>

            <table>
                <caption>Prevalence of Various Anxiety Disorders</caption>
                <tr>
                    <th>Anxiety Disorder</th>
                    <th>Prevalence (%)</th>
                </tr>
                <tr>
                    <td>Generalized Anxiety Disorder (GAD)</td>
                    <td>3.1%</td>
                </tr>
                <tr>
                    <td>Panic Disorder</td>
                    <td>2.7%</td>
                </tr>
                <tr>
                    <td>Social Anxiety Disorder</td>
                    <td>7.1%</td>
                </tr>
                <tr>
                    <td>Specific Phobias</td>
                    <td>8.7%</td>
                </tr>
                <tr>
                    <td>Agoraphobia</td>
                    <td>1.7%</td>
                </tr>
                <tr>
                    <td>Separation Anxiety</td>
                    <td>4.1%</td>
                </tr>
                <tr>
                    <td>Selective Mutism</td>
                    <td>0.8%</td>
                </tr>
                <tr>
                    <td>Medication-Induced Anxiety</td>
                    <td>Varies</td>
                </tr>
            </table>
    </article>

    <section>
    <h2 class="SubHeadings">Blogs By Our Doctors</h2>
        <!-- Slideshow container -->
        <div class="slideshow-container"> 
            <asp:Repeater ID="slideshowContainer2" runat="server">
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
            <asp:Repeater ID="dotContainer2" runat="server">
                <ItemTemplate>
                    <span class="dot" onclick="currentSlide(<%# Container.ItemIndex + 1 %>)"></span>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <br/>
    </section>
</asp:Content>

