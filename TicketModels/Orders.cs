using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TicketModels
{
    public class Orders
    {
        string username;

        public string Username
        {
            get { return username; }
            set { username = value; }
        }
        string orderId;

        public string OrderId
        {
            get { return orderId; }
            set { orderId = value; }
        }
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
        int amount;

        public int Amount
        {
            get { return amount; }
            set { amount = value; }
        }
        int paymentStatus;

        public int PaymentStatus
        {
            get { return paymentStatus; }
            set { paymentStatus = value; }
        }
    }
}
