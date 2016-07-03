using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using System.Collections;
using System.Collections.Specialized;
using DocumentFormat.OpenXml;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;

namespace DefectWriter
{
    namespace Troubleshooting
    {
        abstract public class TemplateModel
        {

            public class HeadingTypes
            {
                public string Heading1  { get { return "Heading1"; } }
                public string Heading2  { get { return "Heading2"; } }
                public string Heading3  { get { return "Heading3"; } }
                public string Normal    { get { return "Normal"; } }
                public string Title     { get { return "Title"; } }

            }     

            public class DocumentText
            {
                public string HeadingType      { get; set; }
                public string Text             { get; set; }
            }

            #region "Variables"

            private string _sendToEmaillAddress = string.Empty;

            #endregion

            #region "Properties"
            public string SendToEmailAddress
            {
                get
                {
                    return _sendToEmaillAddress;
                }
                set 
                {
                    //Validate the eamill address is correct. If there is a failure, it 
                    try{
                        var addr = new System.Net.Mail.MailAddress(value);
                    }
                    catch (Exception ex)
                    {
                        throw ex;
                    }
                    
                    _sendToEmaillAddress = value;
                }

            }
            
            
            #endregion

            //Make reference to HeadingTypes
            HeadingTypes ht = new HeadingTypes();

            #region "Variables And Constants"

            private string _attachmentName = "";

            #endregion

            #region "Properties"

            public string AttachmentName
            {
                get { return _attachmentName; }
                set { _attachmentName = value; }
            }

            #endregion



            /// <summary>
            /// Create and email the documenmt once it is has been successfully created. 
            /// The properties for the file to be created are built at the inherited class level, not in this template model.
            /// </summary>
            /// <param name="templateType">From the constants, this determines the type of template we are going to create</param>
            /// <param name="SendTo">Email Address to send to. No validation is performed on the file name</param>
            public void CreateAndEmailDoc(constants.TemplateType templateType, List<DocumentText> DocTexts , string SendTo)
            {
                this.AttachmentName = GetUniqueFileName(templateType);

                //Create temporary file 
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                sb.Append(@"c:\temp\");
                sb.Append(GetUniqueFileName(templateType));

                using (FileStream fs = new FileStream(sb.ToString(), FileMode.Create, FileAccess.ReadWrite))
                {
                    //Create Document
                    using (WordprocessingDocument wordDocument = WordprocessingDocument.Create(fs, WordprocessingDocumentType.Document, true))
                    {

                        //Set up main document
                        MainDocumentPart mainPart = wordDocument.AddMainDocumentPart();
                        mainPart.Document = new Document();
                        Body body = mainPart.Document.AppendChild(new Body());

                        //Set up Some Colors
                        Color fontColorBlue = new Color() { Val = "Blue", ThemeColor = ThemeColorValues.Accent1, ThemeShade = "Darker 25%" };

                        //foreach (DictionaryEntry entry in TextAndStyle)
                        foreach(DocumentText textItem in DocTexts)
                        {
                            Paragraph para = body.AppendChild(new Paragraph());
                            para.ParagraphProperties = new ParagraphProperties(new ParagraphStyleId() { Val = textItem.HeadingType });

                            RunProperties runProp = new RunProperties();
                            RunFonts runFont = new RunFonts();
                            FontSize size = new FontSize();

                            //Half point fonts are used, so Val needs to be doubled
                            //if (entry.Key.ToString() == ht.Heading1)
                            if (textItem.HeadingType == ht.Heading1)
                            {
                                runFont.Ascii = "Calibri Light (Headings)";
                                size.Val = new StringValue("32");
                                runProp.Append(fontColorBlue);

                                
                            }
                            //else if ( entry.Key.ToString() == ht.Heading2 )
                            else if ( textItem.HeadingType == ht.Heading2 )
                            {
                                runFont.Ascii = "Calibri Light (Headings)";
                                size.Val = new StringValue("26");
                                runProp.Append(fontColorBlue);
                            }
                            //else if ( entry.Key.ToString() == ht.Heading3 )
                            else if ( textItem.HeadingType == ht.Heading3 )
                            {
                                runFont.Ascii = "Calibri Light (Headings)";
                                size.Val = new StringValue("24");
                                runProp.Append(fontColorBlue);
                            }
                            //else if ( entry.Key.ToString() == ht.Normal )
                            else if ( textItem.HeadingType == ht.Normal )
                            {
                                runFont.Ascii = "Calibri (Body)";
                                size.Val = new StringValue("22");
                            }
                            //else if ( entry.Key.ToString() == ht.Title )
                            else if ( textItem.HeadingType == ht.Title )
                            {
                                runFont.Ascii = "Calibri Light (Headings)";
                                size.Val = new StringValue("56");
                            }

                            runProp.Append(runFont);
                            runProp.Append(size);
                            
                            Run run = para.AppendChild(new Run());
                            run.PrependChild<RunProperties>(runProp);
                            //run.AppendChild(new Text(entry.Value.ToString()));
                            run.AppendChild(new Text(textItem.Text));
                        }

                    }
                }

                EmailDoc(sb.ToString(), this.AttachmentName, "bob.delamater@sage.com", constants.TemplateType.GeneralTroubleshooting);
                File.Delete(sb.ToString());
            }


            /// <summary>
            /// Make a unique file name at a designated file location, for a given template type
            /// </summary>
            /// <param name="templateType">This could be any type of troubleshooting template that we have on file</param>
            /// <returns>String containing a unqieu file name, at the millisecond level</returns>
            public string GetUniqueFileName(constants.TemplateType templateType)
            {
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                //sb.Append(constants.kFileSaveLocation);
                sb.Append(templateType.ToString());
                sb.Append("-");
                sb.Append(DateTime.Now.ToString("yyyy-MM-dd-HH-mm-ss-fff"));
                sb.Append(".docx");


                return sb.ToString();
            }


            /// <summary>
            /// Email the document. This should called after the document is created 
            /// as a valid filename should exist at this point and it will be attached to the email once sent. 
            /// </summary>
            /// <param name="AttachmentName>File name of the attachment to be sent</param>
            /// <param name="emailAddress">Email Address to send to. No validation is performed on the file name</param>
            /// <param name="templateType">Template refers to the constants of the tempalte type, such as a word document</param>
            private void EmailDoc(MemoryStream mem, string AttachmentName, string emailAddress, constants.TemplateType templateType)
            {

                SMTPMgr smtpMgr = new SMTPMgr();
                smtpMgr.SendEmail(emailAddress, templateType.ToString(), "Please see the troubleshooting template file attached", "", mem, AttachmentName);
            }

            private void EmailDoc(string fileFullPath, string AttachmentName, string emailAddress, constants.TemplateType templateType)
            {
                SMTPMgr smtpMgr = new SMTPMgr();

                smtpMgr.SendEmail(
                    emailAddress,
                    templateType.ToString(),
                    "Please see the troubleshooting temnplate file attached",
                    "",
                    fileFullPath);
            }
        }
    }    
}