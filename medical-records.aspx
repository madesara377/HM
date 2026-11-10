<%@ Page Title="Medical Records | Hospital Management System" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="medical-records.aspx.cs" Inherits="HM.medical_records" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section class="page-banner">
        <div class="container page-banner-content">
            <h1 class="page-banner-title">Electronic Medical Records (EMR)</h1>
            <p class="page-banner-desc">Add and manage patient diagnosis and prescription records.</p>
        </div>
    </section>

    <main>
        <section class="section-padding">
            <div class="container">
                <div class="form-card" style="max-width: 800px; margin: 0 auto;">
                    <div class="form-header">
                        <h2>Add Clinical Record</h2>
                        <p>Enter patient diagnosis and prescribed medicines</p>
                    </div>

                    <div class="appointment-form">
                        <div class="form-grid-2">
                            <div class="form-group">
                                <label class="form-label">Patient Name <span class="required">*</span></label>
                                <asp:TextBox ID="txtPatientName" runat="server" CssClass="form-control" placeholder="e.g. Rahul Patel"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <label class="form-label">Consulting Doctor <span class="required">*</span></label>
                                <asp:DropDownList ID="ddlDoctor" runat="server" CssClass="form-control">
                                    <asp:ListItem Value="Dr. Rahul Sharma">Dr. Rahul Sharma (Cardiologist)</asp:ListItem>
                                    <asp:ListItem Value="Dr. Priya Patel">Dr. Priya Patel (Dentist)</asp:ListItem>
                                    <asp:ListItem Value="Dr. Amit Shah">Dr. Amit Shah (Neurologist)</asp:ListItem>
                                </asp:DropDownList>
                            </div>

                            <div class="form-group col-span-2">
                                <label class="form-label">Diagnosis / Clinical Findings <span class="required">*</span></label>
                                <asp:TextBox ID="txtDiagnosis" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control" placeholder="Enter medical diagnosis..."></asp:TextBox>
                            </div>

                            <div class="form-group col-span-2">
                                <label class="form-label">Prescription (Medicines) <span class="required">*</span></label>
                                <asp:TextBox ID="txtPrescription" runat="server" TextMode="MultiLine" Rows="2" CssClass="form-control" placeholder="e.g. Tab Atenolol 50mg (1-0-1)..."></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-actions">
                            <asp:Button ID="btnSaveRecord" runat="server" Text="Save Medical Record" CssClass="btn btn-primary" OnClick="btnSaveRecord_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
</asp:Content>