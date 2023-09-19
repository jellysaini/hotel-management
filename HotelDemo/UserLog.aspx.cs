using HotelDemo.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelDemo
{
    public partial class UserLog : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
            }
        }

        private void GetData()
        {
            IUserLogService obj = new UserLogService();
            var data = obj.GelAll();

            rptUserLog.DataSource = data;
            rptUserLog.DataBind();
        }
    }
}