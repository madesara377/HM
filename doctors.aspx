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
            
            <!-- LIVE SEARCH BAR (Navu Add Karyu) -->
            <div style="max-width: 600px; margin: 0 auto 40px auto; position: relative;">
                <i class="fas fa-search" style="position: absolute; top: 15px; left: 20px; color: #1a73e8; font-size: 1.2rem;"></i>
                <input type="text" id="searchBox" onkeyup="searchDoctors()" class="form-control" placeholder="Search doctor by name or department (e.g. Rahul, Cardiology)..." style="border-radius: 30px; padding: 12px 20px 12px 50px; border: 2px solid #1a73e8; box-shadow: 0 4px 10px rgba(26,115,232,0.1);">
            </div>

            <!-- 6 Doctors Grid -->
            <div class="doctors-grid" id="doctorList" style="display: grid; grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); gap: 30px;">

                <!-- 1. Cardiology -->
                <div class="doctor-card card" style="border: 1px solid #eaeaea; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.05);">
                    <div style="background:#eee; height:240px; position:relative;">
                        <span class="badge" style="position:absolute; top:15px; left:15px; background-color: #212529; color: white; padding: 6px 12px; border-radius: 4px; font-size: 0.8rem; letter-spacing: 1px;">CARDIOLOGY</span>
                        <img src="https://img.freepik.com/free-photo/handsome-smiling-medical-professional-examining-with-stethoscope-crossed-arms_176420-17255.jpg" style="width:100%; height:100%; object-fit:cover;" alt="Doctor">
                    </div>
                    <div class="card-body" style="padding: 25px;">
                        <h4 class="doc-name" style="margin-bottom: 5px; font-weight: 700; color: #333;">Dr. Rahul Sharma</h4>
                        <p class="doc-dept" style="color: #1a73e8; font-size: 0.9rem; margin-bottom: 20px;">Cardiologist</p>
                        <div style="font-size: 0.9rem; color: #555; line-height: 2;">
                            <div><i class="fas fa-briefcase" style="color: #1a73e8; width: 25px;"></i> <strong>Experience:</strong> 12+ Years</div>
                            <div><i class="fas fa-clock" style="color: #1a73e8; width: 25px;"></i> <strong>Time:</strong> 09:00 AM - 02:00 PM</div>
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
                        <h4 class="doc-name" style="margin-bottom: 5px; font-weight: 700; color: #333;">Dr. Priya Patel</h4>
                        <p class="doc-dept" style="color: #1a73e8; font-size: 0.9rem; margin-bottom: 20px;">Dentist</p>
                        <div style="font-size: 0.9rem; color: #555; line-height: 2;">
                            <div><i class="fas fa-briefcase" style="color: #1a73e8; width: 25px;"></i> <strong>Experience:</strong> 8+ Years</div>
                            <div><i class="fas fa-clock" style="color: #1a73e8; width: 25px;"></i> <strong>Time:</strong> 10:00 AM - 04:00 PM</div>
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
                        <h4 class="doc-name" style="margin-bottom: 5px; font-weight: 700; color: #333;">Dr. Amit Shah</h4>
                        <p class="doc-dept" style="color: #1a73e8; font-size: 0.9rem; margin-bottom: 20px;">Neurologist</p>
                        <div style="font-size: 0.9rem; color: #555; line-height: 2;">
                            <div><i class="fas fa-briefcase" style="color: #1a73e8; width: 25px;"></i> <strong>Experience:</strong> 15+ Years</div>
                            <div><i class="fas fa-clock" style="color: #1a73e8; width: 25px;"></i> <strong>Time:</strong> 11:00 AM - 03:00 PM</div>
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
                        <h4 class="doc-name" style="margin-bottom: 5px; font-weight: 700; color: #333;">Dr. Neha Mehta</h4>
                        <p class="doc-dept" style="color: #1a73e8; font-size: 0.9rem; margin-bottom: 20px;">Pediatrician</p>
                        <div style="font-size: 0.9rem; color: #555; line-height: 2;">
                            <div><i class="fas fa-briefcase" style="color: #1a73e8; width: 25px;"></i> <strong>Experience:</strong> 10+ Years</div>
                            <div><i class="fas fa-clock" style="color: #1a73e8; width: 25px;"></i> <strong>Time:</strong> 08:30 AM - 01:30 PM</div>
                        </div>
                        <a href="appointment.aspx" class="btn btn-primary" style="width: 100%; margin-top: 20px; padding: 10px;"><i class="fas fa-calendar-check"></i> Book Appointment</a>
                    </div>
                </div>

                <!-- 5. Orthopedics -->
                <div class="doctor-card card" style="border: 1px solid #eaeaea; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.05);">
                    <div style="background:#eee; height:240px; position:relative;">
                        <span class="badge" style="position:absolute; top:15px; left:15px; background-color: #212529; color: white; padding: 6px 12px; border-radius: 4px; font-size: 0.8rem; letter-spacing: 1px;">ORTHOPEDICS</span>
                        <img src="https://img.freepik.com/free-photo/portrait-smiling-male-doctor_171337-1532.jpg" style="width:100%; height:100%; object-fit:cover;" alt="Doctor">
                    </div>
                    <div class="card-body" style="padding: 25px;">
                        <h4 class="doc-name" style="margin-bottom: 5px; font-weight: 700; color: #333;">Dr. Sanjay Verma</h4>
                        <p class="doc-dept" style="color: #1a73e8; font-size: 0.9rem; margin-bottom: 20px;">Orthopedic</p>
                        <div style="font-size: 0.9rem; color: #555; line-height: 2;">
                            <div><i class="fas fa-briefcase" style="color: #1a73e8; width: 25px;"></i> <strong>Experience:</strong> 14+ Years</div>
                            <div><i class="fas fa-clock" style="color: #1a73e8; width: 25px;"></i> <strong>Time:</strong> 04:00 PM - 08:00 PM</div>
                        </div>
                        <a href="appointment.aspx" class="btn btn-primary" style="width: 100%; margin-top: 20px; padding: 10px;"><i class="fas fa-calendar-check"></i> Book Appointment</a>
                    </div>
                </div>

                <!-- 6. General Medicine -->
                <div class="doctor-card card" style="border: 1px solid #eaeaea; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 15px rgba(0,0,0,0.05);">
                    <div style="background:#eee; height:240px; position:relative;">
                        <span class="badge" style="position:absolute; top:15px; left:15px; background-color: #212529; color: white; padding: 6px 12px; border-radius: 4px; font-size: 0.8rem; letter-spacing: 1px;">GENERAL MEDICINE</span>
                        <img src="https://img.freepik.com/free-photo/smiling-doctor-with-strethoscope-isolated-grey_651396-974.jpg" style="width:100%; height:100%; object-fit:cover;" alt="Doctor">
                    </div>
                    <div class="card-body" style="padding: 25px;">
                        <h4 class="doc-name" style="margin-bottom: 5px; font-weight: 700; color: #333;">Dr. Vikram Desai</h4>
                        <p class="doc-dept" style="color: #1a73e8; font-size: 0.9rem; margin-bottom: 20px;">General Medicine</p>
                        <div style="font-size: 0.9rem; color: #555; line-height: 2;">
                            <div><i class="fas fa-briefcase" style="color: #1a73e8; width: 25px;"></i> <strong>Experience:</strong> 20+ Years</div>
                            <div><i class="fas fa-clock" style="color: #1a73e8; width: 25px;"></i> <strong>Time:</strong> 09:00 AM - 05:00 PM</div>
                        </div>
                        <a href="appointment.aspx" class="btn btn-primary" style="width: 100%; margin-top: 20px; padding: 10px;"><i class="fas fa-calendar-check"></i> Book Appointment</a>
                    </div>
                </div>

            </div>
        </div>
    </main>

    <!-- Search Bar Logic (JavaScript) -->
    <script>
        function searchDoctors() {
            var input = document.getElementById('searchBox').value.toLowerCase();
            var cards = document.getElementsByClassName('doctor-card');
            
            for (var i = 0; i < cards.length; i++) {
                var docName = cards[i].querySelector('.doc-name').innerText.toLowerCase();
                var docDept = cards[i].querySelector('.doc-dept').innerText.toLowerCase();
                
                // Jo naam ke department search saathe match thay to card dekhadvanu baki chupavi devanu
                if (docName.includes(input) || docDept.includes(input)) {
                    cards[i].style.display = "block";
                } else {
                    cards[i].style.display = "none";
                }
            }
        }
    </script>
</asp:Content>