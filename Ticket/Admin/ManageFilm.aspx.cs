using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TicketBLL;

public partial class Admin_ManageFilm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataBind();
        }
    }
    private void DataBind()
    {
        PagedDataSource pdsFilms = new PagedDataSource();
        pdsFilms.DataSource = FilmManager.GetAllFilm();
        dlList.DataSource = pdsFilms;
        dlList.DataBind();
    }
    protected void btnRemove_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        int id = Convert.ToInt32(btn.CommandArgument.ToString());
        //btn.Text = id;
        FilmManager.DeleteFilm(id);
        DataBind();
    }
}