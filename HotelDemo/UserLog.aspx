<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserLog.aspx.cs" Inherits="HotelDemo.UserLog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadArea" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentArea" runat="server">
    <div class="section">
        <div class="card">
            <div class="card-content" id="responsive-table">
                <h4 class="header">User Logs</h4>
                <div class="row">

                    <div class="col s12 m12 l12">

                        <table class="responsive-table">
                            <thead>
                                <tr>
                                    <th data-field="id">Name</th>
                                    <th data-field="name">IP Address</th>
                                    <th data-field="price">Country</th>
                                    <th data-field="total">CreatedOn</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater runat="server" ID="rptUserLog">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("UserName") %></td>
                                            <td><%#Eval("IPAddress") %></td>
                                            <td><%#Eval("Country") %></td>
                                            <td><%#Eval("CreatedOn") %></td>
                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="JavaScriptArea" runat="server">
</asp:Content>
