<%@ Page Title="Portal Login | Hospital Management System" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="HM.login" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeadContent" runat="server">
    <style>
        .role-radio-toggle {
            display: none;
        }
        .role-labels-container {
            display: grid;
            grid-template-columns: 1fr 1fr 1fr;
            gap: 8px;
            background-color: var(--bg-body);
            padding: 6px;
            border-radius: var(--radius-md);
            margin-bottom: 25px;
            border: 1px solid var(--border-color);
        }
        .role-tab-label {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 6px;
            padding: 10px 6px;
            font-size: 0.88rem;
            font-weight: 700;
            border-radius: var(--radius-sm);
            color: var(--text-muted);
            cursor: pointer;
            transition: var(--transition);
            text-align: center;
        }
        #role-patient:checked ~ .role-labels-container label[for="role-patient"],
        #role-doctor:checked ~ .role-labels-container label[for="role-doctor"],
        #role-admin:checked ~ .role-labels-container label[for="role-admin"] {
            background-color: var(--primary);
            color: #ffffff;
            box-shadow: 0 4px 10px rgba(26, 115, 232, 0.25);
        }
        .patient-form, .doctor-form, .admin-form {
            display: none;
        }
        #role-patient:checked ~ .patient-form {
            display: block;
        }
        #role-doctor:checked ~ .doctor-form {
            display: block;
        }
        #role-admin:checked ~ .admin-form {
            display: block;
        }
    </style>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main class="login-section" style="padding: 60px 0; background: linear-gradient(135deg, #f0f7ff 0%, #e2e8f0 100%); min-height: 80vh;">
        <div class="container" style="display: flex; justify-content: center;">
            <div class="login-card">
                
                <div class="login-header">
                    <div class="logo-icon">
                        <i class="fas fa-user-shield"></i>
                    </div>
                    <h1>Hospital Portal Login</h1>
                    <p>Select your portal role to access records &amp; management tools</p>
                </div>

                <input type="radio" name="login_role" id="role-patient" class="role-radio-toggle" checked="checked" />
                <input type="radio" name="login_role" id="role-doctor" class="role-radio-toggle" />
                <input type="radio" name="login_role" id="role-admin" class="role-radio-toggle" />

                <div class="role-labels-container">
                    <label for="role-patient" class="role-tab-label">
                        <i class="fas fa-user"></i> Patient
                    </label>
                    <label for="role-doctor" class="role-tab-label">
                        <i class="fas fa-user-doctor"></i> Doctor
                    </label>
                    <label for="role-admin" class="role-tab-label">
                        <i class="fas fa-user-shield"></i> Admin
                    </label>
                </div>

                <!-- 1. Patient Login Section -->
                <div class="patient-form">
                    <div class="form-group">
                        <label class="form-label">
                            <i class="fas fa-envelope" style="color: var(--primary);"></i> Patient Email <span class="required">*</span>
                        </label>
                        <asp:TextBox ID="txtPatientEmail" runat="server" CssClass="form-control" placeholder="patient@hospitalms.com"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label class="form-label">
                            <i class="fas fa-lock" style="color: var(--primary);"></i> Password <span class="required">*</span>
                        </label>
                        <asp:TextBox ID="txtPatientPwd" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter password..."></asp:TextBox>
                    </div>

                    <asp:Button ID="btnPatientLogin" runat="server" Text="Login as Patient" CssClass="btn btn-primary btn-block" style="margin-bottom: 12px;" OnClick="btnPatientLogin_Click" />
                    
                    <a href="patient-registration.aspx" class="btn btn-secondary btn-block">
                        <i class="fas fa-user-plus"></i> Create Account (New Patient)
                    </a>
                </div>

                <!-- 2. Doctor Login Section -->
                <div class="doctor-form">
                    <div class="form-group">
                        <label class="form-label">
                            <i class="fas fa-user-md" style="color: var(--primary);"></i> Doctor Email <span class="required">*</span>
                        </label>
                        <asp:TextBox ID="txtDoctorEmail" runat="server" CssClass="form-control" placeholder="doctor@hospitalms.com"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label class="form-label">
                            <i class="fas fa-key" style="color: var(--primary);"></i> Staff Password <span class="required">*</span>
                        </label>
                        <asp:TextBox ID="txtDoctorPwd" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter doctor password..."></asp:TextBox>
                    </div>

                    <asp:Button ID="btnDoctorLogin" runat="server" Text="Login as Doctor" CssClass="btn btn-primary btn-block" style="margin-bottom: 12px; background-color: #0d47a1;" OnClick="btnDoctorLogin_Click" />
                </div>

                <!-- 3. Admin Login Section -->
                <div class="admin-form">
                    <div class="form-group">
                        <label class="form-label">
                            <i class="fas fa-user-shield" style="color: var(--primary);"></i> Admin Email <span class="required">*</span>
                        </label>
                        <asp:TextBox ID="txtAdminEmail" runat="server" CssClass="form-control" placeholder="admin@hospitalms.com"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <label class="form-label">
                            <i class="fas fa-lock" style="color: var(--primary);"></i> Admin Password <span class="required">*</span>
                        </label>
                        <asp:TextBox ID="txtAdminPwd" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter admin password..."></asp:TextBox>
                    </div>

                    <asp:Button ID="btnAdminLogin" runat="server" Text="Login as Admin" CssClass="btn btn-primary btn-block" style="margin-bottom: 12px; background-color: #b71c1c;" OnClick="btnAdminLogin_Click" />
                </div>

                <!-- Demo Presentation Credentials Box -->
                <div class="login-demo-box">
                    <p><strong><i class="fas fa-flask"></i> College Demo Credentials:</strong></p>
                    <div style="margin-top: 4px; line-height: 1.5;">
                        <div>&bull; <strong>Patient:</strong> patient@hospitalms.com / patient123</div>
                        <div>&bull; <strong>Doctor:</strong> doctor@hospitalms.com / doctor123</div>
                        <div>&bull; <strong>Admin:</strong> doctor@hospitalms.com / doctor123</div>
                    </div>
                </div>

            </div>
        </div>
    </main>
</asp:Content>