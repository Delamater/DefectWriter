using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.IO;
using DocumentFormat.OpenXml;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Wordprocessing;

namespace DefectWriter
{
    public class OfficeMgr
    {
        public ParagraphProperties Heading1Type
        {
            get { return new ParagraphProperties(new ParagraphStyleId() { Val = "Heading1" }); }
        }
        public void CreateWordProcessingDocumentWithStyle(string filepath)
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

    }
}