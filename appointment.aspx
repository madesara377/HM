<%@ Page Title="Book Appointment | Hospital Management System" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="appointment.aspx.cs" Inherits="HM.appointment" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section class="page-banner">
        <div class="container page-banner-content">
            <h1 class="page-banner-title">Schedule an Appointment</h1>
            <p class="page-banner-desc">Book your consultation with our experienced physicians and specialists in just a few clicks.</p>
            <div class="breadcrumb">
                <a href="index.aspx">Home</a>
                <span>/</span>
                <span class="active">Book Appointment</span>
            </div>
        </div>
    </section>

    <main>
        <section class="section-padding">
            <div class="container">
                <div class="contact-grid">
                    
                    <div class="contact-info-card">
                        <h3 style="font-size: 1.35rem; font-weight: 800; color: var(--text-dark); margin-bottom: 12px;">
                            Booking Guidelines
                        </h3>
                        <p style="color: var(--text-muted); font-size: 0.95rem; margin-bottom: 25px; line-height: 1.6;">
                            Please arrive at least 15 minutes before your scheduled appointment time to complete biometric verification and preliminary vitals checkup.
                        </p>

                        <div class="contact-item">
                            <div class="contact-icon-box">
                                <i class="fas fa-clock"></i>
                            </div>
                            <div class="contact-item-text">
                                <h4>OPD Consulting Hours</h4>
                                <p>Monday – Saturday: 08:00 AM – 08:00 PM<br />Sunday: 09:00 AM – 01:00 PM (Emergency Only)</p>
                            </div>
                        </div>

                        <div class="contact-item">
                            <div class="contact-icon-box">
                                <i class="fas fa-file-medical"></i>
                            </div>
                            <div class="contact-item-text">
                                <h4>What to Bring</h4>
                                <p>Valid Photo ID, Previous Medical Prescriptions, Diagnostic Reports &amp; Insurance Card.</p>
                            </div>
                        </div>

                        <div class="contact-item">
                            <div class="contact-icon-box" style="background-color: var(--status-danger-bg); color: var(--status-danger);">
                                <i class="fas fa-triangle-exclamation"></i>
                            </div>
                            <div class="contact-item-text">
                                <h4>Emergency Notice</h4>
                                <p>For urgent acute trauma or chest pain, do not wait for an appointment. Dial <strong>102</strong> directly.</p>
                            </div>
                        </div>
                    </div>

                    <div class="form-card">
                        <div class="form-header">
                            <h2>Appointment Booking Form</h2>
                            <p>Fill in patient details to secure your slot with the specialist</p>
                        </div>

                        <div class="appointment-form">
                            <div class="form-grid-2">
                            
                                <div class="form-group col-span-2">
                                    <label class="form-label">Patient Full Name <span class="required">*</span></label>
                                    <asp:TextBox ID="txtPatientName" runat="server" CssClass="form-control" placeholder="e.g. Rahul Patel" required="required"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label class="form-label">Email Address <span class="required">*</span></label>
                                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" CssClass="form-control" placeholder="name@example.com" required="required"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label class="form-label">Mobile Number <span class="required">*</span></label>
                                    <asp:TextBox ID="txtMobile" runat="server" TextMode="Phone" CssClass="form-control" placeholder="+91 98765 43210" required="required"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label class="form-label">Date of Birth <span class="required">*</span></label>
                                    <asp:TextBox ID="txtDob" runat="server" TextMode="Date" CssClass="form-control" required="required"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label class="form-label">Gender <span class="required">*</span></label>
                                    <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control" required="required">
                                        <asp:ListItem Value="" Text="-- Select Gender --"></asp:ListItem>
                                        <asp:ListItem Value="Male" Text="Male"></asp:ListItem>
                                        <asp:ListItem Value="Female" Text="Female"></asp:ListItem>
                                        <asp:ListItem Value="Other" Text="Other"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <div class="form-group">
                                    <label class="form-label">Select Department <span class="required">*</span></label>
                                    <asp:DropDownList ID="ddlDepartment" runat="server" CssClass="form-control" required="required">
                                        <asp:ListItem Value="" Text="-- Choose Department --"></asp:ListItem>
                                        <asp:ListItem Value="Cardiology" Text="Cardiology"></asp:ListItem>
                                        <asp:ListItem Value="Dental Care" Text="Dental Care"></asp:ListItem>
                                        <asp:ListItem Value="Neurology" Text="Neurology"></asp:ListItem>
                                        <asp:ListItem Value="Pediatrics" Text="Pediatrics"></asp:ListItem>
                                        <asp:ListItem Value="General Medicine" Text="General Medicine"></asp:ListItem>
                                        <asp:ListItem Value="Orthopedics" Text="Orthopedics"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>

                                <div class="form-group">
                                    <label class="form-label">Select Doctor <span class="required">*</span></label>
                                    <asp:DropDownList ID="ddlDoctor" runat="server" CssClass="form-control" required="required">
                                    <asp:ListItem Value="" Text="-- Choose Doctor --"></asp:ListItem>
                                    <asp:ListItem Value="Dr. Rahul Sharma" Text="Dr. Rahul Sharma (Cardiologist)"></asp:ListItem>
                                    <asp:ListItem Value="Dr. Priya Patel" Text="Dr. Priya Patel (Dentist)"></asp:ListItem>
                                    <asp:ListItem Value="Dr. Amit Shah" Text="Dr. Amit Shah (Neurologist)"></asp:ListItem>
                                    <asp:ListItem Value="Dr. Neha Mehta" Text="Dr. Neha Mehta (Pediatrician)"></asp:ListItem>
                                    <asp:ListItem Value="Dr. Sanjay Verma" Text="Dr. Sanjay Verma (Orthopedics)"></asp:ListItem>
                                    <asp:ListItem Value="Dr. Vikram Desai" Text="Dr. Vikram Desai (General Medicine)"></asp:ListItem>
            
                                    </asp:DropDownList>
                                </div>

                                <div class="form-group">
                                    <label class="form-label">Appointment Date <span class="required">*</span></label>
                                    <asp:TextBox ID="txtAppDate" runat="server" TextMode="Date" CssClass="form-control" required="required"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <label class="form-label">Appointment Time Slot <span class="required">*</span></label>
                                    <asp:DropDownList ID="ddlAppTime" runat="server" CssClass="form-control" required="required">
                                        <asp:ListItem Value="" Text="-- Choose Time Slot --"></asp:ListItem>
                                        <asp:ListItem Value="09:00 AM" Text="09:00 AM – 09:30 AM"></asp:ListItem>
                                        <asp:ListItem Value="10:00 AM" Text="10:00 AM – 10:30 AM"></asp:ListItem>
                                        <asp:ListItem Value="11:30 AM" Text="11:30 AM – 12:00 PM"></asp:ListItem>
                                        <asp:ListItem Value="02:00 PM" Text="02:00 PM – 02:30 PM"></asp:ListItem>
                                        <asp:ListItem Value="03:30 PM" Text="03:30 PM – 04:00 PM"></asp:ListItem>
                                        <asp:ListItem Value="05:00 PM" Text="05:00 PM – 05:30 PM"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                
                                <div class="form-group col-span-2">
                                    <label class="form-label">Reason for Visit <span class="required">*</span></label>
                                    <asp:TextBox ID="txtReason" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control" placeholder="Briefly describe your medical symptoms or consultation reason..." required="required"></asp:TextBox>
                                </div>

                                <div class="form-group col-span-2">
                                    <label class="form-label">Patient Address <span class="required">*</span></label>
                                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control" placeholder="Enter complete residential address..." required="required"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-actions">
                                <asp:Button ID="btnBookAppointment" runat="server" Text="Book Appointment" CssClass="btn btn-primary" OnClick="btnBookAppointment_Click" />
                                <asp:Button ID="btnClear" runat="server" Text="Clear Form" CssClass="btn btn-secondary" CausesValidation="false" OnClick="btnClear_Click" />
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </main>
</asp:Content>