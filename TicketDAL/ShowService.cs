using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TicketModels;

namespace TicketDAL
{
    public class ShowService
    {
        //添加场次[排场]
        public static int AddShow(int id, string date, string time, string hall)
        {
            string sql = "INSERT INTO Shows VALUES(" + id + ",'" + date + "','" + time + "','" + hall + "')";
            return DBHelper.ExecuteCommand(sql);
        }
        //按照ID查询场次
        public static IList<Shows> GetShowsBySql(int id, string date)
        {
            IList<Shows> list = new List<Shows>();
            string sql = "SELECT * FROM Shows WHERE MovieId = " + id + " and Date >= '" + date +"'";
            DataTable table = DBHelper.GetDataSet(sql);
            foreach (DataRow row in table.Rows)
            {
                Shows show = new Shows();
                show.MovieId = (int)row["MovieId"];
                show.Date = (DateTime)row["Date"];
                show.Time = (string)row["Time"];
                show.Hall = (string)row["Hall"];
                list.Add(show);
            }
            return list;
        }
        //按照ID和时间删除场次
        public static int RemoveShowsByIdByDate(int id, string date, string time)
        {
            string sql = "DELETE FROM Shows WHERE MovieId=" + id + " and Date='" + date + "' and Time='" + time + "'";
            return DBHelper.ExecuteCommand(sql);
        }
        //按照日期查询场次
        public static IList<Shows> GetShowsByDate(int id, string date)
        {
            IList<Shows> list = new List<Shows>();
            string sql = "SELECT * FROM Shows WHERE MovieId = " + id + " and Date='" + date + "'";
            DataTable table = DBHelper.GetDataSet(sql);
            foreach (DataRow row in table.Rows)
            {
                Shows show = new Shows();
                show.MovieId = (int)row["MovieId"];
                show.Date = (DateTime)row["Date"];
                show.Time = (string)row["Time"];
                show.Hall = (string)row["Hall"];
                list.Add(show);
            }
            return list;
        }
    }
}
