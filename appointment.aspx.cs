using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;//For Connection
using System.Data;//For DataSet
using System.Configuration;//For Connection String

namespace HM
{
    public partial class appointment : System.Web.UI.Page
    {
        SqlConnection con;//For Connection
        SqlCommand cmd;//For Insert,updat,delete
        SqlDataAdapter da;//For Container
        DataSet ds;//For Select
        string fnm;//file variable name
        int i;

        string s = ConfigurationManager.ConnectionStrings["dbcon"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
        }

        protected void btnBookAppointment_Click(object sender, EventArgs e)
        {
            if (!(string.IsNullOrEmpty(txtPatientName.Text)) &&
                !(string.IsNullOrEmpty(txtEmail.Text)))
            {
                getcon();
                cmd = new SqlCommand("insert into tbl_Appointments (PatientName, Email, Mobile, DOB, Gender, Department, Doctor, AppointmentDate, AppointmentTime, Reason, Address) values ('" + txtPatientName.Text + "', '" + txtEmail.Text + "', '" + txtMobile.Text + "', '" + txtDob.Text + "', '" + ddlGender.SelectedValue + "', '" + ddlDepartment.SelectedValue + "', '" + ddlDoctor.SelectedValue + "', '" + txtAppDate.Text + "', '" + ddlAppTime.SelectedValue + "', '" + txtReason.Text + "', '" + txtAddress.Text + "')", con);

                i = cmd.ExecuteNonQuery();

                if (i > 0)
                {
                    Response.Write("<script>alert('Appointment successfully booked!');</script>");

                    // Clean Textboxes
                    txtPatientName.Text = "";
                    txtEmail.Text = "";
                    txtMobile.Text = "";
                    txtDob.Text = "";
                    ddlGender.ClearSelection();
                    ddlDepartment.ClearSelection();
                    ddlDoctor.ClearSelection();
                    txtAppDate.Text = "";
                    ddlAppTime.ClearSelection();
                    txtReason.Text = "";
                    txtAddress.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('Booking Failed!');</script>");
                }
                con.Close();
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtPatientName.Text = "";
            txtEmail.Text = "";
            txtMobile.Text = "";
            txtDob.Text = "";
            ddlGender.ClearSelection();
            ddlDepartment.ClearSelection();
            ddlDoctor.ClearSelection();
            txtAppDate.Text = "";
            ddlAppTime.ClearSelection();
            txtReason.Text = "";
            txtAddress.Text = "";
        }
    }
}