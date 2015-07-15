using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DefectWriter
{
    public partial class Reminders : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                calReminderDate.SelectedDate = DateTime.Today;
            }
            
        }

        protected void btnCreateReminder_Click(object sender, EventArgs e)
        {
            try
            {
                sqldsReminder.InsertParameters["CaseNumber"].DefaultValue = txtCaseNumber.Text.Trim();
                sqldsReminder.InsertParameters["EmployeeID"].DefaultValue = ddlEmployee.SelectedValue;
                sqldsReminder.InsertParameters["ReminderDate"].DefaultValue = calReminderDate.SelectedDate.ToString();
                sqldsReminder.InsertParameters["IsEmailSent"].DefaultValue = "0";
                sqldsReminder.Insert();

                //Clean up default values
                sqldsReminder.InsertParameters["CaseNumber"].DefaultValue = null;
                sqldsReminder.InsertParameters["EmployeeID"].DefaultValue = null;
                sqldsReminder.InsertParameters["ReminderDate"].DefaultValue = null;
                sqldsReminder.InsertParameters["IsEmailSent"].DefaultValue = null;

                txtCaseNumber.Text = "";
                ddlEmployee.SelectedIndex = 0;
                calReminderDate.SelectedDate = DateTime.Today;

                //Reload the grid 
                gvReminders.DataBind();


            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                Response.Write("Error: " + ex.Message);
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.Message
                    + Environment.NewLine + Environment.NewLine + "Inner Exception: " + ex.InnerException
                    + Environment.NewLine + Environment.NewLine + "Stack Trace" + ex.StackTrace);
            }
        }

        protected void calReminderDate_SelectionChanged(object sender, EventArgs e)
        {
            if (calReminderDate.SelectedDate < DateTime.Today)
            {
                calReminderDate.SelectedDate = DateTime.Today;
                calReminderDate.ToolTip = "Selected date cannot be less than today";
            }
        }
    }
}