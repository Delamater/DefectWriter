﻿using System;
using System.Collections.Generic;
using System.Collections;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Reflection;


namespace DefectWriter
{
    public class TroubleshootingGeneral: Troubleshooting.TemplateModel
    {

        //Global to the module
        List<DocumentText> DocTexts = new List<DocumentText>();

        public class Questions
        {

            //Directive To Ask These Questions
            public string   Description                 { get; set; }
            public string   WhatWereTheyDoing           { get; set; }
            public string   Version                     { get; set; }
            public string   PatchLevel                  { get; set; }
            public string   WhereDoesItOccur            { get; set; } //Production or pilot?
            public bool     IsFirstTimeHappened         { get; set; }
            public string   WhatHasChanged              { get; set; }
            public string   HowWasDataEntred            { get; set; }
            public string   FrequencyOfIssue            { get; set; }
            public string   AllUsersOrSome              { get; set; }
            public bool     IsThisAreaModified          { get; set; }
            public string   IfModifiedHow               { get; set; }


            public string AllQuestionsAskedAndAnswers   { get; set; }
            public string WhatHaveYouAlreadyTried       { get; set; }
            public string WhatHaveTheyAlreadyTried      { get; set; }
            public string NextSteps                     { get; set; }
            public string Solution                      { get; set; }




            //WebEx
            public bool     IsIssueDemonstratedViaWebEx { get; set; }

            //Environment
            public string ClientType                    { get; set; }
            public string ClientSystemEnvironment       { get; set; }

            //Searching
            public string FusionSearchTerms             { get; set; }
            public string LisaSearchTerms               { get; set; }
            public string SamSearchTerms                { get; set; }
            public string PatchFinderSearchTerms        { get; set; }
            public string GoogleSearchTerms             { get; set; }

            //Get Screenshots
            //All errors
            //Pertinent Setup


            //Attempt to duplicate issue in-house
            public bool DidTryToDuplicate               { get; set; }
            public string CurrentVersion                { get; set; }
            public string CustomersVersion              { get; set; }
            public bool IsDuplicable                    { get; set; }

            //If duplicable
            public bool DiscussedWithMentorDuplicable   { get; set; }
            public string IsLisaTicketExists            { get; set; }

            //If Not duplicable
            public string AdditionalDetail              { get; set; }
            public string WebExLink                     { get; set; }
            public bool IsSqlProfilerAttached           { get; set; }
            public bool IsX3DebuggerTraceAttached       { get; set; }
            public bool DiscussedWithMentorNotDuplicable{ get; set; }

            //Retrieve
            public bool IsTraDirectoryRecovered { get; set; }
            public bool IsAlogSupLogRecovered { get; set; }

            
        }

        public class WebEx
        {
            
        }

        public class Environment
        {

        }

        public class Search
        {

        }

        public class Screenshots
        {


        }

        public class Duplicate
        {

        }

        public class Retrieve
        {

        }

        public class Notes
        {



        }

        static Troubleshooting.TemplateModel.HeadingTypes ht = new HeadingTypes();

        #region "Variables"
        #endregion

        #region "Properties"
        
        #endregion

        public void CreateGeneralTroubleshootingDocument(HybridDictionary hbObjects)
        {
            //Declare heading types for use
            HeadingTypes ht = new HeadingTypes();
            
            foreach (DictionaryEntry entry in hbObjects)
            {

                //Ask class
                if (entry.Key.ToString() == "Ask")
                {
                    DocTexts.Add(new DocumentText() { HeadingType = ht.Heading1, Text = "Ask" });
                    PropertyInfo[] properties = typeof(Questions).GetProperties();
                    AddText(properties, entry);
                }
                //else if (entry.Key.ToString() == "WebEx") 
                //{
                //    DocTexts.Add(new DocumentText() { HeadingType = ht.Heading1, Text = "WebEx" });
                //    PropertyInfo[] properties = typeof(WebEx).GetProperties();
                //    AddText(properties, entry);
                //}
                //else if (entry.Key.ToString() == "Environment")
                //{
                //    DocTexts.Add(new DocumentText() { HeadingType = ht.Heading1, Text = "Environment" });
                //    PropertyInfo[] properties = typeof(Environment).GetProperties();
                //    AddText(properties, entry);
                //}
                //else if (entry.Key.ToString() == "Search")
                //{
                //    DocTexts.Add(new DocumentText() { HeadingType = ht.Heading1, Text = "Search" });
                //    PropertyInfo[] properties = typeof(Search).GetProperties();
                //    AddText(properties, entry);
                //}
                //else if (entry.Key.ToString() == "Screenshots")
                //{
                //    DocTexts.Add(new DocumentText() { HeadingType = ht.Heading1, Text = "Screenshots" });
                //    PropertyInfo[] properties = typeof(Screenshots).GetProperties();
                //    AddText(properties, entry);
                //}
                //else if (entry.Key.ToString() == "Duplicate")
                //{
                //    DocTexts.Add(new DocumentText() { HeadingType = ht.Heading1, Text = "Duplicate" });
                //    PropertyInfo[] properties = typeof(Duplicate).GetProperties();
                //    AddText(properties, entry);
                //}
                //else if (entry.Key.ToString() == "Retrieve")
                //{
                //    DocTexts.Add(new DocumentText() { HeadingType = ht.Heading1, Text = "Retrieve" });
                //    PropertyInfo[] properties = typeof(Retrieve).GetProperties();
                //    AddText(properties, entry);
                //}
                //else if (entry.Key.ToString() == "Notes")
                //{
                //    DocTexts.Add(new DocumentText() { HeadingType = ht.Heading1, Text = "Notes" });
                //    PropertyInfo[] properties = typeof(Notes).GetProperties();
                //    AddText(properties, entry);
                //}

            }

            this.CreateAndEmailDoc(constants.TemplateType.GeneralTroubleshooting, DocTexts, this.SendToEmailAddress);

        }   
 
        private void AddText(PropertyInfo[] properties, DictionaryEntry entry)
        {
            foreach (PropertyInfo property in properties)
            {
                //hbDocumentText.Add(ht.Normal, property.ToString());
                DocTexts.Add(new DocumentText() { HeadingType = ht.Normal, Text = property.GetValue(entry.Value).ToString() });
            }
        }

    }
}