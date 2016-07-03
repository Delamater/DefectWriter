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

        protected void Page_Load(object sender, EventArgs e)
        {
            //TabName.Value = Request.Form[TabName.UniqueID];
        }

        protected void btnEmail_Click(object sender, EventArgs e)
        {
            //om.CreateWordProcessingDocumentWithStyle(@"c:\temp\GeneralTroubleshooting01.docx");
            try
            {
                TroubleshootingGeneral.Questions clsQuestions = new TroubleshootingGeneral.Questions();
                TroubleshootingGeneral.WebEx clsWebEx = new TroubleshootingGeneral.WebEx();
                TroubleshootingGeneral.Environment clsEnvironment = new TroubleshootingGeneral.Environment();
                TroubleshootingGeneral.Search clsSearch = new TroubleshootingGeneral.Search();
                TroubleshootingGeneral.Screenshots clsScreenshots = new TroubleshootingGeneral.Screenshots();
                TroubleshootingGeneral.Duplicate clsDuplicate = new TroubleshootingGeneral.Duplicate();
                TroubleshootingGeneral.Retrieve clsRetrieve = new TroubleshootingGeneral.Retrieve();
                TroubleshootingGeneral.Notes clsNotes = new TroubleshootingGeneral.Notes();
                
                clsQuestions.Description = "Some problem description here";
                clsQuestions.WhatWereTheyDoing = "Who knows. They never know what they were doing when you ask";
                clsQuestions.Version = "V7.02";

                HybridDictionary hbClasses = new HybridDictionary();
                hbClasses.Add("Ask", clsQuestions);
                hbClasses.Add("WebEx", clsWebEx);
                hbClasses.Add("Environment", clsEnvironment);
                hbClasses.Add("Search", clsSearch);
                hbClasses.Add("Screenshots", clsScreenshots);
                hbClasses.Add("Duplicate", clsDuplicate);
                hbClasses.Add("Retrieve", clsRetrieve);
                hbClasses.Add("Notes", clsNotes);


                gtt.CreateGeneralTroubleshootingDocument(hbClasses);
            }
            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string text = "123";
        }
    
    }
}