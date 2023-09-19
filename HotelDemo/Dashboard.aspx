<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="HotelDemo.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadArea" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentArea" runat="server">
    <div>
        <div class="wrapper">

            <section id="content">

                <!--start container-->
                <div class="container">

                    <div id="profile-page" class="section">
                        <div id="profile-page-header" class="card">
                            <div class="card-image waves-effect waves-block waves-light">
                                <img class="activator" src="images/user-profile-bg.jpg" alt="user background">
                            </div>
                            <figure class="card-profile-image">
                                <img src="images/avatar.jpg" alt="profile image" class="circle z-depth-2 responsive-img activator">
                            </figure>
                            <div class="card-content">
                                <div class="row">
                                    <div class="col s3 offset-s2">
                                        <h4 class="card-title grey-text text-darken-4">User Type</h4>
                                        <p class="medium-small grey-text">
                                            <asp:Label runat="server" ID="lblUserType"></asp:Label>
                                        </p>
                                    </div>
                                    <div class="col s2 center-right">
                                        <h4 class="card-title grey-text text-darken-4">First Name</h4>
                                        <p class="medium-small grey-text">
                                            <asp:Label runat="server" ID="lblFirstName"></asp:Label>
                                        </p>
                                    </div>
                                    <div class="col s2 center-right">
                                        <h4 class="card-title grey-text text-darken-4">Last Name</h4>
                                        <p class="medium-small grey-text">
                                            <asp:Label runat="server" ID="lblLastName"></asp:Label>
                                        </p>
                                    </div>
                                    <div class="col s2 center-right">
                                        <h4 class="card-title grey-text text-darken-4">Email</h4>
                                        <p class="medium-small grey-text">
                                            <asp:Label runat="server" ID="lblEmail"></asp:Label>
                                        </p>
                                    </div>
                                    <div class="col s1 right-right">
                                        <a class="btn-floating activator waves-effect waves-light darken-2 right">
                                            <i class="mdi-action-perm-identity"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="card-reveal">
                                <p>
                                    <span class="card-title grey-text text-darken-4">Hotel Demo <i class="mdi-navigation-close right"></i></span>
                                    <span><i class="mdi-action-perm-identity cyan-text text-darken-2"></i>
                                        <asp:Label runat="server" ID="lblName"></asp:Label>
                                    </span>
                                </p>

                                <p>
                                    Hotel student portal demo .... :)
                                </p>

                            </div>
                        </div>

                    </div>
                </div>
                <!--end container-->
            </section>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="JavaScriptArea" runat="server">
</asp:Content>
