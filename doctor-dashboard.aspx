<%@ Page Title="Our Doctors | Hospital Management System" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="doctors.aspx.cs" Inherits="HM.doctors" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <section class="page-banner text-center" style="padding: 40px 0; background-color: #f8f9fa;">
        <div class="container">
            <h1 class="page-banner-title" style="font-weight: 800; font-size: 2.5rem; color: #0d47a1;">Doctors Directory & Schedules</h1>
            <p class="page-banner-desc" style="color: #6c757d; font-size: 1.1rem; max-width: 700px; margin: 0 auto;">Find the right medical specialist for your consultation. Check operational timings and book appointments directly.</p>
        </div>
    </section>

    <main class="section-padding" style="padding: 50px 0;">
        <div class="container">
            
            <!-- Filters -->
            <div class="department-filters text-center mb-5" style="display:flex; justify-content:center; gap:10px; flex-wrap:wrap; margin-bottom:40px;">
                <span class="btn btn-primary" style="border-radius:20px; padding: 8px 20px;">All Departments</span>
                <span class="btn btn-outline-secondary" style="border-radius:20px; padding: 8px 20px; background: white; border: 1px solid #ccc;">Cardiology</span>
                <span class="btn btn-outline-secondary" style="border-radius:20px; padding: 8px 20px; background: white; border: 1px solid #ccc;">Dentistry</span>
                <span class="btn btn-outline-secondary" style="border-radius:20px; padding: 8px 20px; background: white; border: 1px solid #ccc;">Neurology</span>
                <span class="btn btn-outline-secondary" style="border-radius:20px; padding: 8px 20px; background: white; border: 1px solid #ccc;">Pediatrics</span>
                <span class="btn btn-outline-secondary" style="border-radius:20px; padding: 8px 20px; background: white; border: 1px solid #ccc;">Orthopedics</span>
                <span class="btn btn-outline-secondary" style="border-radius:20px; padding: 8px 20px; background: white; border: 1px solid #ccc;">General Medicine</span>
            </div>

            <!-- 6 Doctors Grid -->
            <div class="doctors-grid" style="display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 30px;">

                <!-- 1. Cardiology -->
                <div class="doctor-card card" style="border: 1px solid #eaeaea; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.05);">
                    <div style="background:#eee; height:240px; position:relative;">
                        <span class="badge" style="position:absolute; top:15px; left:15px; background-color: #212529; color: white; padding: 6px 12px; border-radius: 4px; font-size: 0.8rem; letter-spacing: 1px;">CARDIOLOGY</span>
                        <img src="https://img.freepik.com/free-photo/handsome-smiling-medical-professional-examining-with-stethoscope-crossed-arms_176420-17255.jpg" style="width:100%; height:100%; object-fit:cover;" alt="Doctor">
                    </div>
                    <div class="card-body" style="padding: 25px;">
                        <h4 style="margin-bottom: 5px; font-weight: 700; color: #333;">Dr. Rahul Sharma</h4>
                        <p style="color: #1a73e8; font-size: 0.9rem; margin-bottom: 20px;">Senior Cardiologist (MD, DM)</p>
                        <div style="font-size: 0.9rem; color: #555; line-height: 2;">
                            <div><i class="fas fa-briefcase" style="color: #1a73e8; width: 25px;"></i> <strong>Experience:</strong> 12+ Years</div>
                            <div><i class="fas fa-clock" style="color: #1a73e8; width: 25px;"></i> <strong>Time:</strong> 09:00 AM - 02:00 PM</div>
                            <div><i class="fas fa-hospital" style="color: #1a73e8; width: 25px;"></i> <strong>Dept:</strong> Cardiology (Room 204)</div>
                        </div>
                        <a href="appointment.aspx" class="btn btn-primary" style="width: 100%; margin-top: 20px; padding: 10px;"><i class="fas fa-calendar-check"></i> Book Appointment</a>
                    </div>
                </div>

                <!-- 2. Dentistry -->
                <div class="doctor-card card" style="border: 1px solid #eaeaea; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.05);">
                    <div style="background:#eee; height:240px; position:relative;">
                        <span class="badge" style="position:absolute; top:15px; left:15px; background-color: #212529; color: white; padding: 6px 12px; border-radius: 4px; font-size: 0.8rem; letter-spacing: 1px;">DENTAL CARE</span>
                        <img src="https://img.freepik.com/free-photo/pleased-young-female-doctor-wearing-medical-robe-stethoscope-around-neck-standing-with-closed-posture_409827-254.jpg" style="width:100%; height:100%; object-fit:cover;" alt="Doctor">
                    </div>
                    <div class="card-body" style="padding: 25px;">
                        <h4 style="margin-bottom: 5px; font-weight: 700; color: #333;">Dr. Priya Patel</h4>
                        <p style="color: #1a73e8; font-size: 0.9rem; margin-bottom: 20px;">Dental Surgeon (BDS, MDS)</p>
                        <div style="font-size: 0.9rem; color: #555; line-height: 2;">
                            <div><i class="fas fa-briefcase" style="color: #1a73e8; width: 25px;"></i> <strong>Experience:</strong> 8+ Years</div>
                            <div><i class="fas fa-clock" style="color: #1a73e8; width: 25px;"></i> <strong>Time:</strong> 10:00 AM - 04:00 PM</div>
                            <div><i class="fas fa-hospital" style="color: #1a73e8; width: 25px;"></i> <strong>Dept:</strong> Dental Care (Room 108)</div>
                        </div>
                        <a href="appointment.aspx" class="btn btn-primary" style="width: 100%; margin-top: 20px; padding: 10px;"><i class="fas fa-calendar-check"></i> Book Appointment</a>
                    </div>
                </div>

                <!-- 3. Neurology -->
                <div class="doctor-card card" style="border: 1px solid #eaeaea; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.05);">
                    <div style="background:#eee; height:240px; position:relative;">
                        <span class="badge" style="position:absolute; top:15px; left:15px; background-color: #212529; color: white; padding: 6px 12px; border-radius: 4px; font-size: 0.8rem; letter-spacing: 1px;">NEUROLOGY</span>
                        <img src="https://img.freepik.com/free-photo/successful-medical-doctor-smiling_1098-18086.jpg" style="width:100%; height:100%; object-fit:cover;" alt="Doctor">
                    </div>
                    <div class="card-body" style="padding: 25px;">
                        <h4 style="margin-bottom: 5px; font-weight: 700; color: #333;">Dr. Amit Shah</h4>
                        <p style="color: #1a73e8; font-size: 0.9rem; margin-bottom: 20px;">Senior Neurologist (MD, DNB)</p>
                        <div style="font-size: 0.9rem; color: #555; line-height: 2;">
                            <div><i class="fas fa-briefcase" style="color: #1a73e8; width: 25px;"></i> <strong>Experience:</strong> 15+ Years</div>
                            <div><i class="fas fa-clock" style="color: #1a73e8; width: 25px;"></i> <strong>Time:</strong> 11:00 AM - 03:00 PM</div>
                            <div><i class="fas fa-hospital" style="color: #1a73e8; width: 25px;"></i> <strong>Dept:</strong> Neurology (Room 312)</div>
                        </div>
                        <a href="appointment.aspx" class="btn btn-primary" style="width: 100%; margin-top: 20px; padding: 10px;"><i class="fas fa-calendar-check"></i> Book Appointment</a>
                    </div>
                </div>

                <!-- 4. Pediatrics -->
                <div class="doctor-card card" style="border: 1px solid #eaeaea; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.05);">
                    <div style="background:#eee; height:240px; position:relative;">
                        <span class="badge" style="position:absolute; top:15px; left:15px; background-color: #212529; color: white; padding: 6px 12px; border-radius: 4px; font-size: 0.8rem; letter-spacing: 1px;">PEDIATRICS</span>
                        <img src="https://img.freepik.com/free-photo/female-doctor-hospital-with-stethoscope_23-2148827776.jpg" style="width:100%; height:100%; object-fit:cover;" alt="Doctor">
                    </div>
                    <div class="card-body" style="padding: 25px;">
                        <h4 style="margin-bottom: 5px; font-weight: 700; color: #333;">Dr. Neha Mehta</h4>
                        <p style="color: #1a73e8; font-size: 0.9rem; margin-bottom: 20px;">Pediatrician & Child Specialist</p>
                        <div style="font-size: 0.9rem; color: #555; line-height: 2;">
                            <div><i class="fas fa-briefcase" style="color: #1a73e8; width: 25px;"></i> <strong>Experience:</strong> 10+ Years</div>
                            <div><i class="fas fa-clock" style="color: #1a73e8; width: 25px;"></i> <strong>Time:</strong> 08:30 AM - 01:30 PM</div>
                            <div><i class="fas fa-hospital" style="color: #1a73e8; width: 25px;"></i> <strong>Dept:</strong> Pediatrics (Room 102)</div>
                        </div>
                        <a href="appointment.aspx" class="btn btn-primary" style="width: 100%; margin-top: 20px; padding: 10px;"><i class="fas fa-calendar-check"></i> Book Appointment</a>
                    </div>
                </div>

                <!-- 5. Orthopedics (NEW) -->
                <div class="doctor-card card" style="border: 1px solid #eaeaea; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.05);">
                    <div style="background:#eee; height:240px; position:relative;">
                        <span class="badge" style="position:absolute; top:15px; left:15px; background-color: #212529; color: white; padding: 6px 12px; border-radius: 4px; font-size: 0.8rem; letter-spacing: 1px;">ORTHOPEDICS</span>
                        <img src="https://img.freepik.com/free-photo/portrait-smiling-male-doctor_171337-1532.jpg" style="width:100%; height:100%; object-fit:cover;" alt="Doctor">
                    </div>
                    <div class="card-body" style="padding: 25px;">
                        <h4 style="margin-bottom: 5px; font-weight: 700; color: #333;">Dr. Sanjay Verma</h4>
                        <p style="color: #1a73e8; font-size: 0.9rem; margin-bottom: 20px;">Orthopedic Surgeon (MS Ortho)</p>
                        <div style="font-size: 0.9rem; color: #555; line-height: 2;">
                            <div><i class="fas fa-briefcase" style="color: #1a73e8; width: 25px;"></i> <strong>Experience:</strong> 14+ Years</div>
                            <div><i class="fas fa-clock" style="color: #1a73e8; width: 25px;"></i> <strong>Time:</strong> 04:00 PM - 08:00 PM</div>
                            <div><i class="fas fa-hospital" style="color: #1a73e8; width: 25px;"></i> <strong>Dept:</strong> Orthopedics (Room 215)</div>
                        </div>
                        <a href="appointment.aspx" class="btn btn-primary" style="width: 100%; margin-top: 20px; padding: 10px;"><i class="fas fa-calendar-check"></i> Book Appointment</a>
                    </div>
                </div>

                <!-- 6. General Medicine (NEW) -->
                <div class="doctor-card card" style="border: 1px solid #eaeaea; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.05);">
                    <div style="background:#eee; height:240px; position:relative;">
                        <span class="badge" style="position:absolute; top:15px; left:15px; background-color: #212529; color: white; padding: 6px 12px; border-radius: 4px; font-size: 0.8rem; letter-spacing: 1px;">GENERAL MEDICINE</span>
                        <img src="https://img.freepik.com/free-photo/smiling-doctor-with-strethoscope-isolated-grey_651396-974.jpg" style="width:100%; height:100%; object-fit:cover;" alt="Doctor">
                    </div>
                    <div class="card-body" style="padding: 25px;">
                        <h4 style="margin-bottom: 5px; font-weight: 700; color: #333;">Dr. Vikram Desai</h4>
                        <p style="color: #1a73e8; font-size: 0.9rem; margin-bottom: 20px;">General Physician (MD Medicine)</p>
                        <div style="font-size: 0.9rem; color: #555; line-height: 2;">
                            <div><i class="fas fa-briefcase" style="color: #1a73e8; width: 25px;"></i> <strong>Experience:</strong> 20+ Years</div>
                            <div><i class="fas fa-clock" style="color: #1a73e8; width: 25px;"></i> <strong>Time:</strong> 09:00 AM - 05:00 PM</div>
                            <div><i class="fas fa-hospital" style="color: #1a73e8; width: 25px;"></i> <strong>Dept:</strong> General Med (Room 101)</div>
                        </div>
                        <a href="appointment.aspx" class="btn btn-primary" style="width: 100%; margin-top: 20px; padding: 10px;"><i class="fas fa-calendar-check"></i> Book Appointment</a>
                    </div>
                </div>

            </div>
        </div>
    </main>
</asp:Content>