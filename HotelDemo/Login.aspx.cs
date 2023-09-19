using HotelDemo.Models;
using HotelDemo.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotelDemo
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["HotelEmail"] != null && Request.Cookies["HotelPassword"] != null)
                {
                    txtEmail.Text = Request.Cookies["HotelEmail"].Value;
                    txtPassword.Attributes["value"] = Request.Cookies["HotelPassword"].Value;
                    chkRememberme.Checked = true;
                }
            }
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                IUserService obj = new UserService();
                var checkEmail = obj.CheckEmailExist(txtEmail.Text.Trim());
                if (checkEmail != null)
                {
                    var data = obj.Login(txtEmail.Text, txtPassword.Text);
                    if (data != null)
                    {
                        if (data.IsCurrentLogin == true)
                        {
                            lblError.Text = "You already login from some other instance. Please logout and try again.";
                        }
                        else
                        {
                            Session["UserID"] = data.ID;
                            Session["UserType"] = data.UserTypeID;
                            Session["UserName"] = data.FirstName + " " + data.LastName;

                            #region RememberMe
                            if (chkRememberme.Checked)
                            {
                                Response.Cookies["HotelEmail"].Expires = DateTime.Now.AddDays(30);
                                Response.Cookies["HotelPassword"].Expires = DateTime.Now.AddDays(30);
                            }
                            else
                            {
                                Response.Cookies["HotelEmail"].Expires = DateTime.Now.AddDays(-1);
                                Response.Cookies["HotelPassword"].Expires = DateTime.Now.AddDays(-1);

                            }
                            Response.Cookies["HotelEmail"].Value = txtEmail.Text.Trim();
                            Response.Cookies["HotelPassword"].Value = txtPassword.Text.Trim();
                            #endregion

                            #region Update User Log
                            #region Get IP Address And Country

                            String IP = Common.CommonMethods.GetIPAddress();
                            String CountryName = Common.CommonMethods.GetCountryName(IP);

                            #endregion
                            IUserLogService objUserLogs = new UserLogService();
                            UserLogModel dataUserLogs = new UserLogModel();
                            dataUserLogs.Country = CountryName;
                            dataUserLogs.CreatedOn = DateTime.Now;
                            dataUserLogs.IPAddress = IP;
                            dataUserLogs.UserID = data.ID;
                            dataUserLogs.UserName = data.FirstName + " " + data.LastName;
                            objUserLogs.Insert(dataUserLogs);
                            #endregion

                            #region Redirect

                            if (data.UserTypeID == 1)
                            {
                                Response.RedirectPermanent("~/adashboard");
                            }
                            else
                            {
                                Response.RedirectPermanent("~/dashboard");
                            }

                            #endregion
                        }

                    }
                    else
                    {
                        if (Convert.ToInt32(checkEmail.WrongTry) >= 3)
                        {
                            lblError.Text = "Your account has been locked. Please reset your password.";
                        }
                        else
                        {
                            Int32 remaining = obj.UpdateWrongAttempt(txtEmail.Text.Trim());
                            lblError.Text = "Wrong Password. You have " + Convert.ToString(3 - remaining) + " attempt(s)";
                        }
                    }
                }
                else
                {
                    lblError.Text = "Incorrect email address.";
                }


            }
            catch (Exception ex)
            {
                lblError.Text = "Incorrect Email/Password.";
            }
        }
    }
}