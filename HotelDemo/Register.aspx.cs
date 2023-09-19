using HotelDemo.Models;
using HotelDemo.Services;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace HotelDemo
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            IUserService obj = new UserService();
            try
            {
                #region Get IP Address And Country

                String IP = Common.CommonMethods.GetIPAddress();
                String CountryName = Common.CommonMethods.GetCountryName(IP);

                #endregion

                UserModel data = new UserModel();
                data.Country = CountryName;
                data.CreatedOn = DateTime.Now;
                data.Email = txtEmail.Text.Trim();
                data.FirstName = txtFirstName.Text.Trim();
                data.IPAddress = IP;
                data.IsCurrentLogin = false;
                data.LastName = txtLastName.Text.Trim();
                data.Password = txtPassword.Text.Trim();
                data.UserTypeID = 2;
                data.WrongTry = 0;

                obj.Insert(data);

                #region Clear Data
                txtConfirmPassword.Text = "";
                txtEmail.Text = "";
                txtFirstName.Text = "";
                txtLastName.Text = "";
                txtPassword.Text = "";
                #endregion

                lblError.Text = "You have register successfully.";
            }
            catch (Exception ex)
            {
                lblError.Text = ex.Message.ToString();
            }
        }
    }
}