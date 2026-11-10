<%@ Page Title="Billing & Invoices | Hospital Management System" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="billing.aspx.cs" Inherits="HM.billing" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section class="page-banner">
        <div class="container page-banner-content">
            <h1 class="page-banner-title">Hospital Billing &amp; Invoices</h1>
            <p class="page-banner-desc">Generate and view patient consultation and treatment bills.</p>
        </div>
    </section>

    <main>
        <section class="section-padding">
            <div class="container">
                <div class="form-card" style="max-width: 800px; margin: 0 auto;">
                    <div class="form-header">
                        <h2>Generate Patient Bill</h2>
                        <p>Enter patient billing details below</p>
                    </div>

                    <div class="appointment-form">
                        <div class="form-grid-2">
                            <div class="form-group">
                                <label class="form-label">Patient Name <span class="required">*</span></label>
                                <asp:TextBox ID="txtPatientName" runat="server" CssClass="form-control" placeholder="e.g. Rahul Patel"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label class="form-label">Service / Treatment Type <span class="required">*</span></label>
                                <asp:DropDownList ID="ddlService" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="OPD Consultation">OPD Consultation</asp:ListItem>
                                    <asp:ListItem Value="ECG & Cardiology Check">ECG &amp; Cardiology Check</asp:ListItem>
                                    <asp:ListItem Value="Laboratory Blood Test">Laboratory Blood Test</asp:ListItem>
                                    <asp:ListItem Value="General Ward Admission">General Ward Admission</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <div class="form-group">
                                <label class="form-label">Total Amount (Rs.) <span class="required">*</span></label>
                                <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control" placeholder="e.g. 500"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label class="form-label">Payment Status <span class="required">*</span></label>
                                <asp:DropDownList ID="ddlStatus" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="Paid">Paid</asp:ListItem>
                                    <asp:ListItem Value="Pending">Pending</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="form-actions">
                            <asp:Button ID="btnGenerateBill" runat="server" Text="Generate Bill" CssClass="btn btn-primary" OnClick="btnGenerateBill_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</asp:Content>