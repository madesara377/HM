<%@ Page Title="About Us | Hospital Management System" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="HM.about" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <section class="page-banner">
        <div class="container page-banner-content">
            <h1 class="page-banner-title">About Our Hospital</h1>
            <p class="page-banner-desc">Dedicated to medical excellence, compassionate healing, and advanced healthcare management.</p>
            <div class="breadcrumb">
                <a href="index.aspx">Home</a>
                <span>/</span>
                <span class="active">About Us</span>
            </div>
        </div>
    </section>

    <main>


        <section class="section-padding">
            <div class="container">
                <div class="hero-grid">
                


                    <div class="hero-content">
                        <span class="section-badge">Who We Are</span>
                        <h2 class="section-title">About Hospital Management System</h2>
                        <p class="hero-desc" style="margin-bottom: 20px;">
                            Welcome to our Hospital Management System. Our platform helps hospitals efficiently manage patients, doctors, appointments, billing, and medical records.
                        </p>
                        <p style="color: var(--text-muted); font-size: 1rem; margin-bottom: 25px; line-height: 1.7;">
                            Established with the goal of bringing patient care into the digital era, our hospital combines clinical expertise with modern healthcare administration. From instant appointment booking to paperless electronic health records, our centralized system guarantees that patients receive prompt, compassionate, and precise medical care at every touchpoint.
                        </p>

                        <div class="hero-highlights">
                            <div class="highlight-item">
                                <i class="fas fa-check-circle"></i> NABH &amp; ISO Accredited Standards
                            </div>
                            <div class="highlight-item">
                                <i class="fas fa-check-circle"></i> 24/7 Advanced Trauma Unit
                            </div>
                            <div class="highlight-item">
                                <i class="fas fa-check-circle"></i> State-of-the-Art Intensive Care (ICU)
                            </div>
                        </div>
                    </div>

                  
                    <div class="hero-image-wrapper">
                        <div class="hero-image-card">
                            <img src="images/hospital.jpg" alt="Hospital Management Center Architecture" />
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <section class="section-padding" style="background-color: #ffffff; border-top: 1px solid var(--border-color); border-bottom: 1px solid var(--border-color);">
            <div class="container">
                <div class="section-header">
                    <span class="section-badge">Our Foundation</span>
                    <h2 class="section-title">Mission, Vision &amp; Core Values</h2>
                    <p class="section-subtitle">
                        Guiding our medical staff and technological solutions to deliver the highest standard of patient care.
                    </p>
                </div>

                <div class="mvv-grid">
                  

                    <article class="mvv-card">
                        <div class="mvv-icon icon-mission">
                            <i class="fas fa-bullseye"></i>
                        </div>
                        <h3>Our Mission</h3>
                        <p>
                            Provide efficient and accessible healthcare services. We strive to improve human lives through continuous medical innovation, digital care records, and empathetic patient support.
                        </p>
                    </article>

             

                    <article class="mvv-card">
                        <div class="mvv-icon icon-vision">
                            <i class="fas fa-eye"></i>
                        </div>
                        <h3>Our Vision</h3>
                        <p>
                            Build a modern and patient-friendly healthcare environment. We envision a seamless healthcare ecosystem where technology and medicine unite for equitable and timely treatment.
                        </p>
                    </article>

              
                    <article class="mvv-card">
                        <div class="mvv-icon icon-values">
                            <i class="fas fa-hands-holding-heart"></i>
                        </div>
                        <h3>Our Values</h3>
                        <p>
                            Care, trust, safety, and professionalism. We uphold the highest ethical medical standards, uncompromising patient privacy, and clinical transparency in everything we do.
                        </p>
                    </article>
                </div>
            </div>
        </section>


        <section class="section-padding">
            <div class="container">
                <div class="section-header">
                    <span class="section-badge">Hospital Infrastructure</span>
                    <h2 class="section-title">World-Class Facilities</h2>
                    <p class="section-subtitle">
                        Engineered with modern diagnostic equipment and hygienic medical suites for supreme patient comfort.
                    </p>
                </div>

                <div class="features-grid">
                    <div class="feature-card">
                        <div class="feature-icon" style="background-color: var(--primary-light); color: var(--primary);">
                            <i class="fas fa-bed-pulse"></i>
                        </div>
                        <h3>Modern ICU Units</h3>
                        <p>Equipped with computerized multi-para patient monitors, ventilators, and dedicated intensive care nurses.</p>
                    </div>

                    <div class="feature-card">
                        <div class="feature-icon" style="background-color: var(--status-success-bg); color: var(--status-success);">
                            <i class="fas fa-microscope"></i>
                        </div>
                        <h3>Digital Pathology Labs</h3>
                        <p>Fast-track computerized diagnostics for blood work, pathology, biopsies, and biochemical profiles.</p>
                    </div>

                    <div class="feature-card">
                        <div class="feature-icon" style="background-color: var(--status-warning-bg); color: var(--status-warning);">
                            <i class="fas fa-x-ray"></i>
                        </div>
                        <h3>Advanced Radiology</h3>
                        <p>High-resolution CT scans, digital X-rays, Ultrasounds, and MRI imaging for accurate clinical assessments.</p>
                    </div>

                    <div class="feature-card">
                        <div class="feature-icon" style="background-color: #f3e8ff; color: #9333ea;">
                            <i class="fas fa-prescription-bottle-medical"></i>
                        </div>
                        <h3>24/7 In-House Pharmacy</h3>
                        <p>Stocked with certified generic and prescription drugs directly synchronized with physician orders.</p>
                    </div>
                </div>
            </div>
        </section>
    </main>
</asp:Content>
