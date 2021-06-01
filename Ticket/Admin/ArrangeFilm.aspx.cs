using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TicketBLL;
using TicketModels;

public partial class Admin_ArrangeFilm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataBind();
            Films film=FilmManager.GetFilmById(Convert.ToInt32(Request.QueryString["movieId"]));
            lblTitle.Text = film.MovieTitle;
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        lblDate.Text = Calendar1.SelectedDate.ToShortDateString();
    }
    private void DataBind()
    {
        PagedDataSource pdsShows = new PagedDataSource();
        pdsShows.DataSource = ShowManager.GetShowsBySql(Convert.ToInt32(Request.QueryString["movieId"]), DateTime.Now.ToShortDateString());
        dlShows.DataSource = pdsShows;
        dlShows.DataBind();
    }
    public string GetCut(string s)
    {
        return s.Substring(0, 10);
    }
    protected void btnRemove_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        string date = btn.Attributes["date"].ToString().Substring(0, 10);
        string time = btn.Attributes["time"].ToString();
        int id = Convert.ToInt32(Request.QueryString["movieId"]);
        ShowManager.RemoveShowsByIdByDate(id, date, time);
        DataBind();
    }
    protected void btnShowAdd_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["movieId"]);
        string date = lblDate.Text.Trim().ToString();
        string time = tbTime.Text.Trim().ToString();
        string hall = tbHall.Text.Trim().ToString();
        ShowManager.AddShow(id, date, time, hall);
        DataBind();
    }
}