using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TicketDAL;
using TicketModels;

namespace TicketBLL
{
    public class ShowManager
    {
        //按照ID和日期查询场次
        public static IList<Shows> GetShowsBySql(int id, string date)
        {
            return ShowService.GetShowsBySql(id, date);
        }
        //按照ID和时间删除场次
        public static int RemoveShowsByIdByDate(int id, string date, string time)
        {
            return ShowService.RemoveShowsByIdByDate(id, date, time);
        }
        //添加场次[排场]
        public static int AddShow(int id, string date, string time, string hall)
        {
            return ShowService.AddShow(id, date, time, hall);
        }
        //按照日期查询场次
        public static IList<Shows> GetShowsByDate(int id, string date)
        {
            return ShowService.GetShowsBySql(id, date);
        }
    }
}
