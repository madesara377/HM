using System;
using System.Web.UI;

namespace HM
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        public string GetActiveClass(string pageName)
        {
            string path = Request.Url.AbsolutePath.ToLower();
            string page = pageName.ToLower();

            if (page == "index.aspx" && (path.EndsWith("index.aspx") || path.EndsWith("/")))
            {
                return "active";
            }

            return path.EndsWith(page) ? "active" : "";
        }
    }
}
