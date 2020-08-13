using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


public partial class Account : System.Web.UI.Page
{
    private static string cs = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        //string txt;
        //txt = "this is name"+((TextBox)PreviousPage.FindControl("TextBox1")).Text;
        
        Name.Text = Session["user"].ToString();
        
        //txt = Name.Text;
        using (SqlConnection con = new SqlConnection(cs))
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select Bal from Customer where Uname=@txt)", con);
                cmd.Parameters.AddWithValue("@txt", Name.Text);
                con.Open();

                SqlDataReader reader = cmd.ExecuteReader();
                int balance=0;
                while(reader.Read())
                {
                    bal.Text = reader.GetString(0);
                }
                
                //bal.Text=cmd.CommandType.ToString();
                bal.Text = balance.ToString();
            }
            catch
            {
                accnum.Text = "1";
                bal.Text = "0.0";
            }
        }
    }

}