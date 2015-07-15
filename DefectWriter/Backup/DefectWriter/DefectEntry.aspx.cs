using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace DefectWriter
{
    public partial class DefectEntry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuildDefect_Click(object sender, EventArgs e)
        {
            DefectMgr myDefect = new DefectMgr();
            SMTPMgr smtpMgr = new SMTPMgr();
            try
            {
                string myOutput = "";

                myOutput = myDefect.GetOutput(txtSummary.Text,
                     txtStepsToDuplicate.Text,
                     txtExpectedResults.Text,
                     txtCustomerCompanyName.Text,
                     txtPartnerCompanyName.Text,
                     ddlDatabaseType.Text,
                     ddlSQLVersion.Text,
                     txtReasonForCriticalOrHigh.Text,
                     ddlTypeOfRequest.Text,
                     ddlFrequency.Text,
                     chkIsDuplicable.Checked,
                     chkIsWorkaroundAcceptable.Checked,
                     txtWorkaround.Text,
                     txtLocationOfResource.Text,
                     chkPreventsUseOfKeyFunction.Checked,
                     chkNo3rdPartyMods.Checked,
                     chkReproducibleOnUnModifiedCode.Checked,
                     chkNoWorkaroundOrWorkaroundUnacceptable.Checked,
                     chkIsEnhancementRequest.Checked,
                     Convert.ToDouble(txtCaseNumber.Text));

                txtOutput.Text = myOutput;

                string sendToEmail = txtemailAddress.Text;
                string caseNumber = txtCaseNumber.Text;
                if (!string.IsNullOrEmpty(sendToEmail))
                {

                    smtpMgr.SendEmail(sendToEmail, "Defect Writer: " + txtSummary.Text + "- Case Number: " + caseNumber, txtOutput.Text, "");

                }
                

            }
            catch (Exception ex)
            {
                Response.Write("Error: " + Environment.NewLine + ex.Message);
            }

        }

        private void EmailResults()
        {

        }


    }
}