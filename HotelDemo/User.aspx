<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="HotelDemo.User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadArea" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentArea" runat="server">
    <div class="section">
        <div class="card">
            <div class="card-content" id="responsive-table">
                <h4 class="header">User List</h4>
                <div class="row">

                    <div class="col s12 m12 l12">

                        <table class="responsive-table">
                            <thead>
                                <tr>
                                    <th data-field="id">First Name</th>
                                    <th data-field="name">Last Name</th>
                                    <th data-field="price">Email</th>
                                    <th data-field="total">User Type</th>
                                    <th data-field="total">IP Address</th>
                                    <th data-field="total">Country</th>
                                    <th data-field="total">Created On</th>
                                    <th data-field="total">Action(s)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater runat="server" ID="rptUser" OnItemCommand="rptUser_ItemCommand">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%#Eval("FirstName") %></td>
                                            <td><%#Eval("LastName") %></td>
                                            <td><%#Eval("Email") %></td>
                                            <td><%#Eval("UserTypeName") %></td>
                                            <td><%#Eval("IPAddress") %></td>
                                            <td><%#Eval("Country") %></td>
                                            <td><%#Eval("CreatedOn") %></td>
                                            <td>
                                                <asp:HiddenField runat="server" ID="hdID" Value='<%#Eval("ID") %>' />
                                                <asp:LinkButton runat="server" ID="lnkEdit" CommandName="Edit">
                                                       <img style="height: 20px; width: 20px;" title="Edit" src="<%= this.ResolveUrl("~/images/edit.png") %>" alt="Edit" />
                                                </asp:LinkButton>
                                                &nbsp;&nbsp;
                                                    <asp:LinkButton runat="server" ID="lnkDelete" CommandName="Delete" OnClientClick="return confirm('Do you want to delete this entry?');">
                                                        <img style="height: 20px; width: 20px;" title="Delete"  src="<%= this.ResolveUrl("~/images/delete.png") %>" alt="Delete" />
                                                    </asp:LinkButton>
                                            </td>
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
