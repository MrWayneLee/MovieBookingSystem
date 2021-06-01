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
    public class FilmService
    {
        //查询所有电影
        public static IList<Films> GetAllFilm()
        {
            IList<Films> list = new List<Films>();
            string sql = "SELECT * FROM Films";
            DataTable table = DBHelper.GetDataSet(sql);
            foreach (DataRow row in table.Rows)
            {
                Films film = new Films();
                film.MovieId = (int)row["MovieId"];
                film.MovieTitle = (string)row["MovieTitle"];
                film.MovieDirector = (string)row["MovieDirector"];
                film.MovieActor = (string)row["MovieActor"];
                film.MovieType = (string)row["MovieType"];
                film.MovieRegion = (string)row["MovieRegion"];
                film.MovieLanguage = (string)row["MovieLanguage"];
                film.MovieLength = (int)row["MovieLength"];
                film.MovieDescription = (string)row["MovieDescription"];
                film.Price = (decimal)row["Price"];
                list.Add(film);
            }
            return list;
        }
        //根据ID查询电影信息
        public static Films GetFilmById(int id)
        {
            Films film = new Films();
            string sql = "SELECT * FROM Films WHERE MovieId=" + id;
            SqlDataReader reader = DBHelper.GetReader(sql);
            if (reader.Read())
            {
                film.MovieId = (int)reader["MovieId"];
                film.MovieTitle = (string)reader["MovieTitle"];
                film.MovieDirector = (string)reader["MovieDirector"];
                film.MovieActor = (string)reader["MovieActor"];
                film.MovieType = (string)reader["MovieType"];
                film.MovieRegion = (string)reader["MovieRegion"];
                film.MovieLanguage = (string)reader["MovieLanguage"];
                film.MovieLength = (int)reader["MovieLength"];
                film.MovieDescription = (string)reader["MovieDescription"];
                film.Price = (decimal)reader["Price"];
                reader.Close();
                return film;
            }
            else
            {
                reader.Close();
                return null;
            }
        }
        //修改电影信息
        public static int ModifyFilm(int id, string MovieTitle, string MovieDirector, string MovieActor, string MovieType, string MovieRegion, string MovieLanguage, int MovieLength, string MovieDescription, decimal Price)
        {
            string sql = "UPDATE Films SET MovieTitle='" + MovieTitle + "',MovieDirector='" + MovieDirector + "',MovieActor='" + MovieActor + "',MovieType='" + MovieType + "',MovieRegion='" + MovieRegion + "',MovieLanguage='" + MovieLanguage + "',MovieLength=" + MovieLength + ",MovieDescription='" + MovieDescription + "',Price='" + Price + "' WHERE MovieId=" + id;
            int i = DBHelper.ExecuteCommand(sql);
            return i;
        }
        //添加电影信息
        public static void AddFilm(string MovieTitle, string MovieDirector, string MovieActor, string MovieType, string MovieRegion, string MovieLanguage, int MovieLength, string MovieDescription, decimal Price)
        {
            string sql = "INSERT INTO Films VALUES('" + MovieTitle + "','" + MovieDirector + "','" + MovieActor + "','" + MovieType + "','" + MovieRegion + "','" + MovieLanguage + "'," + MovieLength + ",'" + MovieDescription + "','" + Price + "')";
            DBHelper.ExecuteCommand(sql);
        }
        //删除电影
        public static void DeleteFilm(int id)
        {
            string sql = "DELETE FROM Films WHERE MovieId=" + id;
            string sql2 = "DELETE FROM Orders WHERE MovieId=" + id;
            DBHelper.ExecuteCommand(sql);
            DBHelper.ExecuteCommand(sql2);
        }
        //根据电影名称查找电影ID
        public static int GetFilmIdByTitle(string title)
        {
            string sql = "SELECT MovieId FROM Films WHERE MovieTitle='" + title + "'";
            int i = DBHelper.GetScalar(sql);
            return i;
        }
    }
}
