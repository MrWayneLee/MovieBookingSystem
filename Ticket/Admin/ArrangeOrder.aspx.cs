using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TicketBLL;
using TicketModels;

public partial class Admin_ArrangeOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMessage.Visible = false;
        InitAll();
    }
    protected void btnQuery_Click(object sender, EventArgs e)
    {
        string key = ddlKey.SelectedValue.ToString();
        string word = tbWord.Text.Trim();
        lblMessage.Visible = false;
        if (word == "")
        {
            lblMessage.Visible = true;
            lblMessage.Text = "请键入关键词";
            return;
        }
        Orders order = OrderManager.GetOrdersBySqlReturnReader(key, word);
        Films film = FilmManager.GetFilmById(order.MovieId);
        DataBind(key, word);
    }
    public void DataBind(string key, string word)
    {
        PagedDataSource pdsOrders = new PagedDataSource();
        pdsOrders.DataSource = OrderManager.GetOrdersBySqlReturnIList(key, word);
        dlResult.DataSource = pdsOrders;
        dlResult.DataBind();
    }
    public void InitAll()
    {
        PagedDataSource pdsOrders = new PagedDataSource();
        pdsOrders.DataSource = OrderManager.GetOrders();
        dlResult.DataSource = pdsOrders;
        dlResult.DataBind();
    }
    public string GetCut(string s)
    {
        return s.Substring(0, 10);
    }
    public string GetTitle(string movieId)
    {
        Films film = FilmManager.GetFilmById(Convert.ToInt32(movieId));
        return film.MovieTitle;
    }
    public string GetPaymentStatus(string paymentStatus)
    {
        if (paymentStatus == "1")
        {
            return "已支付";
        }
        else if (paymentStatus == "0")
        {
            return "未支付";
        }
        else
        {
            return null;
        }
    }
    protected void btnRemove_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        string orderId = btn.CommandArgument.ToString();
        OrderManager.DeleteOrder(orderId);
    }
}