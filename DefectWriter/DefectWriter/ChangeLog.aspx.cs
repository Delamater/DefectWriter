using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace DefectWriter
{
    public partial class ChangeLog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Load the text file
            try
            {
                string path = Server.MapPath("ChangeLog.txt");
                txtChangeLog.Text = File.ReadAllText(path);
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + Environment.NewLine + ex.Message);
            }
        }
    }
}