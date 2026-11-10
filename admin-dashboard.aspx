<%@ Page Title="Admin Dashboard | Hospital Management System" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin-dashboard.aspx.cs" Inherits="HM.admin_dashboard" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="dashboard-layout">
        
        <aside class="dashboard-sidebar">
            <div class="sidebar-user-card">
                <div class="sidebar-avatar" style="background: linear-gradient(135deg, #d32f2f, #b71c1c);">
                    AD
                </div>
                <div class="sidebar-user-details">
                    <h4>System Admin</h4>
                    <p>Hospital Administrator</p>
                </div>
            </div>

            <ul class="sidebar-menu">
                <li class="sidebar-item active">
                    <a href="admin-dashboard.aspx"><i class="fas fa-user-shield"></i> Admin Dashboard</a>
                </li>
                <li class="sidebar-item">
                    <a href="doctor-dashboard.aspx"><i class="fas fa-user-md"></i> Doctor Portal</a>
                </li>
                <li class="sidebar-item">
                    <a href="patient-dashboard.aspx"><i class="fas fa-hospital-user"></i> Patient Portal</a>
                </li>
                <li class="sidebar-item">
                    <a href="appointment.aspx"><i class="fas fa-calendar-check"></i> Appointments</a>
                </li>
                <li class="sidebar-item">
                    <a href="billing.aspx"><i class="fas fa-file-invoice-dollar"></i> Billing</a>
                </li>
                <li class="sidebar-item logout">
                    <a href="login.aspx"><i class="fas fa-arrow-right-from-bracket"></i> Logout</a>
                </li>
            </ul>
        </aside>

        <main class="dashboard-main">
            <div class="dashboard-header">
                <div class="dashboard-greeting">
                    <h1>Hospital Admin Panel</h1>
                    <p>Manage hospital staff, doctors, patients, and system operations</p>
                </div>
            </div>

            <!-- Admin Stats Cards -->
            <div class="dashboard-stats-grid">
                <div class="dashboard-stat-card">
                    <div class="d-stat-info">
                        <h3>12</h3>
                        <p>Total Doctors</p>
                    </div>
                    <div class="d-stat-icon icon-blue"><i class="fas fa-user-md"></i></div>
                </div>
                <div class="dashboard-stat-card">
                    <div class="d-stat-info">
                        <h3>142</h3>
                        <p>Registered Patients</p>
                    </div>
                    <div class="d-stat-icon icon-purple"><i class="fas fa-users"></i></div>
                </div>
                <div class="dashboard-stat-card">
                    <div class="d-stat-info">
                        <h3>24</h3>
                        <p>Total Appointments</p>
                    </div>
                    <div class="d-stat-icon icon-orange"><i class="fas fa-calendar-check"></i></div>
                </div>
                <div class="dashboard-stat-card">
                    <div class="d-stat-info">
                        <h3>06</h3>
                        <p>Departments</p>
                    </div>
                    <div class="d-stat-icon icon-green"><i class="fas fa-hospital"></i></div>
                </div>
            </div>

            <!-- Add New Doctor Form (Insert into tbl_Users) -->
            <div class="form-card" style="max-width: 100%; margin-top: 20px;">
                <div class="form-header">
                    <h2>Add New Doctor Account</h2>
                    <p>Create login credentials for a new doctor in the hospital system</p>
                </div>

                <div class="appointment-form">
                    <div class="form-grid-2">
                        <div class="form-group">
                            <label class="form-label">Doctor Email / Staff ID <span class="required">*</span></label>
                            <asp:TextBox ID="txtDocEmail" runat="server" CssClass="form-control" placeholder="e.g. dr.amit@hospitalms.com"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label class="form-label">Assign Password <span class="required">*</span></label>
                            <asp:TextBox ID="txtDocPwd" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter password for doctor"></asp:TextBox>
                        </div>
                    </div>

                    <div class="form-actions">
                        <asp:Button ID="btnAddDoctor" runat="server" Text="Add Doctor to System" CssClass="btn btn-primary" OnClick="btnAddDoctor_Click" />
                    </div>
                </div>
            </div>

        </main>
    </div>
</asp:Content>