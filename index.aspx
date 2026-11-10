<%@ Page Title="Hospital Management System | Quality Healthcare Platform" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="HM.index" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        
        <section class="hero-section">
            <div class="container hero-grid">
                <div class="hero-content">
                    <span class="hero-badge">
                        <i class="fas fa-heartbeat"></i> 24/7 Advanced Medical Care
                    </span>
                    <h1 class="hero-title">
                        Quality Healthcare, <span>Anytime, Anywhere</span>
                    </h1>
                    <p class="hero-desc">
                        Manage patients, doctors, appointments, medical records, and hospital services through one simple platform. Experience modern healthcare management built for efficiency, trust, and patient well-being.
                    </p>
                    <div class="hero-buttons">
                        <a href="appointment.aspx" class="btn btn-primary">
                            <i class="fas fa-calendar-check"></i> Book Appointment
                        </a>
                        <a href="doctors.aspx" class="btn btn-secondary">
                            <i class="fas fa-user-md"></i> View Doctors
                        </a>
                    </div>
                    
                    <div class="hero-highlights">
                        <div class="highlight-item">
                            <i class="fas fa-check-circle"></i> Certified Specialists
                        </div>
                        <div class="highlight-item">
                            <i class="fas fa-check-circle"></i> Instant Online Booking
                        </div>
                        <div class="highlight-item">
                            <i class="fas fa-check-circle"></i> 100% Digital EHR Records
                        </div>
                    </div>
                </div>

                
                <div class="hero-image-wrapper">
                    <div class="hero-image-card">
                        <img src="images/hospital.jpg" alt="City General Hospital Modern Facility" />
                    </div>
                    <div class="hero-floating-card">
                        <div class="floating-icon">
                            <i class="fas fa-star"></i>
                        </div>
                        <div class="floating-text">
                            <h4>Top Rated Healthcare</h4>
                            <p>Over 10,000+ satisfied patients</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="stats-section">
            <div class="container">
                <div class="stats-grid">
                    <!-- Stat 1 -->
                    <div class="stat-card">
                        <div class="stat-icon">
                            <i class="fas fa-users"></i>
                        </div>
                        <div class="stat-number">5000+</div>
                        <div class="stat-label">Patients Treated</div>
                    </div>

                    <!-- Stat 2 -->
                    <div class="stat-card">
                        <div class="stat-icon">
                            <i class="fas fa-user-doctor"></i>
                        </div>
                        <div class="stat-number">50+</div>
                        <div class="stat-label">Specialist Doctors</div>
                    </div>

                    <!-- Stat 3 -->
                    <div class="stat-card">
                        <div class="stat-icon">
                            <i class="fas fa-hospital-user"></i>
                        </div>
                        <div class="stat-number">20+</div>
                        <div class="stat-label">Medical Departments</div>
                    </div>

                    <!-- Stat 4 -->
                    <div class="stat-card">
                        <div class="stat-icon">
                            <i class="fas fa-award"></i>
                        </div>
                        <div class="stat-number">10+</div>
                        <div class="stat-label">Years of Experience</div>
                    </div>
                </div>
            </div>
        </section>

        <section class="section-padding">
            <div class="container">
                <div class="section-header">
                    <span class="section-badge">Hospital Modules &amp; Care</span>
                    <h2 class="section-title">Comprehensive Hospital Services</h2>
                    <p class="section-subtitle">
                        Everything you need to manage patient lifecycle, clinical workflows, and everyday healthcare operations seamlessly.
                    </p>
                </div>

                <div class="services-grid">
                    <!-- Service 1 -->
                    <article class="service-card">
                        <div class="service-icon-wrapper">
                            <i class="fas fa-user-plus"></i>
                        </div>
                        <h3>Patient Registration</h3>
                        <p>Seamless digital intake for new and returning patients. Generates unified Patient IDs, tracks emergency contacts, and records demographic info.</p>
                        <a href="patient-registration.aspx" class="service-link">
                            Register Patient <i class="fas fa-arrow-right"></i>
                        </a>
                    </article>

                    <!-- Service 2 -->
                    <article class="service-card">
                        <div class="service-icon-wrapper">
                            <i class="fas fa-calendar-check"></i>
                        </div>
                        <h3>Appointment Scheduling</h3>
                        <p>Book, reschedule, and organize doctor appointments effortlessly with live department slots and instant booking confirmations.</p>
                        <a href="appointment.aspx" class="service-link">
                            Schedule Now <i class="fas fa-arrow-right"></i>
                        </a>
                    </article>

                    <!-- Service 3 -->
                    <article class="service-card">
                        <div class="service-icon-wrapper">
                            <i class="fas fa-user-doctor"></i>
                        </div>
                        <h3>Doctor Management</h3>
                        <p>Complete directory of physicians, consulting timings, specialties, operational duty hours, and real-time patient appointment queues.</p>
                        <a href="doctors.aspx" class="service-link">
                            View Directory <i class="fas fa-arrow-right"></i>
                        </a>
                    </article>

                    <!-- Service 4 -->
                    <article class="service-card">
                        <div class="service-icon-wrapper">
                            <i class="fas fa-file-medical"></i>
                        </div>
                        <h3>Medical Records</h3>
                        <p>Electronic Health Records (EHR) archiving clinical diagnoses, doctor prescriptions, lab test reports, and past medical procedures safely.</p>
                        <a href="medical-records.aspx" class="service-link">
                            Browse Records <i class="fas fa-arrow-right"></i>
                        </a>
                    </article>

                    <!-- Service 5 -->
                    <article class="service-card">
                        <div class="service-icon-wrapper">
                            <i class="fas fa-file-invoice-dollar"></i>
                        </div>
                        <h3>Billing Management</h3>
                        <p>Transparent hospitalization invoices, consultation fees, medicine receipts, online billing breakdowns, and status tracking.</p>
                        <a href="billing.aspx" class="service-link">
                            View Invoices <i class="fas fa-arrow-right"></i>
                        </a>
                    </article>

                    <!-- Service 6 -->
                    <article class="service-card">
                        <div class="service-icon-wrapper">
                            <i class="fas fa-pills"></i>
                        </div>
                        <h3>Pharmacy Management</h3>
                        <p>Integrated prescription dispensing, in-stock medication catalog, dose tracking, and direct synchronisation with patient charts.</p>
                        <a href="services.aspx" class="service-link">
                            Learn Details <i class="fas fa-arrow-right"></i>
                        </a>
                    </article>
                </div>
            </div>
        </section>

        <section class="section-padding why-choose-section">
            <div class="container">
                <div class="section-header">
                    <span class="section-badge">Patient First</span>
                    <h2 class="section-title">Why Choose Our Hospital System?</h2>
                    <p class="section-subtitle">
                        Built with modern healthcare standards, patient safety, and seamless hospital management at the core.
                    </p>
                </div>

                <div class="features-grid">
                    <!-- Feature 1 -->
                    <div class="feature-card">
                        <div class="feature-icon">
                            <i class="fas fa-stethoscope"></i>
                        </div>
                        <h3>Experienced Doctors</h3>
                        <p>Board-certified specialists and compassionate medical staff across more than 20 clinical departments.</p>
                    </div>

                    <!-- Feature 2 -->
                    <div class="feature-card">
                        <div class="feature-icon">
                            <i class="fas fa-calendar-alt"></i>
                        </div>
                        <h3>Easy Appointment Booking</h3>
                        <p>Quick and simple 2-step appointment booking system for hassle-free consultations without long waiting queues.</p>
                    </div>

                    <!-- Feature 3 -->
                    <div class="feature-card">
                        <div class="feature-icon">
                            <i class="fas fa-shield-halved"></i>
                        </div>
                        <h3>Secure Patient Records</h3>
                        <p>Strict confidentiality and secure digital electronic medical records accessible anytime from the patient dashboard.</p>
                    </div>

                    <!-- Feature 4 -->
                    <div class="feature-card">
                        <div class="feature-icon">
                            <i class="fas fa-clock"></i>
                        </div>
                        <h3>24/7 Healthcare Support</h3>
                        <p>Round-the-clock emergency trauma care, active pharmacy, and dedicated patient helpline always on standby.</p>
                    </div>
                </div>
            </div>
        </section>
    </main>
</asp:Content>
