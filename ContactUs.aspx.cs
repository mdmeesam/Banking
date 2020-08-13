using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            sendmail();
            Label2.Text = "Mail sent successfully";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }
        catch
        {
            Label2.Text = "ERROR IN SENDING MAIL";
        }
    }

    public void sendmail()
    {
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress(TextBox2.Text);
        msg.To.Add("test49262@gmail.com");
        msg.Subject = TextBox4.Text;
        msg.Body = "<b>Name:   </b>" + TextBox1.Text.ToString() +
                 "<br><b>Contact No.: </b>" + TextBox3.Text +
                  "<br><b>Message: </b></br>" + TextBox5.Text +
                "<br><b>Email: </b></br>" + TextBox2.Text;
        msg.IsBodyHtml = true;
        SmtpClient smtp = new SmtpClient();
        smtp.Host = "smtp.gmail.com";
        smtp.Port = 587;
        smtp.EnableSsl = true;
        smtp.UseDefaultCredentials = false;
        smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
        smtp.Credentials = new System.Net.NetworkCredential("test49262@gmail.com", "Te$t1234");
        smtp.Send(msg);
    }
    //test49262@gmail.com
}