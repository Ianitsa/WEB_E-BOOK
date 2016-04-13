using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace WebApplication1
{
    public partial class For_as : Inherited
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            
                if (MailFrom.Text !="" && MailTo.Text!="" && Subject.Text!="" && Body.Text !="")
                {
                    SmtpClient MailClient = new SmtpClient("localhost");
                    MailMessage Email =new MailMessage();
                    try{
                    Email.From = new MailAddress(MailFrom.Text);
                    Email.To.Add(MailTo.Text);
                    Email.Subject = Subject.Text;
                    Email.Body = Body.Text;
                    Email.IsBodyHtml = true;
                    MailClient.Send(Email);
                    MailMsg.Text = "Email sent";
                    }catch(Exception )
                    { MailMsg.Text = "Error in sending email!";}
                    MailFrom.Text = "";
                    MailTo.Text = "";
                    Subject.Text = "";
                    Body.Text = "";
                }
        }
    }
}