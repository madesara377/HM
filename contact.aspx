<%@ Page Title="Contact Us | Hospital Management System" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="HM.contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section class="page-banner">
        <div class="container page-banner-content">
            <h1 class="page-banner-title">Contact Us</h1>
            <p class="page-banner-desc">Get in touch with our hospital support team for inquiries, feedback, or assistance.</p>
            <div class="breadcrumb">
                <a href="index.aspx">Home</a>
                <span>/</span>
                <span class="active">Contact Us</span>
            </div>
        </div>
    </section>

    <main>
        <section class="section-padding">
            <div class="container">
                <div class="contact-grid">
                    
                    <div class="contact-info-card">
                        <h3 style="font-size: 1.35rem; font-weight: 800; color: var(--text-dark); margin-bottom: 12px;">
                            Hospital Information
                        </h3>
                        <p style="color: var(--text-muted); font-size: 0.95rem; margin-bottom: 25px; line-height: 1.6;">
                            Our reception and emergency helpdesk are available 24/7 to assist patients and visitors.
                        </p>

                        <div class="contact-item">
                            <div class="contact-icon-box">
                                <i class="fas fa-location-dot"></i>
                            </div>
                            <div class="contact-item-text">
                                <h4>Hospital Address</h4>
                                <p>104 Healthcare Avenue, Medical District, Main Road</p>
                            </div>
                        </div>

                        <div class="contact-item">
                            <div class="contact-icon-box">
                                <i class="fas fa-phone"></i>
                            </div>
                            <div class="contact-item-text">
                                <h4>Helpline Numbers</h4>
                                <p>Reception: +91 98765 43210<br />Emergency Ambulance: 102</p>
                            </div>
                        </div>

                        <div class="contact-item">
                            <div class="contact-icon-box">
                                <i class="fas fa-envelope"></i>
                            </div>
                            <div class="contact-item-text">
                                <h4>Email Support</h4>
                                <p>support@hospitalms.com</p>
                            </div>
                        </div>
                    </div>

                    <div class="form-card">
                        <div class="form-header">
                            <h2>Send Us a Message</h2>
                            <p>Fill out the form below and we will get back to you shortly</p>
                        </div>

                        <div class="appointment-form">
                            <div class="form-grid-2">
                                <div class="form-group col-span-2">
                                    <label class="form-label">Your Name <span class="required">*</span></label>
                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" placeholder="Enter your full name"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label class="form-label">Email Address <span class="required">*</span></label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" placeholder="name@example.com"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label class="form-label">Subject <span class="required">*</span></label>
                                    <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Inquiry subject"></asp:TextBox>
                                </div>

                                <div class="form-group col-span-2">
                                    <label class="form-label">Message <span class="required">*</span></label>
                                    <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control" placeholder="Write your message here..."></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-actions">
                                <asp:Button ID="btnSubmit" runat="server" Text="Send Message" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </main>
</asp:Content>