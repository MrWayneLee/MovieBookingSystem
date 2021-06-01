using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TicketModels
{
    public class Users
    {
        string username;

        public string Username
        {
            get { return username; }
            set { username = value; }
        }
        string password;

        public string Password
        {
            get { return password; }
            set { password = value; }
        }
        string tel;

        public string Tel
        {
            get { return tel; }
            set { tel = value; }
        }
        string nickname;

        public string Nickname
        {
            get { return nickname; }
            set { nickname = value; }
        }
        string address;

        public string Address
        {
            get { return address; }
            set { address = value; }
        }
    }
}
