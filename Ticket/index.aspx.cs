using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TicketBLL;

public partial class index : System.Web.UI.Page
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
}