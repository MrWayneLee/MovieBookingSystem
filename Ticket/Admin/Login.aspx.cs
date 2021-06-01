using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TicketBLL;

public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string user = tbUsername.Value.ToString().Trim();
        string pass = tbPassword.Value.ToString().Trim();
        if (user == "" || pass == "")
        {
            lblMassage.Text = "<b>用户名密码为空</b>";
            return;
        }
        if (AdminManager.IsUserExist(user, pass))
        {
            Response.Redirect("Main.aspx");
        }
        else
        {
            lblMassage.Text = "<b>用户名密码有误</b>";
        }
    }
}