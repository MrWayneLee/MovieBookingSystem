using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TicketDAL;
using TicketModels;

namespace TicketBLL
{
    public class FilmManager
    {
        //查询所有电影
        public static IList<Films> GetAllFilm()
        {
            return FilmService.GetAllFilm();
        }
        //根据ID查询电影信息
        public static Films GetFilmById(int id)
        {
            return FilmService.GetFilmById(id);
        }
        //修改电影信息
        public static int ModifyFilm(int id, string MovieTitle, string MovieDirector, string MovieActor, string MovieType, string MovieRegion, string MovieLanguage, int MovieLength, string MovieDescription, decimal Price)
        {
            return FilmService.ModifyFilm(id, MovieTitle, MovieDirector, MovieActor, MovieType, MovieRegion, MovieLanguage, MovieLength, MovieDescription, Price);
        }
        //添加电影信息
        public static void AddFilm(string MovieTitle, string MovieDirector, string MovieActor, string MovieType, string MovieRegion, string MovieLanguage, int MovieLength, string MovieDescription, decimal Price)
        {
            FilmService.AddFilm(MovieTitle, MovieDirector, MovieActor, MovieType, MovieRegion, MovieLanguage, MovieLength, MovieDescription, Price);
        }
        //删除电影
        public static void DeleteFilm(int id)
        {
            FilmService.DeleteFilm(id);
        }
        //根据电影名称查找电影ID
        public static int GetFilmIdByTitle(string title)
        {
            return FilmService.GetFilmIdByTitle(title);
        }
    }
}
