using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net.Mime;


namespace DefectWriter
{
    public class SMTPMgr
    {

        /// <summary>
        /// Send an email to a receiver
        /// </summary>
        /// <param name="sendTo">Valid Send To email address. No validation of email address is performed</param>
        /// <param name="subject">Email Subject</param>
        /// <param name="body">Email Body</param>
        /// <param name="cc">Carbon Copy on email. No validation of email address is performed.</param>
        public void SendEmail(string sendTo, string subject, string body, string cc)
        {
            string mailServer = "relay.mailinternal.com";

            SmtpClient client = new SmtpClient(mailServer);
            MailAddress from = new MailAddress("X3support.na@sage.com");
            MailAddress to = new MailAddress(sendTo);
            MailMessage message = new MailMessage(from, to);
            message.Body = body;
            message.BodyEncoding = System.Text.Encoding.UTF8;
            message.Subject = subject;
            message.SubjectEncoding = System.Text.Encoding.UTF8;
            client.Send(message);
        }

        /// <summary>
        /// Sends an email to a receiver with a file attachment
        /// </summary>
        /// <param name="sendTo">Valid Send To email address. No validation of email address is performed</param>
        /// <param name="subject">Email Subject</param>
        /// <param name="body">Email Body</param>
        /// <param name="cc">Carbon Copy on email. No validation of email address is performed.</param>
        /// <param name="fullFilePathToAttach">A full path to the file. No validation is performed</param>
        public void SendEmail(string sendTo, string subject, string body, string cc, string fullFilePathToAttach)
        {
            //string mailServer = "relay.mailinternal.com";
            //SmtpClient client = new SmtpClient(mailServer);
            //MailAddress from = new MailAddress("X3support.na@sage.com");
            //MailAddress to = new MailAddress(sendTo);
            //MailMessage message = new MailMessage(from, to);
            //message.Body = body;
            //message.BodyEncoding = System.Text.Encoding.UTF8;
            //message.Subject = subject;
            //message.SubjectEncoding = System.Text.Encoding.UTF8;

            //Attachment data = new Attachment(fullFilePathToAttach, MediaTypeNames.Application.Octet);
	
            //message.Attachments.Add(data);
            //client.Send(message);


            using (var mail = new MailMessage("X3support.na@sage.com", sendTo))
            {
                string mailServer = "relay.mailinternal.com";
                SmtpClient client = new SmtpClient(mailServer);

                mail.Body = body;
                mail.BodyEncoding = System.Text.Encoding.UTF8;
                mail.Subject = subject;
                mail.SubjectEncoding = System.Text.Encoding.UTF8;

                Attachment data = new Attachment(fullFilePathToAttach, MediaTypeNames.Application.Octet);

                mail.Attachments.Add(data);
                client.Send(mail);

            }

        }


        /// <summary>
        /// Sends an email to a receiver with a file attachment
        /// </summary>
        /// <param name="sendTo">Valid Send To email address. No validation of email address is performed</param>
        /// <param name="subject">Email Subject</param>
        /// <param name="body">Email Body</param>
        /// <param name="cc">Carbon Copy on email. No validation of email address is performed.</param>
        /// <param name="mem">A memory stream file to attach</param>
        public void SendEmail(string sendTo, string subject, string body, string cc, System.IO.MemoryStream mem, string AttachmentName)
        {
            string mailServer = "relay.mailinternal.com";

            SmtpClient client = new SmtpClient(mailServer);
            MailAddress from = new MailAddress("X3support.na@sage.com");
            MailAddress to = new MailAddress(sendTo);
            MailMessage message = new MailMessage(from, to);
            message.Body = body;
            message.BodyEncoding = System.Text.Encoding.UTF8;
            message.Subject = subject;
            message.SubjectEncoding = System.Text.Encoding.UTF8;

            Attachment data = new Attachment(mem, MediaTypeNames.Application.Octet);
            data.Name = AttachmentName;

            message.Attachments.Add(data);
            client.Send(message);
        }
    }
}