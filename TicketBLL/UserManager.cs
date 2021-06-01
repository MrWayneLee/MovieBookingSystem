using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TicketDAL;

namespace TicketBLL
{
    public class UserManager
    {
        //验证用户是否存在
        public static bool IsUserExist(string user, string pass)
        {
            return UserService.IsUserExist(user, pass);
        }
    }
}
