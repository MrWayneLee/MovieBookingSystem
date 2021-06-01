using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TicketModels;

namespace TicketDAL
{
    public class OrderService
    {
        //添加订单
        public static int AddOrder(string user, string orderid, int movieid, DateTime date, string time, string hall, int amount, int status)
        {
            string sql = "INSERT INTO Orders VALUES('" + user + "','" + orderid + "'," + movieid + ",'" + date + "','" + time + "','" + hall + "'," + amount + "," + status + ")";
            int i = DBHelper.ExecuteCommand(sql);
            return i;
        }
        //根据SQL查询订单信息
        public static Orders GetOrdersBySqlReturnReader(string key,string word)
        {
            Orders orders = new Orders();
            string sql = "SELECT * FROM Orders WHERE " + key + "='" + word + "'";
            SqlDataReader reader = DBHelper.GetReader(sql);
            if (reader.Read())
            {
                Orders order = new Orders();
                order.Username = (string)reader["Username"];
                order.OrderId = (string)reader["OrderId"];
                order.MovieId = (int)reader["MovieId"];
                order.Date = (DateTime)reader["Date"];
                order.Time = (string)reader["Time"];
                order.Hall = (string)reader["Hall"];
                order.Amount = (int)reader["Amount"];
                order.PaymentStatus = (int)reader["PaymentStatus"];
                reader.Close();
                return order;
            }
            else
            {
                reader.Close();
                return null;
            }
        }
        //根据SQL查询订单信息
        public static IList<Orders> GetOrdersBySqlReturnIList(string key, string word)
        {
            IList<Orders> list = new List<Orders>();
            string sql = "SELECT * FROM Orders" + " WHERE " + key + "='" + word + "'";
            DataTable table = DBHelper.GetDataSet(sql);
            foreach (DataRow row in table.Rows)
            {
                Orders order = new Orders();
                order.Username = (string)row["Username"];
                order.OrderId = (string)row["OrderId"];
                order.MovieId = (int)row["MovieId"];
                order.Date = (DateTime)row["Date"];
                order.Time = (string)row["Time"];
                order.Hall = (string)row["Hall"];
                order.Amount = (int)row["Amount"];
                order.PaymentStatus = (int)row["PaymentStatus"];
                list.Add(order);
            }
            return list;
        }
        //获取所有订单信息
        public static IList<Orders> GetOrders()
        {
            IList<Orders> list = new List<Orders>();
            string sql = "SELECT * FROM Orders";
            DataTable table = DBHelper.GetDataSet(sql);
            foreach (DataRow row in table.Rows)
            {
                Orders order = new Orders();
                order.Username = (string)row["Username"];
                order.OrderId = (string)row["OrderId"];
                order.MovieId = (int)row["MovieId"];
                order.Date = (DateTime)row["Date"];
                order.Time = (string)row["Time"];
                order.Hall = (string)row["Hall"];
                order.Amount = (int)row["Amount"];
                order.PaymentStatus = (int)row["PaymentStatus"];
                list.Add(order);
            }
            return list;
        }
        //删除订单信息
        public static void DeleteOrder(string OrderId)
        {
            string sql = "DELETE FROM Orders WHERE OrderId= '" + OrderId + "'";
            DBHelper.ExecuteCommand(sql);
        }
    }
}
