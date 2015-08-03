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
    }
}