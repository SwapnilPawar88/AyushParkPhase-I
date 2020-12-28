<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="admin_Login.aspx.cs" Inherits="admin_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        &nbsp;
        <br/>
        <br/>
        <center><div class="container">
            <div class="jumbotron col-sm-8" style="border :10px solid maroon;text-align:center">
            <div class="row justify-content-center">
				<div class="col-xs-12">
					<h1>Admin Login</h1>
				</div>
			</div>
             <br/>
			<div class="row justify-content-center">
				<div class="col-xs-12 col-md-6 col-lg-6">
                    <asp:Label ID="adminName" runat="server" Text="User Name" Font-Size="Large"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="adminUserName" ErrorMessage="*Please Enter UserName" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="adminUserName" runat="server" CssClass="form-control" Height="40px" Width="300px"></asp:TextBox>
				</div>
            </div>
            <div class="row justify-content-center">
				<div class="col-xs-12 col-md-6 col-lg-6">
                    <asp:Label ID="adminPass" runat="server" Text="Password" Font-Size="Large"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="adminPassword" ErrorMessage="*Please Enter Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="adminPassword" runat="server" CssClass="form-control" Height="40px" Width="300px" TextMode="Password"></asp:TextBox>
				</div>
			</div>
             <br/>
            <div class="row justify-content-center">
            <div class="col-xs-12">
                <asp:Button ID="adminLoginBtn" runat="server" Text="Login" CssClass="btn btn-primary btn-lg" Font-Size="X-Large" Height="50px" Width="100px" OnClick="adminLoginBtn_Click" />
            </div>
          </div>
          </div>
        </div></center>
    <br/>
</asp:Content>

