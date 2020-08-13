using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Loggedin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text=System.DateTime.Now.ToString();
    }

    //protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    //{
    //    Response.Redirect("Account.aspx");
    //    //can also jus tuse nav in menu


    //    //if (Menu1.SelectedValue == "Account")
    //    //    Menu2.Visible = true;
        
    //    //else
    //    //    Menu2.Visible = false;
    //}

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
}
