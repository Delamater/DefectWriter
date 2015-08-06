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
        private string _majorVersion = "";
        private string _minorVersion = "";
        private string _priority = "";
        private string _criticalHighReason = "";
        private string _stepsToDupe = "";
        private string _additionalInfo = "";
        private string _expectedResults = "";
        private string _customerExpectations = "";
        private string _customerCompanyName = "";
        private string _partnerCompanyName = "";
        private string _dbVersion = "";
        private string _dbType = "";
        private string _reasonForCriticalOrHigh = "";
        private string _typeOfRequest = "";
        private string _frequency = "";
        private bool _canDuplicate = false;
        private string _notDuplicableReason = "";
        private bool _hasWorkaround = false;
        private string _workaround = "";
        private bool _isWorkaroundAcceptable = false;
        private string _WorkaroundNotAcceptableReason = "";
        private string _locationOfResource = "";
        private bool _isCustomized = false;
        private bool _preventsKeyFunction = false;
        private string _3rdPartyModsDesc = "";
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

        public string MajorVersion
        {
            get { return _majorVersion; }
            set { _majorVersion = value; }
        }

        public string MinorVersion
        {
            get { return _minorVersion; }
            set { _minorVersion = value; }
        }

        public string Priority
        {
            get { return _priority; }
            set { _priority = value; }
        }

        public string CriticalHighReason
        {
            get { return _criticalHighReason; }
            set { _criticalHighReason = value; }
        }

        public string StepsToDuplicate
        {
            get { return _stepsToDupe; }
            set { _stepsToDupe = value; }
        }

        public string AdditionalInfo
        {
            get { return _additionalInfo; }
            set { _additionalInfo = value; }
        }

        public string ExpectedResults
        {
            get { return _expectedResults; }
            set { _expectedResults = value; }
        }

        public string CustomerExpectations
        {
            get { return _customerExpectations; }
            set { _customerExpectations = value; }
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

        public string NotDuplicableReason
        {
            get { return _notDuplicableReason; }
            set { _notDuplicableReason = value; }
        }

        public bool HasWorkaround
        {
            get { return _hasWorkaround; }
            set { _hasWorkaround = value; }
        }
        public string Workaround
        {
            get { return _workaround; }
            set { _workaround = value; }
        }

        public string WorkaroundNotAcceptableReason
        {
            get { return _WorkaroundNotAcceptableReason; }
            set { _WorkaroundNotAcceptableReason = value; }
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

        public string ThirdPartyModsDesc
        {
            get { return _3rdPartyModsDesc; }
            set { _3rdPartyModsDesc = value; }
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
            string strDefectSummary, 
            string strMajorVersion,
            string strMinorVersion, 
            string strPriority,
            string strCriticalHighReason,
            string strDefectStepsToDupe, 
            string strAdditionalInfo,
            string strDefectExpectedResults,
            string strCustomerExpectations,
            string strDefectCustomerCompanyName, 
            string strDefectPartnerCompanyName,
            string strDefectDbType, 
            string strDefectDbVersion,
            string strDefectReasonForCriticalOrHigh,
            string strDefectTypeOfRequest,
            string strDefectFrequency,
            bool blnDefectCanDuplicate,
            string strNotDuplicableReason,
            bool blnDefectIsWorkaroundAcceptable,
            string strWorkaroundNotAcceptableReason,
            bool blnHasWorkaround,
            string strDefectWorkaround,
            string strDefectLocationOfResource,
            bool blnDefectPreventsKeyFunction,
            bool blnNo3rdPartyMods,
            string str3rdPartyModsDesc,
            bool blnDefectCanReproduceInUnmodifiedCode,
            bool blnDefectNoWorkaroundOrWorkaroundIsNotAcceptable,
            bool blnDefectIsEnhancementRequest, 
            double dblDefectCaseNumber)
            
        {
            
            this.Summary = strDefectSummary;
            this.MajorVersion = strMajorVersion;
            this.MinorVersion= strMinorVersion;
            this.Priority = strPriority;
            this.ReasonForCriticalOrHigh = strCriticalHighReason;
            this.StepsToDuplicate = strDefectStepsToDupe;
            this.AdditionalInfo = strAdditionalInfo;
            this.ExpectedResults = strDefectExpectedResults;
            this.CustomerExpectations = strCustomerExpectations;
            this.CustomerCompanyName = strDefectCustomerCompanyName;
            this.PartnerCompanyName = strDefectPartnerCompanyName;
            this.DbType = strDefectDbType;
            this.DbVersion = strDefectDbVersion;
            this.ReasonForCriticalOrHigh = strDefectReasonForCriticalOrHigh;
            this.TypeOfRequest = strDefectTypeOfRequest;
            this.Frequency = strDefectFrequency;
            this.CanDuplicate = blnDefectCanDuplicate;
            this.NotDuplicableReason = strNotDuplicableReason;
            this.IsWorkaroundAcceptable = blnDefectIsWorkaroundAcceptable;
            this.WorkaroundNotAcceptableReason = strWorkaroundNotAcceptableReason;
            this.HasWorkaround = blnHasWorkaround;
            this.Workaround = strDefectWorkaround;
            this.LocationOfResource = strDefectLocationOfResource;
            this.PreventsKeyFunction = blnDefectPreventsKeyFunction;
            this.No3rdPartyMods = blnNo3rdPartyMods;
            this.ThirdPartyModsDesc = str3rdPartyModsDesc;
            this.CanReproduceInUnmodifiedCode = blnDefectCanReproduceInUnmodifiedCode;
            this.NoWorkaroundOrWorkaroundIsUnacceptable = blnDefectNoWorkaroundOrWorkaroundIsNotAcceptable;
            this.IsEnhancementRequest = blnDefectIsEnhancementRequest;
            this.CaseNumber = dblDefectCaseNumber;

            AppendLine("Summary For Case #:" + this.CaseNumber.ToString() + " ", this.Summary);
            AppendLine("Major Version: ", this.MajorVersion);
            AppendLine("Minor Version: ", this.MinorVersion);
            AppendLine("Priority: ", this.Priority);
            AppendLine("Reason For Critical Or High:", this.ReasonForCriticalOrHigh);
            AppendLine("Steps to Duplicate:", this.StepsToDuplicate);
            AppendLine("Additional Info:", this.AdditionalInfo);
            AppendLine("Expected Results:", this.ExpectedResults);
            AppendLine("Customer Expectations: ", this.CustomerExpectations);
            AppendLine("Customer Company Name:", this.CustomerCompanyName);
            AppendLine("Partner Company Name:", this.PartnerCompanyName);
            AppendLine("Database Type:", this.DbType);
            AppendLine("Database Version", this.DbVersion);
            AppendLine("Type of Request", this.TypeOfRequest);
            AppendLine("Frequency: ", this.Frequency);
            AppendLine("Can duplicate?:", (this.CanDuplicate) ? constants.kYes : constants.kNo);

            if (this.CanDuplicate == false)
            {
                AppendLine("Not Duplicable Reason", this.NotDuplicableReason);
            }

            AppendLine("Has Workaround:", (this.HasWorkaround) ? constants.kYes : constants.kNo);
            AppendLine("Workaround: ", this.Workaround);
            AppendLine("Is Workaround Acceptable?:", (this.IsWorkaroundAcceptable) ? constants.kYes : constants.kNo);

            if (!string.IsNullOrEmpty(this.WorkaroundNotAcceptableReason))
            {
                AppendLine("Workaround Not Acceptable Reason:", this.WorkaroundNotAcceptableReason);
            }
            else
            {
                AppendLine("Workaround Not Acceptable Reason:", constants.kNotApplicable);
            }

            AppendLine("Location of Resource:", this.LocationOfResource);
            AppendLine("Priority Checklist", "__________________________________");
            AppendLine("Prevents Key Function:", (this.PreventsKeyFunction) ? constants.kYes : constants.kNo);
            AppendLine("Third Party Modifications In This Area?:", (this.No3rdPartyMods) ? constants.kYes : constants.kNo);

            if (!string.IsNullOrEmpty(this.ThirdPartyModsDesc))
            {
                AppendLine("Third Party Mods Description:", this.ThirdPartyModsDesc);
            }
            else
            {
                AppendLine("Third Party mods Desc:", constants.kNotApplicable);
            }
            AppendLine("Can Reproduce In Unmodified Code?:", (this.CanReproduceInUnmodifiedCode) ? constants.kYes : constants.kNo);
            AppendLine("No Workaround or Workaround is Not Acceptable?:", (this.NoWorkaroundOrWorkaroundIsUnacceptable) ? constants.kYes : constants.kNo);
            AppendLine("Is Enhancement Request?:", (this.IsEnhancementRequest) ? constants.kYes : constants.kNo);

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