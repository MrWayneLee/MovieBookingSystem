using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TicketBLL;
using TicketModels;

public partial class detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataBind(Convert.ToInt32(Request.QueryString["movieId"]));
            if (Request.QueryString["movieId"] != null)
            {
                initDescription(Convert.ToInt32(Request.QueryString["movieId"]));
            }
        }
    }
    private void initDescription(int movieId)
    {
        Films film = FilmManager.GetFilmById(movieId);
        imgFilm.Attributes.Add("src", "UI-Extend/images/" + movieId + ".jpg");
        lblTitle.Text = film.MovieTitle;
        lblDirector.Text = film.MovieDirector;
        lblActor.Text = film.MovieActor;
        lblType.Text = film.MovieType;
        lblRegion.Text = film.MovieRegion;
        lblLanguage.Text = film.MovieLanguage;
        lblLength.Text = film.MovieLength.ToString();
        lblDescription.Text = film.MovieDescription;
        lblPrice.Text = film.Price.ToString();
    }
    private void DataBind(int movieId)
    {
        PagedDataSource pdsShows = new PagedDataSource();
        pdsShows.DataSource = ShowManager.GetShowsBySql(movieId, DateTime.Now.ToShortDateString());
        dlShows.DataSource = pdsShows;
        dlShows.DataBind();
    }
    protected void btnPurchase_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        string date = btn.Attributes["date"].ToString().Substring(0,9);
        string time = btn.Attributes["time"].ToString();
        string hall = btn.Attributes["hall"].ToString();
        Session["MovieId"] = Request.QueryString["movieId"];
        Session["MovieDate"] = date;
        Session["MovieTime"] = time;
        Session["Hall"] = hall;
        Response.Write("<script>window.open('check.aspx','_blank')</script>");
        //Response.Redirect("check.aspx");
    }
    public string GetCut(string s)
    {
        return s.Substring(0, 9);
    }
    protected void btnQueryDate_Click(object sender, EventArgs e)
    {
        PagedDataSource pdsShows = new PagedDataSource();
        pdsShows.DataSource = ShowManager.GetShowsBySql(Convert.ToInt32(Request.QueryString["movieId"]), Calendar1.SelectedDate.ToShortDateString());
        dlShows.DataSource = pdsShows;
        dlShows.DataBind();
    }
    protected void btnQueryAll_Click(object sender, EventArgs e)
    {
        DataBind(Convert.ToInt32(Request.QueryString["movieId"]));
    }
}