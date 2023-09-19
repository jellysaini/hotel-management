using HotelDemo.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelDemo
{
    public partial class Dashboard : System.Web.UI.Page
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
            var data = obj.GetByID(Convert.ToInt32(Session["UserID"]));
            if (data != null)
            {
                lblEmail.Text = data.Email;
                lblFirstName.Text = data.FirstName;
                lblLastName.Text = data.LastName;
                lblUserType.Text = data.UserTypeName;
                lblName.Text = data.FirstName + " " + data.LastName;
            }
        }
    }
}