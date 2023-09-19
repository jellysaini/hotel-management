using HotelDemo.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace HotelDemo
{
    /// <summary>
    /// Summary description for HotelService
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class HotelService : System.Web.Services.WebService
    {

        [WebMethod]
        public string GetCount()
        {
            IUserService obj = new UserService();

            var count = obj.LoginUserCount();

            return Convert.ToString(count);
        }
    }
}
