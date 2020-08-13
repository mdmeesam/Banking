using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    public static string cs = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;    //constr is connection string
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Authenticateuser(TextBox1.Text, TextBox2.Text))
        {
            //Label1.Text = TextBox1.Text;
            //Session("username") = TextBox1.Text;
            Session["user"] = TextBox1.Text.ToString();
            //Button1.PostBackUrl = "Account.aspx";
            
            Response.Redirect("Account.aspx");
        }
        //FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked)
        else
            Label1.Text = "Invalid username or password";
    }

    private bool Authenticateuser(String username, String pass)
    {
        using (SqlConnection con = new SqlConnection(cs))
        {
            SqlCommand cmd = new SqlCommand("Select count(*) from Customer where Uname=@u and Pass=@pw", con);
            cmd.Parameters.AddWithValue("@u", TextBox1.Text.ToLower());
            cmd.Parameters.AddWithValue("@pw", TextBox2.Text);
            con.Open();
            int Returncode = (int)cmd.ExecuteScalar();
            return Returncode == 1;
        }
    }

}