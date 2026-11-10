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
    public partial class login : System.Web.UI.Page
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

        protected void btnPatientLogin_Click(object sender, EventArgs e)
        {
            if (!(string.IsNullOrEmpty(txtPatientEmail.Text)) &&
                !(string.IsNullOrEmpty(txtPatientPwd.Text)))
            {
                getcon();
                cmd = new SqlCommand("select count(*) from tbl_Patients where Email='" + txtPatientEmail.Text + "' and Password='" + txtPatientPwd.Text + "'", con);
                i = Convert.ToInt16(cmd.ExecuteScalar());
                if (i > 0)
                {
                    Session["patient"] = txtPatientEmail.Text;
                    Response.Redirect("patient-dashboard.aspx");
                }
                else
                {
                    Response.Write("Invalid Email or Password");
                }
            }
        }

        protected void btnDoctorLogin_Click(object sender, EventArgs e)
        {
            if (!(string.IsNullOrEmpty(txtDoctorEmail.Text)) &&
                !(string.IsNullOrEmpty(txtDoctorPwd.Text)))
            {
                getcon();
                cmd = new SqlCommand("select count(*) from tbl_Users where Email='" + txtDoctorEmail.Text + "' and Password='" + txtDoctorPwd.Text + "'", con);
                i = Convert.ToInt16(cmd.ExecuteScalar());
                if (i > 0)
                {
                    Session["doctor"] = txtDoctorEmail.Text;
                    Response.Redirect("doctor-dashboard.aspx");
                }
                else
                {
                    Response.Write("Invalid Email or Password");
                }
            }
        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            if (!(string.IsNullOrEmpty(txtAdminEmail.Text)) &&
                !(string.IsNullOrEmpty(txtAdminPwd.Text)))
            {
                getcon();
                cmd = new SqlCommand("select count(*) from tbl_Users where Email='" + txtAdminEmail.Text + "' and Password='" + txtAdminPwd.Text + "'", con);
                i = Convert.ToInt16(cmd.ExecuteScalar());
                if (i > 0)
                {
                    Session["admin"] = txtAdminEmail.Text;
                    Response.Redirect("admin-dashboard.aspx");
                }
                else
                {
                    Response.Write("Invalid Email or Password");
                }
            }
        }
    }
}