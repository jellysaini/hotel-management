<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit-User.aspx.cs" Inherits="HotelDemo.Edit_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadArea" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentArea" runat="server">
    <div class="section">
        <div class="card">
            <div class="card-content" id="responsive-table">
                <h4 class="header">Edit User</h4>
                <div class="row">

                    <div class="row">
                        <div class="input-field col s6">
                            <asp:TextBox runat="server" data-error=".errorFirstName" ID="txtFirstName"></asp:TextBox>
                            <div class="errorFirstName"></div>
                            <label for="txtFirstName" class="center-align">First Name</label>
                        </div>

                        <div class="input-field col s6">
                            <asp:TextBox runat="server" data-error=".errorLastName" ID="txtLastName"></asp:TextBox>
                            <div class="errorLastName"></div>
                            <label for="txtLastName" class="center-align">Last Name</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s6">
                            <asp:TextBox runat="server" TextMode="Email" data-error=".errorEmail" ID="txtEmail"></asp:TextBox>
                            <div class="errorEmail"></div>
                            <label for="txtEmail" class="center-align">Email</label>
                        </div>
                        <div class="input-field col s6">
                            <label for="txtPassword">Password</label>
                            <asp:TextBox runat="server"  data-error=".errorPassword" ID="txtPassword"></asp:TextBox>
                            <div class="errorPassword"></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="row">
                            <div class="input-field col s12">
                                <asp:Button runat="server" ID="btnSave" OnClick="btnSave_Click" class="btn cyan waves-effect waves-light right" Text="Submit" />
                            </div>

                            <div class="input-field col s12">
                                <asp:Label runat="server" ID="lblError" ForeColor="Red"></asp:Label>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="JavaScriptArea" runat="server">
    <script type="text/javascript" src="js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="js/additional-methods.min.js"></script>
    <script src="js/CustomValidation.js"></script>
</asp:Content>
