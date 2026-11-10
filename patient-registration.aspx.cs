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
    public partial class patient_registration : System.Web.UI.Page
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

        protected void btn_register_Click(object sender, EventArgs e)
        {
            if (!(string.IsNullOrEmpty(txt_fnm.Text)) &&
                !(string.IsNullOrEmpty(txt_email.Text)) &&
                !(string.IsNullOrEmpty(txt_pwd.Text)))
            {
                getcon();
                cmd = new SqlCommand("insert into tbl_Patients (FullName, Email, Mobile, Gender, Password) values ('" + txt_fnm.Text + "', '" + txt_email.Text + "', '" + txt_mobile.Text + "', '" + ddl_gender.SelectedValue + "', '" + txt_pwd.Text + "')", con);
                i = cmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Redirect("login.aspx");
                }
                else
                {
                    Response.Write("Registration Failed");
                }
            }
        }
    }
}