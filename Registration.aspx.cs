using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    private static string cs = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void ExistingYes_Click(object sender, EventArgs e)
    {
        Label1.Text = "Please Enter your customer ID";
        TextBox1.Visible = true;
    }

    protected void NewCustomer_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        TextBox1.Text = "";
        TextBox1.Visible = false;
    }

    protected void Apply_Click(object sender, EventArgs e)
    {
        //checkuser();
        //if (count > 0)
        //    Label2.Text = "User already exist, Use another username";
        //else
        //{
        //    createuser();
        //    TextBox1.Text = "";
        //    TextBox2.Text = "";
        //    TextBox3.Text = "";
        //    TextBox4.Text = "";
        //}

        try
        {
            createuser();
            //Label2.Text = "";
        }
        catch
        {
            Label2.Text = "Error Creating User";
        }

        try
        {
            sendmail();
            Label3.Text = "You will receive an email with temp username and password";
            
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
        }
        catch
        {
            Label3.Text = "ERROR IN SENDING MAIL";
        }
    }

    public void sendmail()
    {
        MailMessage msg = new MailMessage();
        msg.From = new MailAddress("accountmanagement@dcnt.com");  //from the banks email
        msg.To.Add(TextBox7.Text);  //email of new user
        msg.Subject = "Welcome to DCNT Bank";
        //body needs changing
        msg.Body = 
            "<b>Welcome " + TextBox3.Text.ToString() +
                    "<br/><br/>Your New Login Id is: " + TextBox7.Text +
                    "<br>Your Password is: </br>" + TextBox4.Text.ToLower() +"1234"+
                    "<br>Please change your login information</br>" ;
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

    private void createuser()
    {
        using (SqlConnection con = new SqlConnection(cs))
        {
            try
            {
                SqlCommand cmd = new SqlCommand("insert into Customer(Fname,Lname,DOB,Mobile,Email,Address,Uname,Pass) values(@fn,@ln,@dob,@mob,@mail,@add,@user,@pw)", con);

                //,Lname,DOB,Mobile,Email,Address,Uname,Pass
                //,l_name,dob,mob,mail,add,user,pw
                //these values can be used anywhere within this page,and will refer to the same thing.
                cmd.Parameters.AddWithValue("@fn", TextBox3.Text); //will convert uname to lower case because it is case sensitive otherwise
                //.ToLower()

                cmd.Parameters.AddWithValue("@ln", TextBox4.Text);
                cmd.Parameters.AddWithValue("@dob", TextBox5.Text);
                cmd.Parameters.AddWithValue("@mob", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@mail", TextBox7.Text);
                cmd.Parameters.AddWithValue("@add", TextBox8.Text);


                //cmd.Parameters.AddWithValue("@p", TextBox3.Text.Trim());
                //trim will remove the blank spaces


                cmd.Parameters.AddWithValue("@user", TextBox7.Text);
                cmd.Parameters.AddWithValue("@pw", TextBox4.Text.ToLower() + "1234");


                //cmd.Parameters.AddWithValue("pw", TextBox4.Text);
                con.Open();
                cmd.ExecuteNonQuery();
                Label2.Text = "User Created Successfully ";

            //    try
            //    {
            //        cmd = new SqlCommand("Select Cid from Customer where Uname=@user", con);
            //        cmd.Parameters.AddWithValue("@user", TextBox7.Text);
            //        con.Open();
            //        int cid=(int)cmd.ExecuteScalar();

                //        cmd = new SqlCommand("insert into Customer(Accnum) where Uname=@user values(@cid)", con);
                //        cmd.Parameters.AddWithValue("@user", TextBox7.Text);
                //        cmd.Parameters.AddWithValue("@cid", cid);
                //        con.Open();
                //        cmd.ExecuteNonQuery();
                //    }
                //    catch
                //    {
                //        Label2.Text = "issue updating accnum";
                //    }
                //    //<a href='Login.aspx'>Click to Login</ a >
            }
            catch
            {
                Label2.Text = "User not registered";
            }
        }
    }

    //Function to check user available
    //int count;
    //private void checkuser()
    //{
    //    using (SqlConnection con = new SqlConnection(cs))
    //    {
    //        try
    //        {
    //            con.Open();
    //            SqlCommand cmd = new SqlCommand("Select count(*) from tbl_user where uname=@u", con);   //sql is case sensitive
    //            cmd.Parameters.AddWithValue("@u", TextBox1.Text.ToLower());
    //            count = Convert.ToInt32(cmd.ExecuteScalar());   //gettig the count and then convert to int32 specific type
    //        }
    //        catch
    //        {
    //            Label2.Text = "User not registered";
    //        }
    //    }
    //}

}