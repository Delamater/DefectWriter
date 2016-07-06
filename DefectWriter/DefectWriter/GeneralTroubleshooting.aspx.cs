using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DocumentFormat.OpenXml;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;


namespace DefectWriter
{
    public partial class GeneralTroubleshooting : System.Web.UI.Page
    {
        OfficeMgr om = new OfficeMgr();
        TroubleshootingGeneral gtt = new TroubleshootingGeneral();

        TroubleshootingGeneral.Questions clsQuestions = new TroubleshootingGeneral.Questions();



        protected void Page_Load(object sender, EventArgs e)
        {
            //TabName.Value = Request.Form[TabName.UniqueID];
        }

        protected void btnEmail_Click(object sender, EventArgs e)
        {
            //om.CreateWordProcessingDocumentWithStyle(@"c:\temp\GeneralTroubleshooting01.docx");
            try
            {
                SetQuestionsProperties();
                HybridDictionary hbClasses = new HybridDictionary();
                hbClasses.Add("Ask", clsQuestions);
                //hbClasses.Add("WebEx", clsWebEx);
                //hbClasses.Add("Environment", clsEnvironment);
                //hbClasses.Add("Search", clsSearch);
                //hbClasses.Add("Screenshots", clsScreenshots);
                //hbClasses.Add("Duplicate", clsDuplicate);
                //hbClasses.Add("Retrieve", clsRetrieve);
                //hbClasses.Add("Notes", clsNotes);


                gtt.CreateGeneralTroubleshootingDocument(hbClasses);
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
            
        }

        protected void SetQuestionsProperties()
        {
            clsQuestions.ClientType = rdoClientType.SelectedValue;
            clsQuestions.ClientType = txtClientType.Text;
            clsQuestions.ServerOperatingSystem = txtServerOperSystem.Text;
            clsQuestions.Description = txtDescription.Text;
            clsQuestions.WhatWereTheyDoing = txtWhat.Text;
            clsQuestions.CustomerVersion = txtVersion.Text;
            clsQuestions.PatchLevel = txtPatchLevel.Text;
            clsQuestions.WhereDoesItOccur = txtWhereIsItHappening.Text;
            clsQuestions.IsFirstTimeHappened = chkFirstTimeHappening.Checked;
            clsQuestions.HowWasDataEntred = txtHowWasDataEntered.Text;
            //clsQuestions.WhatHasChanged = txtWhatHasChanged.Text;
            clsQuestions.FrequencyOfIssue = txtFrequency.Text;
            clsQuestions.AllUsersOrSome = txtAllUsersOrSome.Text;
            clsQuestions.IsThisAreaModified = chkHasModifications.Checked;
            clsQuestions.IfModifiedHow = txtIfModificationsWhat.Text;
            clsQuestions.AllQuestionsAskedAndAnswers = txtQuestionsAndAnswers.Text;
            clsQuestions.WhatHaveYouAlreadyTried = txtWhatHaveYouTried.Text;
            clsQuestions.WhatHaveTheyAlreadyTried = txtWhatHaveTheyTried.Text;
            clsQuestions.NextSteps = txtNextSteps.Text;
            clsQuestions.Solution = txtSolution.Text;
            clsQuestions.AreScreenshotsAttached = chkAreScreenshotsAttached.Checked;
            clsQuestions.WebExLink = txtWebExLink.Text;
            clsQuestions.FusionSearchTerms = txtFusion.Text;
            clsQuestions.LisaSearchTerms = txtLISA.Text;
            clsQuestions.SamSearchTerms = txtSAM.Text;
            clsQuestions.PatchFinderSearchTerms = txtPatchFinder.Text;
            clsQuestions.GoogleSearchTerms = txtGoogle.Text;
            clsQuestions.StepsToDuplicate = txtStepsToDupe.Text;
            clsQuestions.IsDuplicable = chkIsDuplicable.Checked;
            clsQuestions.VersionDuped = txtVersionDuped.Text;
            clsQuestions.DiscussedWithMentor = chkDiscussedWithMentor.Checked;
            clsQuestions.LisaTicketNumber = txtLisaTicketNumber.Text;
            clsQuestions.AdditionalDetail = txtAdditionalDetail.Text;
            clsQuestions.IsSqlProfilerAttached = chkIsSQlProfilerAttached.Checked;
            clsQuestions.IsX3DebuggerTraceAttached = chkIsX3DebuggerTraceAttached.Checked;
            clsQuestions.IsTraDirectoryRecovered = chkIsTraDirectoryRecovered.Checked;
            clsQuestions.IsAlogSupLogRecovered = chkIsALogSupRecovered.Checked;
            clsQuestions.Notes = txtNotes.Text;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string text = "123";
        }
    
    }
}