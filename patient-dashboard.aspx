<%@ Page Title="Patient Dashboard | Hospital Management System" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="patient-dashboard.aspx.cs" Inherits="HM.patient_dashboard" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dashboard-layout">
        <aside class="dashboard-sidebar">
            <div class="sidebar-user-card">
                <div class="sidebar-avatar" style="background: linear-gradient(135deg, #1a73e8, #0d47a1);">
                    PT
                </div>
                <div class="sidebar-user-details">
                    <h4>Patient Portal</h4>
                    <p>Registered Member</p>
                </div>
            </div>

            <ul class="sidebar-menu">
                <li class="sidebar-item active">
                    <a href="patient-dashboard.aspx"><i class="fas fa-chart-line"></i> Dashboard</a>
                </li>
                <li class="sidebar-item">
                    <a href="appointment.aspx"><i class="fas fa-calendar-plus"></i> Book Appointment</a>
                </li>
                <li class="sidebar-item">
                    <a href="medical-records.aspx"><i class="fas fa-file-medical"></i> Medical Records</a>
                </li>
                <li class="sidebar-item">
                    <a href="billing.aspx"><i class="fas fa-file-invoice-dollar"></i> Billing &amp; Invoices</a>
                </li>
                <li class="sidebar-item logout">
                    <a href="login.aspx"><i class="fas fa-arrow-right-from-bracket"></i> Logout</a>
                </li>
            </ul>
        </aside>

        <main class="dashboard-main">
            <div class="dashboard-header">
                <div class="dashboard-greeting">
                    <h1>Welcome to Patient Portal</h1>
                    <p>Manage your upcoming hospital appointments and health records</p>
                </div>
                <div style="display: flex; gap: 10px;">
                    <a href="appointment.aspx" class="btn btn-primary">
                        <i class="fas fa-plus"></i> Book New Appointment
                    </a>
                </div>
            </div>

            <section class="table-card" id="appointments">
                <div class="table-header-bar">
                    <h2>My Recent Appointments</h2>
                    <span class="badge badge-info"><i class="fas fa-calendar-check"></i> Active Records</span>
                </div>

                <div class="table-wrapper">
                    <table class="data-table">
                        <thead>
                            <tr>
                                <th>Doctor Name</th>
                                <th>Department</th>
                                <th>Appointment Date</th>
                                <th>Time Slot</th>
                                <th>Status</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><strong>Dr. Rahul Sharma</strong></td>
                                <td>Cardiology</td>
                                <td>20/09/2026</td>
                                <td>09:30 AM</td>
                                <td><span class="badge badge-confirmed">Confirmed</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </section>
        </main>
    </div>
</asp:Content>