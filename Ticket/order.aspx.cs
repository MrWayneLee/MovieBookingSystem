using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TicketBLL;
using TicketModels;

public partial class order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        initOrder();
    }
    public void initOrder()
    {
        Films film = FilmManager.GetFilmById(Convert.ToInt32(Session["MovieId"]));
        lblTitle.Text = film.MovieTitle;
        lblDate.Text = Session["MovieDate"].ToString();
        lblTime.Text = Session["MovieTime"].ToString();
        lblHall.Text = Session["Hall"].ToString();
        lblAmount.Text = Session["Amount"].ToString();
        lblUser.Text = Session["Username"].ToString();
        lblOrderId.Text = GenerateOrderId();
    }
    protected void btnPay_Click(object sender, EventArgs e)
    {
        int status = 1;
        OrderManager.AddOrder(Session["Username"].ToString(), GenerateOrderId(), Convert.ToInt32(Session["MovieId"]), DateTime.Parse(Session["MovieDate"].ToString()), Session["MovieTime"].ToString(), Session["Hall"].ToString(), Convert.ToInt32(Session["Amount"].ToString()), status);
        Session.Abandon();
        Response.Redirect("index.aspx");
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        int status = 0;
        OrderManager.AddOrder(Session["Username"].ToString(), GenerateOrderId(), Convert.ToInt32(Session["MovieId"]), DateTime.Parse(Session["MovieDate"].ToString()), Session["MovieTime"].ToString(), Session["Hall"].ToString(), Convert.ToInt32(Session["Amount"].ToString()), status);
        Session.Abandon();
        Response.Redirect("index.aspx");
    }
    public string ToDateLegth(string s)
    {
        if (s.Length == 9)
        {
            return s.Substring(0, 4) + s.Substring(5, 1) + s.Substring(7, 2);
        }
        else if (s.Length == 10)
        {
            return s.Substring(0, 4) + s.Substring(5, 2) + s.Substring(8, 2);
        }
        return s;
    }
    public string GenerateOrderId()
    {
        return Convert.ToInt32(Session["MovieId"]) + ToDateLegth(Session["MovieDate"].ToString()) + Session["MovieTime"].ToString() + DateTime.Now.Hour + DateTime.Now.Minute + DateTime.Now.Second;
    }
}