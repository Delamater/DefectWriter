using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.IO;
using System.Web.UI.WebControls;
using DocumentFormat.OpenXml;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;

namespace DefectWriter
{
    public partial class TestWordDoc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            CreateWordProcessingDocument(@"c:\temp\Doc03.docx");
        }

        public static void CreateWordProcessingDocument(string filepath)
        {
            using (WordprocessingDocument wordDocument = 
                WordprocessingDocument.Create(filepath, WordprocessingDocumentType.Document))
            {
                MainDocumentPart mainPart = wordDocument.AddMainDocumentPart();

                mainPart.Document = new Document();
                Body body = mainPart.Document.AppendChild(new Body());
                Paragraph para = body.AppendChild(new Paragraph());
                RunProperties rPr = new RunProperties(new RunFonts() { Ascii = "Arial Bold" });

                
                Run run = para.AppendChild(new Run());
                run.PrependChild<RunProperties>(rPr);
                run.AppendChild(new Text("Create text in body - CreateWordProcessingDocument"));              
            }
        }

        public static void CreateWordProcessingDocumentWithStyle(string filepath)
        {
            using (WordprocessingDocument wordDocument = 
                WordprocessingDocument.Create(filepath, WordprocessingDocumentType.Document))
            {
                MainDocumentPart mainPart = wordDocument.AddMainDocumentPart();

                mainPart.Document = new Document();
                Body body = mainPart.Document.AppendChild(new Body());
                Paragraph para = body.AppendChild(new Paragraph());
                para.ParagraphProperties = new ParagraphProperties(new ParagraphStyleId() { Val = "Heading1" });
                RunProperties rPr = new RunProperties(new RunFonts() { Ascii = "Arial Bold" });

                
                Run run = para.AppendChild(new Run());
                run.PrependChild<RunProperties>(rPr);
                run.AppendChild(new Text("Create text in body - CreateWordProcessingDocument"));              
            }
        }

        protected void btnModify_Click(object sender, EventArgs e)
        {
            string strDoc = @"c:\temp\Doc02.docx";
            string txt = "Append text in body - OpenAndAddToWordprocessingStream";
            Stream stream = File.Open(strDoc, FileMode.Open);
            OpenAndAddToWordProcessingStream(stream, txt);
            stream.Close();
        }

        public static void OpenAndAddToWordProcessingStream(Stream stream, string txt)
        {
            WordprocessingDocument wordprocessingDocument = WordprocessingDocument.Open(stream, true);

            Body body = wordprocessingDocument.MainDocumentPart.Document.Body;

            Paragraph para = body.AppendChild(new Paragraph());
            Run run = para.AppendChild(new Run());
            run.AppendChild(new Text(txt));

            wordprocessingDocument.Close();
        }

        protected void btnCreateWithStyle_Click(object sender, EventArgs e)
        {
            CreateWordProcessingDocumentWithStyle(@"c:\temp\DocWithStyle01.docx");
        }
    }
}