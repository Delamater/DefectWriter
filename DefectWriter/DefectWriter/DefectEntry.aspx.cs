using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls;
using System.DirectoryServices.AccountManagement;

namespace DefectWriter
{
    public partial class DefectEntry3 : System.Web.UI.Page
    {
        //MembershipUser u;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //u = Membership.GetUser(User.Identity.Name);

                if (!IsPostBack)
                {
                    if (string.IsNullOrEmpty(txtemailAddress.Text))
                    {
                        //txtemailAddress.Text = u.Email;
                    }
                }
            }
            catch( Exception ex)
            {
                
            }
            Page.MaintainScrollPositionOnPostBack = true;            
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

                if (ddlPriority.SelectedValue == "1" || ddlPriority.SelectedValue == "2")
                {
                    txtCriticalHighReason.Text = constants.kNotApplicable;
                }

                myOutput = myDefect.GetOutput(txtSummary.Text,
                    ddlMajorVersion.Text,
                    txtMinorVersion.Text,
                    ddlPriority.SelectedItem.Text,
                    txtCriticalHighReason.Text,
                    txtStepsToDuplicate.Text,
                    txtAdditionalInformation.Text,
                    txtExpectedResults.Text,
                    txtCustomerExpectations.Text,
                    txtCustomerCompanyName.Text,
                    txtPartnerCompanyName.Text,
                    ddlDatabaseType.Text,
                    ddlSQLVersion.Text,
                    txtCriticalHighReason.Text,
                    ddlTypeOfRequest.Text,
                    ddlFrequency.Text,
                    chkIsDuplicable.Checked,
                    txtNotDuplicableReason.Text,
                    chkIsWorkaroundAcceptable.Checked,
                    txtWorkaroundNotAcceptableReason.Text, 
                    chkHasWorkAround.Checked,
                    txtWorkaround.Text,
                    txtLocationOfResource.Text,
                    chkPreventsUseOfKeyFunction.Checked,
                    chkNo3rdPartyMods.Checked,
                    txt3rdPartyModsDesc.Text,
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
            txtCriticalHighReason.Enabled = IsPriorityCriticalOrHigh();
            txtCriticalHighReason.Visible = IsPriorityCriticalOrHigh();
            rfvCriticalOrHighReason.Enabled = IsPriorityCriticalOrHigh();
        }

        private Boolean IsPriorityCriticalOrHigh()
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

        protected void chkNo3rdPartyMods_CheckedChanged(object sender, EventArgs e)
        {
            txt3rdPartyModsDesc.Text = "";
            txt3rdPartyModsDesc.Visible = chkNo3rdPartyMods.Checked;
            rfv3rdPartyReason.Enabled = chkNo3rdPartyMods.Checked;
        }

        protected void ddlMajorVersion_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (ddlMajorVersion.SelectedValue == "X3 cloud")
            {
                txtMinorVersion.Text = constants.kNotApplicable;
            }
            else
            {
                txtMinorVersion.Text = string.Empty;
            }
        }

        protected void chkIsDuplicable_CheckedChanged(object sender, EventArgs e)
        {
            txtNotDuplicableReason.Text = "";
            txtNotDuplicableReason.Visible = !chkIsDuplicable.Checked;
            txtNotDuplicableReason.Enabled = !chkIsDuplicable.Checked;
            rfvWhyDidYouNotDuplicateInHouse.Enabled = !chkIsDuplicable.Checked;
            Page.SetFocus(chkIsDuplicable);
        }

        protected void chkWorkAround_CheckedChanged(object sender, EventArgs e)
        {
            txtWorkaround.Visible = chkHasWorkAround.Checked;
            chkIsWorkaroundAcceptable.Visible = chkHasWorkAround.Checked;
            rfvHasWorkAround.Enabled = chkHasWorkAround.Checked;
        }
    }
}