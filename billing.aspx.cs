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
    public partial class billing : System.Web.UI.Page
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

        protected void btnGenerateBill_Click(object sender, EventArgs e)
        {
            if (!(string.IsNullOrEmpty(txtPatientName.Text)) &&
                !(string.IsNullOrEmpty(txtAmount.Text)))
            {
                getcon();
                cmd = new SqlCommand("insert into tbl_Billing (PatientName, ServiceType, Amount, PaymentStatus) values ('" + txtPatientName.Text + "', '" + ddlService.SelectedValue + "', '" + txtAmount.Text + "', '" + ddlStatus.SelectedValue + "')", con);

                i = cmd.ExecuteNonQuery();

                if (i > 0)
                {
                    Response.Write("<script>alert('Bill Generated Successfully!');</script>");

                    // Clean Textboxes
                    txtPatientName.Text = "";
                    txtAmount.Text = "";
                    ddlService.ClearSelection();
                    ddlStatus.ClearSelection();
                }
                else
                {
                    Response.Write("<script>alert('Bill Generation Failed!');</script>");
                }
                con.Close();
            }
        }
    }
}