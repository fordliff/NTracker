<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="NTracker.Account.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script src="../Scripts/bootstrap.js"></script>
    <script src="../Scripts/bootstrap.min.js"></script>
    <script src="../Scripts/respond.js"></script>
    <script src="../Scripts/respond.min.js"></script>
 <%-- OnClick="btnSearch_Click"
    <asp:Button ID="btnSearch" runat="server"   Style="width: 480px;" CssClass="button" Text="Search" />--%>              
              <br />
              <br />
              <br />
     <div class="row">  
 <%-- <hr  style="border: thin solid #808080; background-color: #808080" />--%>
        <div class="col-md-4">
      <p></p>
    <p></p> 
        </div>
       
          <div class="col-md-3"  style="background-color:#d9edf7">  <!--- Form Starts -->
        
             <p></p>
    <p></p>

         

          <h1><b>Login</b></h1>

      
<%--
                        <asp:HyperLink ID="HyperLink1" runat="server"
                            NavigateUrl="~/ForgotPassword.aspx">Forgot Password ?</asp:HyperLink>


                    <asp:Label ID="lblMsg" runat="server" Text="" CssClass="lbl" />--%>

            <div class="form-group">
              
                <asp:TextBox ID="txtUName" runat="server"  CssClass="form-control text-primary" placeholder="Username" Width="665px" OnTextChanged="txtUName_TextChanged" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="Rq1" runat="server" ControlToValidate="txtUName" ErrorMessage="Please Enter User Name"
                            SetFocusOnError="True" Font-Bold="True" ForeColor="#FF3300">The username field is required.  </asp:RequiredFieldValidator><br />

            </div>
            <div class="form-group">

                 <asp:TextBox ID="TxtUPass" runat="server"   CssClass="form-control text-primary" placeholder="Password" TextMode="Password" Width="665px" OnTextChanged="TxtUPass_TextChanged"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="Rq2" runat="server" ControlToValidate="TxtUPass" ErrorMessage="Your Password"
                            SetFocusOnError="True" Font-Bold="True" ForeColor="#FF3300">The Password field is required. </asp:RequiredFieldValidator><br />
               
            </div>
              <div class="form-group">

                   <asp:Label ID="lblMsg" runat="server" Text="" CssClass="label" Font-Bold="True" ForeColor="Red" />

              </div>
            <div class="form-group">               
              
                  <asp:Button ID="btnLogIn" runat="server" Text="       LogIn"  CssClass="btn btn-primary" OnClick="btnLogIn_Click" /> 
           
            </div> <!--- Form Ends-->

  
            </div>
         <div class="col-md-5">
             <p></p>
             <p></p>
             <br />
             
         </div>
    </div>
  
    <div>
<div class="col-md-12">
              <br />
              <br />
              <br />
              <br />
              <br />
              <br />                 
         </div>
    </div>
   

</asp:Content>
