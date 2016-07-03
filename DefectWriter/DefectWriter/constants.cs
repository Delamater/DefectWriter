using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DefectWriter
{
    public static class constants
    {
        public const string kNo = "No";
        public const string kYes = "Yes";
        public const string kNotApplicable = "N/A";

        //Word Document temporary storage location
        public const string kFileSaveLocation = @"c:\temp\";

        public enum TemplateType { GeneralTroubleshooting };
        
    }
}