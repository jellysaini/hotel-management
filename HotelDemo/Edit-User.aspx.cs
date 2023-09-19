using HotelDemo.Models;
using HotelDemo.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelDemo
{
    public partial class Edit_User : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetValues();
            }
        }

        private void GetValues()
        {
            try
            {
                IUserService obj = new UserService();
                var data = obj.GetByID(Convert.ToInt32(Request.QueryString["id"]));
                txtEmail.Text = data.Email;
                txtFirstName.Text = data.FirstName;
                txtLastName.Text = data.LastName;
                txtPassword.Text = data.Password;
            }
            catch (Exception ex)
            {

            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                IUserService obj = new UserService();
                UserModel data = new UserModel();
                data.ID = Convert.ToInt32(Request.QueryString["id"]);
                data.FirstName = txtFirstName.Text.Trim();
                data.LastName = txtLastName.Text.Trim();
                data.Email = txtEmail.Text.Trim();
                data.Password = txtPassword.Text.Trim();

                obj.Update(data);
                Response.Redirect("user");
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message.ToString();
            }
        }
    }
}