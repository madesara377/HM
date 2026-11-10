<%@ Page Title="Hospital Services | Hospital Management System" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="HM.services" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <section class="page-banner">
        <div class="container page-banner-content">
            <h1 class="page-banner-title">Our Medical Services</h1>
            <p class="page-banner-desc">Comprehensive clinical care, modern diagnostics, and dedicated specialized medical departments.</p>
            <div class="breadcrumb">
                <a href="index.aspx">Home</a>
                <span>/</span>
                <span class="active">Services</span>
            </div>
        </div>
    </section>

    <main>
        <section class="section-padding">
            <div class="container">
             

                <div class="section-header">
                    <span class="section-badge">Clinical Excellence</span>
                    <h2 class="section-title">Specialized Healthcare Departments</h2>
                    <p class="section-subtitle">
                        Explore our state-of-the-art medical services equipped with experienced specialists and advanced medical technology.
                    </p>
                </div>

              
                <div class="services-grid">
                
                    <article class="service-card">
                        <div class="service-icon-wrapper" style="background-color: var(--status-danger-bg); color: var(--status-danger);">
                            <i class="fas fa-truck-medical"></i>
                        </div>
                        <h3>Emergency Care</h3>
                        <p>
                            Round-the-clock emergency and critical trauma care with rapid response ambulance service, fully equipped resuscitation bays, and emergency surgical staff.
                        </p>
                        <ul class="service-features">
                            <li><i class="fas fa-check"></i> 24/7 Trauma &amp; Resuscitation Unit</li>
                            <li><i class="fas fa-check"></i> Dedicated Ambulance Support</li>
                            <li><i class="fas fa-check"></i> Acute Triage Care Protocols</li>
                        </ul>
                        <a href="appointment.aspx?service=Emergency+Care" class="btn btn-secondary btn-block">
                            <i class="fas fa-info-circle"></i> View Details
                        </a>
                    </article>

                    <!-- Service 2: Cardiology -->
                    <article class="service-card">
                        <div class="service-icon-wrapper">
                            <i class="fas fa-heart-pulse"></i>
                        </div>
                        <h3>Cardiology</h3>
                        <p>
                            Comprehensive cardiovascular diagnosis and therapy including 2D Echocardiography, Treadmill ECG, coronary interventions, and preventative heart wellness.
                        </p>
                        <ul class="service-features">
                            <li><i class="fas fa-check"></i> 2D Echo &amp; Holter Monitoring</li>
                            <li><i class="fas fa-check"></i> Cardiac Catheterization Lab</li>
                            <li><i class="fas fa-check"></i> Hypertension Management</li>
                        </ul>
                        <a href="appointment.aspx?service=Cardiology" class="btn btn-secondary btn-block">
                            <i class="fas fa-info-circle"></i> View Details
                        </a>
                    </article>

                    <!-- Service 3: Neurology -->
                    <article class="service-card" style="background-color: #f3e8ff; color: #9333ea;">
                        <div class="service-icon-wrapper">
                            <i class="fas fa-brain"></i>
                        </div>
                        <h3 style="color: var(--text-dark);">Neurology</h3>
                        <p style="color: var(--text-muted);">
                            Specialized diagnostics and rehabilitation for stroke, epilepsy, migraines, neuropathies, and spine disorders utilizing advanced digital neuro-imaging.
                        </p>
                        <ul class="service-features" style="color: var(--text-muted);">
                            <li><i class="fas fa-check"></i> EEG, EMG &amp; Nerve Conduction</li>
                            <li><i class="fas fa-check"></i> Stroke Management Protocol</li>
                            <li><i class="fas fa-check"></i> Neuromuscular Therapy</li>
                        </ul>
                        <a href="appointment.aspx?service=Neurology" class="btn btn-secondary btn-block">
                            <i class="fas fa-info-circle"></i> View Details
                        </a>
                    </article>

                    <!-- Service 4: Dental Care -->
                    <article class="service-card">
                        <div class="service-icon-wrapper" style="background-color: var(--secondary-light); color: var(--secondary);">
                            <i class="fas fa-tooth"></i>
                        </div>
                        <h3>Dental Care</h3>
                        <p>
                            Complete oral healthcare solutions including root canal treatments, aesthetic dental orthodontics, painless tooth extractions, and regular preventive scaling.
                        </p>
                        <ul class="service-features">
                            <li><i class="fas fa-check"></i> Digital OPG Dental X-Ray</li>
                            <li><i class="fas fa-check"></i> Cosmetic Smile Designing</li>
                            <li><i class="fas fa-check"></i> Advanced Dental Implants</li>
                        </ul>
                        <a href="appointment.aspx?service=Dental+Care" class="btn btn-secondary btn-block">
                            <i class="fas fa-info-circle"></i> View Details
                        </a>
                    </article>

                    <!-- Service 5: Pediatrics -->
                    <article class="service-card">
                        <div class="service-icon-wrapper" style="background-color: #fef3c7; color: #d97706;">
                            <i class="fas fa-baby"></i>
                        </div>
                        <h3>Pediatrics</h3>
                        <p>
                            Compassionate pediatric care for infants, young children, and adolescents encompassing immunization programs, growth monitoring, and pediatric intensive care.
                        </p>
                        <ul class="service-features">
                            <li><i class="fas fa-check"></i> Complete Vaccination Schedules</li>
                            <li><i class="fas fa-check"></i> Neonatal Intensive Care (NICU)</li>
                            <li><i class="fas fa-check"></i> Child Nutrition &amp; Growth Tracking</li>
                        </ul>
                        <a href="appointment.aspx?service=Pediatrics" class="btn btn-secondary btn-block">
                            <i class="fas fa-info-circle"></i> View Details
                        </a>
                    </article>

                    <!-- Service 6: General Medicine -->
                    <article class="service-card">
                        <div class="service-icon-wrapper" style="background-color: var(--status-success-bg); color: var(--status-success);">
                            <i class="fas fa-stethoscope"></i>
                        </div>
                        <h3>General Medicine</h3>
                        <p>
                            First-line consultation, diagnosis of acute infectious diseases, diabetes and cholesterol management, routine checkups, and holistic preventative healthcare.
                        </p>
                        <ul class="service-features">
                            <li><i class="fas fa-check"></i> Chronic Disease Care</li>
                            <li><i class="fas fa-check"></i> Annual Preventive Health Checks</li>
                            <li><i class="fas fa-check"></i> Personalized Wellness Plans</li>
                        </ul>
                        <a href="appointment.aspx?service=General+Medicine" class="btn btn-secondary btn-block">
                            <i class="fas fa-info-circle"></i> View Details
                        </a>
                    </article>

                    <!-- Service 7: Laboratory Services -->
                    <article class="service-card">
                        <div class="service-icon-wrapper" style="background-color: #e0f2fe; color: #0284c7;">
                            <i class="fas fa-vial-virus"></i>
                        </div>
                        <h3>Laboratory Services</h3>
                        <p>
                            NABL accredited automated pathology lab delivering rapid test results for hematology, biochemistry, microbiology, hormone assays, and urine analysis.
                        </p>
                        <ul class="service-features">
                            <li><i class="fas fa-check"></i> Automated Blood &amp; Urine Profiles</li>
                            <li><i class="fas fa-check"></i> Fast-Track Online Reports</li>
                            <li><i class="fas fa-check"></i> Home Sample Collection Available</li>
                        </ul>
                        <a href="appointment.aspx?service=Laboratory+Services" class="btn btn-secondary btn-block">
                            <i class="fas fa-info-circle"></i> View Details
                        </a>
                    </article>

                    <!-- Service 8: Pharmacy -->
                    <article class="service-card">
                        <div class="service-icon-wrapper" style="background-color: #dcfce7; color: #15803d;">
                            <i class="fas fa-capsules"></i>
                        </div>
                        <h3>Pharmacy</h3>
                        <p>
                            Full-service in-hospital pharmacy open 24/7, providing authentic medications, cold-storage vaccines, surgical consumables, and emergency medical kits.
                        </p>
                        <ul class="service-features">
                            <li><i class="fas fa-check"></i> 100% Genuine Prescription Drugs</li>
                            <li><i class="fas fa-check"></i> Direct EHR Synchronized Orders</li>
                            <li><i class="fas fa-check"></i> 24/7 Dispensary Window</li>
                        </ul>
                        <a href="appointment.aspx?service=Pharmacy" class="btn btn-secondary btn-block">
                            <i class="fas fa-info-circle"></i> View Details
                        </a>
                    </article>
                </div>
            </div>
        </section>
    </main>
</asp:Content>
