using HotelDemo.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelDemo
{
    public partial class User : System.Web.UI.Page
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
            IUserService obj = new UserService();
            var data = obj.GelAll();

            rptUser.DataSource = data;
            rptUser.DataBind();
        }
        protected void rptUser_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            HiddenField hdID = (HiddenField)e.Item.FindControl("hdID");

            if (e.CommandName == "Edit")
            {
                Response.RedirectPermanent("~/edit-user?id=" + hdID.Value);
            }
            else if (e.CommandName == "Delete")
            {
                IUserService obj = new UserService();
                obj.Delete(Convert.ToInt32(hdID.Value));
                GetData();
            }
        }
    }
}