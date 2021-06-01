using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TicketDAL;
using TicketModels;

namespace TicketBLL
{
    public class OrderManager
    {
        //添加订单
        public static int AddOrder(string user, string orderid, int movieid, DateTime date, string time, string hall, int amount, int status)
        {
            return OrderService.AddOrder(user, orderid, movieid, date, time, hall, amount, status);
        }
        //根据SQL查询订单信息
        public static Orders GetOrdersBySqlReturnReader(string key, string word)
        {
            return OrderService.GetOrdersBySqlReturnReader(key, word);
        }
        //根据SQL查询订单信息
        public static IList<Orders> GetOrdersBySqlReturnIList(string key, string word)
        {
            return OrderService.GetOrdersBySqlReturnIList(key, word);
        }
        //获取所有订单信息
        public static IList<Orders> GetOrders()
        {
            return OrderService.GetOrders();
        }
        //删除订单信息
        public static void DeleteOrder(string OrderId)
        {
            OrderService.DeleteOrder(OrderId);
        }
    }
}
