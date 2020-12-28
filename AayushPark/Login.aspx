<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br/>
<div class="col-sm-2"></div>
<div class="container-fluid jumbotron col-sm-8" style="border :10px solid maroon;">

	<div><p style="text-align: center; font-size: 30px; font-weight: bold;padding-top: 10px;">Login to your Account<br/>
		Login</p>
	</div><br/>
		
            <table class="w-100 form-group">
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Email Address :" Font-Bold="True"></asp:Label></td>                   
                    <td class="auto-style2"><asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Incorrect Email ID" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid Email Id</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please Enter User ID" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Password :" Font-Bold="True"></asp:Label></td>
                    <td class="auto-style2"><asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Enter Password" ForeColor="Red" SetFocusOnError="True">Please Enter Password</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                   <td colspan="3" style="text-align:center" class="auto-style1"><asp:Button CssClass="btn-primary btn-sm" ID="Button1" runat="server" Text="Submit" BorderColor="#CC0000" Width="100px" OnClick="Button1_Click" /></td>               
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><asp:Label ID="Label8" style="text-align:center" runat="server" ForeColor="#009933"></asp:Label></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><asp:Label ID="Label3" runat="server" Text="Don't have an Account? "></asp:Label><a href="Registration.aspx">Register Here</a></td>
                    <td>&nbsp;</td>
                </tr>
            </table> 
			
    </div>
    <div class="col-sm-2"></div>
    <br /><br />	
</asp:Content>

