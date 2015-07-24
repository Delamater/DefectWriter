using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DefectWriter
{
    public partial class DefectEntry3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true;            
            if (Page.IsPostBack)
            {
                
            }
        }

        protected void btnBuildDefect_Click(object sender, EventArgs e)
        {
            if (Page.IsValid == false)
            {
                return;
            }

            DefectMgr myDefect = new DefectMgr();
            SMTPMgr smtpMgr = new SMTPMgr();
            try
            {
                string myOutput = "";

                myOutput = myDefect.GetOutput(txtSummary.Text,
                    ddlMajorVersion.Text,
                    txtMinorVersion.Text,
                    ddlPriority.SelectedItem.Text,
                    txtCriticalHighReason.Text,
                    txtStepsToDuplicate.Text,
                    txtExpectedResults.Text,
                    txtCustomerCompanyName.Text,
                    txtPartnerCompanyName.Text,
                    ddlDatabaseType.Text,
                    ddlSQLVersion.Text,
                    txtCriticalHighReason.Text,
                    ddlTypeOfRequest.Text,
                    ddlFrequency.Text,
                    chkIsDuplicable.Checked,
                    chkIsWorkaroundAcceptable.Checked,
                    txtWorkaroundNotAcceptableReason.Text,
                    txtWorkaround.Text,
                    txtLocationOfResource.Text,
                    chkPreventsUseOfKeyFunction.Checked,
                    chkNo3rdPartyMods.Checked,
                    chkReproducibleOnUnModifiedCode.Checked,
                    chkNoWorkaroundOrWorkaroundUnacceptable.Checked,
                    chkIsEnhancementRequest.Checked,
                    Convert.ToDouble(txtCaseNumber.Text));

                txtOutput.ReadOnly = false;
                txtOutput.Text = myOutput;
                txtOutput.ReadOnly = true;

                string sendToEmail = txtemailAddress.Text;
                string caseNumber = txtCaseNumber.Text;
                if (!string.IsNullOrEmpty(sendToEmail))
                {

                    smtpMgr.SendEmail(sendToEmail, "Defect Writer: " + txtSummary.Text + "- Case Number: " + caseNumber, myOutput, "");

                }


            }
            catch (Exception ex)
            {
                Response.Write("Error: " + Environment.NewLine + ex.Message);
            }
        }

        protected void ddlPriority_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void cfvPriorityValidation_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (IsPriorityMediumOrHigh() == true)
            {
                // Args are valid if txtReasonForCriticalOrHigh is not blank
                args.IsValid = !string.IsNullOrEmpty(txtCriticalHighReason.Text.Trim());

            }
        }

        private Boolean IsPriorityMediumOrHigh()
        {
            int intPriorityValue = 0;
            intPriorityValue = Convert.ToInt16(ddlPriority.SelectedValue);
            if (intPriorityValue == 3 || intPriorityValue == 4)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        protected void chkIsWorkaroundAcceptable_CheckedChanged(object sender, EventArgs e)
        {
            txtWorkaroundNotAcceptableReason.Text = "";

            //Display reason textbox if workaround is not acceptable. 
            //If it is acceptable no reason is required
            txtWorkaroundNotAcceptableReason.Visible = !chkIsWorkaroundAcceptable.Checked;
            rfvWhyIsWorkaroundNotAcceptable.Enabled = !chkIsWorkaroundAcceptable.Checked;
            Page.SetFocus(chkIsWorkaroundAcceptable);

            
        }

        
    }
}