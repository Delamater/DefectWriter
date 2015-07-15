using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;

namespace DefectWriter
{
    public class DefectMgr
    {

        #region Variables
        //Variables
        StringBuilder output = new StringBuilder();

        private string _summary = "";
        private string _stepsToDupe = "";
        private string _expectedResults = "";
        private string _customerCompanyName = "";
        private string _partnerCompanyName = "";
        private string _dbVersion = "";
        private string _dbType = "";
        private string _reasonForCriticalOrHigh = "";
        private string _customerExpectations = "";
        private string _typeOfRequest = "";
        private string _frequency = "";
        private bool _canDuplicate = false;
        private string _workaround = "";
        private bool _isWorkaroundAcceptable = false;
        private string _locationOfResource = "";
        private bool _isCustomized = false;
        private bool _preventsKeyFunction = false;
        private bool _no3rdPartyMods = false;
        private bool _canReproduceInUnmodifiedCode = false;
        private bool _NoWrokaroundOrWorkaroundIsNotAcceptable = false;
        private bool _isEnhancementRequest = false;
        private double _caseNumber = 0;

        #endregion

        #region Properties
        public string Summary
        {
            get { return _summary; }
            set { _summary = value; }
        }

        public string StepsToDuplicate
        {
            get { return _stepsToDupe; }
            set { _stepsToDupe = value; }
        }

        public string ExpectedResults
        {
            get { return _expectedResults; }
            set { _expectedResults = value; }
        }
        
        public string CustomerCompanyName
        {
            get { return _customerCompanyName; }
            set { _customerCompanyName = value; }
        }

        public string PartnerCompanyName
        {
            get { return _partnerCompanyName; }
            set { _partnerCompanyName = value; }
        }

        public string DbVersion
        {
            get { return _dbVersion; }
            set { _dbVersion = value; }
        }

        public string DbType
        {
            get { return _dbType; }
            set { _dbType = value; }
        }

        public string ReasonForCriticalOrHigh
        {
            get { return _reasonForCriticalOrHigh; }
            set { _reasonForCriticalOrHigh = value; }
        }


        public string TypeOfRequest
        {
            get { return _typeOfRequest; }
            set { _typeOfRequest = value; }
        }

        public string Frequency
        {
            get { return _frequency; }
            set { _frequency = value; }
        }

        public bool CanDuplicate
        {
            get { return _canDuplicate; }
            set { _canDuplicate = value; }
        }

        public string Workaround
        {
            get { return _workaround; }
            set { _workaround = value; }
        }

        public bool IsWorkaroundAcceptable
        {
            get { return _isWorkaroundAcceptable; }
            set { _isWorkaroundAcceptable = value; }
        }

        public string LocationOfResource
        {
            get { return _locationOfResource; }
            set { _locationOfResource = value; }
        }

        public bool No3rdPartyMods
        {
            get { return _isCustomized; }
            set { _isCustomized = value; }
        }

        public bool PreventsKeyFunction
        {
            get { return _preventsKeyFunction; }
            set { _preventsKeyFunction = value; }
        }

        public bool CanReproduceInUnmodifiedCode
        {
            get { return _canReproduceInUnmodifiedCode; }
            set { _canReproduceInUnmodifiedCode = value; }
        }

        public bool NoWorkaroundOrWorkaroundIsUnacceptable
        {
            get { return _NoWrokaroundOrWorkaroundIsNotAcceptable; }
            set { _NoWrokaroundOrWorkaroundIsNotAcceptable = value; }
        }

        public bool IsEnhancementRequest
        {
            get { return _isEnhancementRequest; }
            set { _isEnhancementRequest = value; }
        }

        public double CaseNumber
        {
            get { return _caseNumber; }
            set { _caseNumber = value; }
        }

        #endregion

        #region Methods
        public string GetOutput(
            string DefectSummary, 
            string DefectStepsToDupe, 
            string DefectExpectedResults,
            string DefectCustomerCompanyName, 
            string DefectPartnerCompanyName,
            string DefectDbType, 
            string DefectDbVersion,
            string DefectReasonForCriticalOrHigh,
            string DefectTypeOfRequest,
            string DefectFrequency,
            bool DefectCanDuplicate,
            bool DefectIsWorkaroundAcceptable,
            string DefectWorkaround,
            string DefectLocationOfResource,
            bool DefectPreventsKeyFunction,
            bool No3rdPartyMods,
            bool DefectCanReproduceInUnmodifiedCode,
            bool DefectNoWorkaroundOrWorkaroundIsNotAcceptable,
            bool DefectIsEnhancementRequest, 
            double DefectCaseNumber)
            
        {
            
            this.Summary = DefectSummary;
            this.StepsToDuplicate = DefectStepsToDupe;
            this.ExpectedResults = DefectExpectedResults;
            this.CustomerCompanyName = DefectCustomerCompanyName;
            this.PartnerCompanyName = DefectPartnerCompanyName;
            this.DbType = DefectDbType;
            this.DbVersion = DefectDbVersion;
            this.ReasonForCriticalOrHigh = DefectReasonForCriticalOrHigh;
            this.TypeOfRequest = DefectTypeOfRequest;
            this.Frequency = DefectFrequency;
            this.CanDuplicate = DefectCanDuplicate;
            this.IsWorkaroundAcceptable = DefectIsWorkaroundAcceptable;
            this.Workaround = DefectWorkaround;
            this.LocationOfResource = DefectLocationOfResource;
            this.PreventsKeyFunction = DefectPreventsKeyFunction;
            this.No3rdPartyMods = No3rdPartyMods;
            this.CanReproduceInUnmodifiedCode = DefectCanReproduceInUnmodifiedCode;
            this.NoWorkaroundOrWorkaroundIsUnacceptable = DefectNoWorkaroundOrWorkaroundIsNotAcceptable;
            this.IsEnhancementRequest = DefectIsEnhancementRequest;
            this.CaseNumber = DefectCaseNumber;

            AppendLine("Summary For Case #:" + this.CaseNumber.ToString() + " ", this.Summary);
            AppendLine("Steps to Duplicate:", this.StepsToDuplicate);
            AppendLine("Expected Results:", this.ExpectedResults);
            AppendLine("Customer Company Name:", this.CustomerCompanyName);
            AppendLine("Partner Company Name:", this.PartnerCompanyName);
            AppendLine("Database Type:", this.DbType);
            AppendLine("Database Version", this.DbVersion);
            AppendLine("Reason For Critical Or High:", this.ReasonForCriticalOrHigh);
            AppendLine("Type of Request", this.TypeOfRequest);
            AppendLine("Frequency: ", this.Frequency);
            AppendLine("Can duplicate?:", this.CanDuplicate.ToString());
            AppendLine("Is Workaround Acceptable?:", this.IsWorkaroundAcceptable.ToString());
            AppendLine("Workaround: ", this.Workaround);
            AppendLine("Location of Resource:", this.LocationOfResource);
            AppendLine("Priority Checklist", "__________________________________");
            AppendLine("Prevents Key Function:", this.PreventsKeyFunction.ToString());
            AppendLine("No Third Party Modifications In This Area?:", this.No3rdPartyMods.ToString());
            AppendLine("Can Reproduce In Unmodified Code?:", this.CanReproduceInUnmodifiedCode.ToString());
            AppendLine("No Workaround or Workaround is Not Acceptable?:", this.NoWorkaroundOrWorkaroundIsUnacceptable.ToString());
            AppendLine("Is Enhancement Request?:", this.IsEnhancementRequest.ToString());




            return output.ToString();

            
        }

        public string foo()
        {
            return "Bar";
        }

        private void AppendLine(string SectionTitle, string sectionValue)
        {
            output.AppendLine(SectionTitle);
            output.AppendLine(sectionValue);
            output.Append(Environment.NewLine);
        }
        #endregion


    }
}