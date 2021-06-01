using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TicketBLL;

public partial class Admin_AddFilm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string t1 = tbTitle.Text.Trim();
        string t2 = tbDirector.Text.Trim();
        string t3 = tbActor.Text.Trim();
        string t4 = tbType.Text.Trim();
        string t5 = tbRegion.Text.Trim();
        string t6 = tbLanguage.Text.Trim();
        int t7 = Convert.ToInt32(tbLength.Text.Trim());
        string t8 = tbDescription.Text.Trim();
        decimal t9 = Convert.ToDecimal(tbPrice.Text.Trim());
        FilmManager.AddFilm(t1,t2,t3,t4,t5,t6,t7,t8,t9);
        int movieId= FilmManager.GetFilmIdByTitle(tbTitle.Text.Trim());
        FileUpload fulBook = this.FindControl("fileImg") as FileUpload;
        string FileName = fulBook.FileName;
        if (FileName.Trim().Length != 0)
        {
            string strPath = Server.MapPath("../UI-Extend/images/" + movieId + ".jpg");
            fulBook.PostedFile.SaveAs(strPath);
        }
        Response.Redirect("ManageFilm.aspx");
    }
}