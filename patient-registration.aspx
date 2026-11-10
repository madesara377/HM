<%@ Page Title="Patient Registration | Hospital Management System" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="patient-registration.aspx.cs" Inherits="HM.patient_registration" %>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main class="login-section" style="padding: 60px 0; background: linear-gradient(135deg, #f0f7ff 0%, #e2e8f0 100%); min-height: 80vh;">
        <div class="container" style="display: flex; justify-content: center;">
            <div class="login-card" style="max-width: 550px; width: 100%;">
                
                <div class="login-header">
                    <div class="logo-icon">
                        <i class="fas fa-user-plus"></i>
                    </div>
                    <h1>New Patient Registration</h1>
                    <p>Create your account to book appointments &amp; view reports</p>
                </div>

                <!-- Full Name -->
                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-user" style="color: var(--primary);"></i> Full Name <span class="required">*</span>
                    </label>
                    <asp:TextBox ID="txt_fnm" runat="server" CssClass="form-control" placeholder="Enter your full name"></asp:TextBox>
                </div>

                <!-- Email -->
                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-envelope" style="color: var(--primary);"></i> Email Address <span class="required">*</span>
                    </label>
                    <asp:TextBox ID="txt_email" runat="server" CssClass="form-control" placeholder="Enter your email"></asp:TextBox>
                </div>

                <!-- Mobile Number -->
                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-phone" style="color: var(--primary);"></i> Mobile Number <span class="required">*</span>
                    </label>
                    <asp:TextBox ID="txt_mobile" runat="server" CssClass="form-control" placeholder="Enter 10-digit mobile number"></asp:TextBox>
                </div>

                <!-- Gender -->
                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-venus-mars" style="color: var(--primary);"></i> Gender <span class="required">*</span>
                    </label>
                    <asp:DropDownList ID="ddl_gender" runat="server" CssClass="form-control">
                        <asp:ListItem Value="">-- Select Gender --</asp:ListItem>
                        <asp:ListItem Value="Male">Male</asp:ListItem>
                        <asp:ListItem Value="Female">Female</asp:ListItem>
                        <asp:ListItem Value="Other">Other</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <!-- Password -->
                <div class="form-group">
                    <label class="form-label">
                        <i class="fas fa-lock" style="color: var(--primary);"></i> Password <span class="required">*</span>
                    </label>
                    <asp:TextBox ID="txt_pwd" runat="server" TextMode="Password" CssClass="form-control" placeholder="Create password"></asp:TextBox>
                </div>

                <!-- Register Button -->
                <asp:Button ID="btn_register" runat="server" Text="Register Account" CssClass="btn btn-primary btn-block" style="margin-bottom: 12px; margin-top: 15px;" OnClick="btn_register_Click" />

                <a href="login.aspx" class="btn btn-secondary btn-block">
                    <i class="fas fa-sign-in-alt"></i> Already have an account? Login
                </a>

            </div>
        </div>
    </main>
</asp:Content>