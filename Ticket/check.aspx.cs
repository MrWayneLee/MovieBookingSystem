using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TicketBLL;
using TicketModels;

public partial class check : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
                
    }
    protected void btnConfilm_Click(object sender, EventArgs e)
    {
        string user = tbUsername.Text.ToString().Trim();
        string pass = tbPassword.Text.ToString().Trim();
        if (user == "" || pass == "")
        {
            lblMassage.Text = "<b>用户名密码为空</b>";
            return;
        }
        if (UserManager.IsUserExist(user,pass))
        {
            Session["Username"] = user;
            this.back.Visible = false;
            this.back2.Visible = false;
            initCheck();
        }
        else
        {
            lblMassage.Text = "<b>用户名密码有误</b>";
        }
    }
    public void initCheck()
    {
        movieImg.Attributes.Add("src", "../UI-Extend/images/" + Session["MovieId"] + ".jpg");
        Films film = FilmManager.GetFilmById(Convert.ToInt32(Session["MovieId"]));
        lblTitle.Text = film.MovieTitle;
        lblDirector.Text = film.MovieDirector;
        lblActor.Text = film.MovieActor;
        lblType.Text = film.MovieType;
        lblLanguage.Text = film.MovieLanguage;
        lblLength.Text = film.MovieLength.ToString();
        lblPrice.Text = film.Price.ToString();
        lblDate.Text = Session["MovieDate"].ToString();
        lblTime.Text = Session["MovieTime"].ToString();
        lblHall.Text = Session["Hall"].ToString();
    }
    protected void btnCheck_Click(object sender, EventArgs e)
    {
        if (Amount.Value == "1" || Amount.Value == "2" || Amount.Value == "3" || Amount.Value == "4" || Amount.Value == "5")
        {
            Session["Amount"] = Amount.Value;
            Response.Redirect("order.aspx");
        }
        else
        {
            lblMessage2.Text = "数量有误";
        }
    }
}