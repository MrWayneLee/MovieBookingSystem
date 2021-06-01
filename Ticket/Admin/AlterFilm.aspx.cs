using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TicketBLL;
using TicketModels;

public partial class Admin_AlterFilm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Films film = FilmManager.GetFilmById(Convert.ToInt32(Request.QueryString["movieId"]));
        lblTitle.Text = film.MovieTitle;
    }
    protected void btnAlter_Click(object sender, EventArgs e)
    {
        //获取所有控件的值
        int t0 = Convert.ToInt32(Request.QueryString["movieId"]);
        string t1 = tbTitle.Text.Trim();
        string t2 = tbDirector.Text.Trim();
        string t3 = tbActor.Text.Trim();
        string t4 = tbType.Text.Trim();
        string t5 = tbRegion.Text.Trim();
        string t6 = tbLanguage.Text.Trim();
        int t7 = Convert.ToInt32(tbLength.Text.Trim());
        string t8 = tbDescription.Text.Trim();
        decimal t9 = Convert.ToDecimal(tbPrice.Text.Trim());
        //修改
        int i = FilmManager.ModifyFilm(t0, t1, t2, t3, t4, t5, t6, t7, t8, t9);
        //lblTitle.Text = i.ToString();
        //FilmManager.ModifyFilm(Convert.ToInt32(Request.QueryString["movieId"]), tbTitle.Text.ToString(), tbDirector.Text.ToString(), tbActor.Text.ToString(), tbType.Text.ToString(), tbRegion.Text.ToString(), tbLanguage.Text.ToString(), Convert.ToInt32(tbLength.Text.ToString()), tbDescription.Text.ToString(), Convert.ToDecimal(tbPrice.text.ToString()));
    }
    protected void btnInit_Click(object sender, EventArgs e)
    {
        initDescription(Convert.ToInt32(Request.QueryString["movieId"]));
    }
    private void initDescription(int movieId)
    {
        Films film = FilmManager.GetFilmById(movieId);
        lblTitle.Text = film.MovieTitle;
        tbTitle.Text = film.MovieTitle;
        tbDirector.Text = film.MovieDirector;
        tbActor.Text = film.MovieActor;
        tbType.Text = film.MovieType;
        tbRegion.Text = film.MovieRegion;
        tbLanguage.Text = film.MovieLanguage;
        tbLength.Text = film.MovieLength.ToString();
        tbDescription.Text = film.MovieDescription;
        tbPrice.Text = film.Price.ToString();
    }
}