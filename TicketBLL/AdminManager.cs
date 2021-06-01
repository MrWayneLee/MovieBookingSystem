using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TicketDAL;

namespace TicketBLL
{
    public class AdminManager
    {
        //用户是否存在
        public static bool IsUserExist(string user, string pass)
        {
            return AdminService.IsUserExist(user, pass);
        }
    }
}
