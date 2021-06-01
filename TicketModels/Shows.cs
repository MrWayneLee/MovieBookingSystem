using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TicketModels
{
    public class Shows
    {
        int movieId;

        public int MovieId
        {
            get { return movieId; }
            set { movieId = value; }
        }
        DateTime date;

        public DateTime Date
        {
            get { return date; }
            set { date = value; }
        }
        string time;

        public string Time
        {
            get { return time; }
            set { time = value; }
        }
        string hall;

        public string Hall
        {
            get { return hall; }
            set { hall = value; }
        }
    }
}
