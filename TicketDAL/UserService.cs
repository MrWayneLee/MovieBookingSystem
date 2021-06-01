using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TicketDAL
{
    public class UserService
    {
        //验证用户是否存在
        public static bool IsUserExist(string user, string pass)
        {
            string sql = "SELECT COUNT(*) FROM Users WHERE Username='" + user + "' and Password='" + pass + "'";
            int i = DBHelper.GetScalar(sql);
            if (i > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
