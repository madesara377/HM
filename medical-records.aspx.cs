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
    public partial class medical_records : System.Web.UI.Page
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
            con.Open();
        }

        protected void btnSaveRecord_Click(object sender, EventArgs e)
        {
            if (!(string.IsNullOrEmpty(txtPatientName.Text)) &&
                !(string.IsNullOrEmpty(txtDiagnosis.Text)))
            {
                getcon();
                cmd = new SqlCommand("insert into tbl_MedicalRecords (PatientName, DoctorName, Diagnosis, Prescription) values ('" + txtPatientName.Text + "', '" + ddlDoctor.SelectedValue + "', '" + txtDiagnosis.Text + "', '" + txtPrescription.Text + "')", con);
                i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("Medical Record Saved Successfully!");
                    txtPatientName.Text = "";
                    txtDiagnosis.Text = "";
                    txtPrescription.Text = "";
                }
            }
        }
    }
}