<%@ Page Title="Account Management" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageAccount.aspx.cs" Inherits="NTracker.Account.ManageAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
  <%--  <h2><%: Title %>.</h2>--%>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <div class="form-horizontal">
        <h4><b>Account Management</b></h4>
        <hr  style="border: thin solid #808080; background-color: #808080" />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />

         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Fullname" CssClass="col-md-2 control-label">Fullname</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Fullname" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Fullname"
                    CssClass="text-danger" ErrorMessage="The Fullname field is required." />
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Username" CssClass="col-md-2 control-label">Username</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Username" CssClass="form-control" TextMode="SingleLine" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Username"
                    CssClass="text-danger" ErrorMessage="The Username field is required." />
            </div>
        </div>

         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Phone" CssClass="col-md-2 control-label">Phone No.</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Phone" CssClass="form-control" TextMode="Phone" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Phone"
                    CssClass="text-danger" ErrorMessage="The Phone Number field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="OldPassword" CssClass="col-md-2 control-label">Old Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="OldPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="OldPassword"
                    CssClass="text-danger" ErrorMessage="The Old password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="NewPassword" CssClass="col-md-2 control-label">New Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="NewPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="NewPassword"
                    CssClass="text-danger" ErrorMessage="The new password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The new password and confirmation password do not match." />
            </div>
        </div>

       <%-- <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="UserRole" CssClass="col-md-2 control-label">User Role</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList runat="server" Width="279px" ID="UserRole" CssClass="form-control" />
              
            </div>
        </div>--%>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                &nbsp;<asp:Button ID="AccountUpdate" runat="server"  Text="Update Account" CssClass="btn btn-primary" Width="168px" OnClick="AccountUpdate_Click" />
                <%-- &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button runat="server" OnClick="ResetUser_Click" Text="Reset" CssClass="btn btn-primary" />--%>
            </div>
        </div>
        
    </div>

</asp:Content>
