using HotelDemo.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelDemo
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"]==null)
            {
                Response.Redirect("login");
            }
        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            IUserService obj = new UserService();
            obj.Logout(Convert.ToInt32(Session["UserID"]));

            Session.Abandon();
            Session.RemoveAll();

            Response.Redirect("login");
        }
    }
}