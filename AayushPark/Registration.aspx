<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 464px;
        }
        .auto-style2 {
            width: 538px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/>
<div class="col-sm-2"></div>
<div class="container-fluid jumbotron col-sm-8" style="border :10px solid maroon;">

	<div><p style="text-align: center; font-size: 30px; font-weight: bold;padding-top: 10px;">Register yourself here<br/>
		Registration</p>
	</div><br/>
		
            <table class="w-100">
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Owner Name :" Font-Bold="True"></asp:Label></td>                   
                    <td class="auto-style2"><asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Please Enter Full Name" ForeColor="Red" ControlToValidate="TextBox1" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Email Address :" Font-Bold="True"></asp:Label></td>                   
                    <td class="auto-style2"><asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Incorrect Email ID" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid Email Id</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="Wing :" Font-Bold="True"></asp:Label></td>                   
                    <td class="auto-style2"><asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>-----Select-----</asp:ListItem>
                    <asp:ListItem>A</asp:ListItem>
                    <asp:ListItem>B</asp:ListItem>
                    <asp:ListItem>C</asp:ListItem>
                    <asp:ListItem>D</asp:ListItem>
                    </asp:DropDownList></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="Select The Wing" ForeColor="Red" InitialValue="-----Select-----" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="Block Number :" Font-Bold="True"></asp:Label></td>
                    <td class="auto-style2"><asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Enter Block Number" ForeColor="Red" SetFocusOnError="True">Please Enter Block Number</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label5" runat="server" Text="Contact :" Font-Bold="True"></asp:Label></td>
                    <td class="auto-style2"><asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Enter Mobile Number" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\d{10}">Enter Mobile Number</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label6" runat="server" Text="Type :" Font-Bold="True"></asp:Label></td>
                    <td class="auto-style2"><asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>-----Select-----</asp:ListItem>
                    <asp:ListItem>Owner</asp:ListItem>
                    <asp:ListItem>Tenent</asp:ListItem>
              </asp:DropDownList></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList2" Display="Dynamic" ErrorMessage="Select Type" ForeColor="Red" InitialValue="-----Select-----" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label7" runat="server" Text="Password :" Font-Bold="True"></asp:Label></td>
                    <td class="auto-style2"><asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Enter Password" ForeColor="Red" SetFocusOnError="True">Please Enter Password</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    
                    <td rowspan="3" style="text-align:center" class="auto-style1"><asp:Button CssClass="btn-primary btn-sm" ID="Button2" runat="server" Text="Submit" OnClick="Button1_Click" BorderColor="#CC0000" Width="100px" /></td>
                </tr>
                <tr>
                    <td><asp:Label ID="Label8" style="text-align:center" runat="server" ForeColor="#009933"></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" ForeColor="#0066FF" Text="If Registered! "></asp:Label><a href="Login.aspx"><b>Login Here</b></a>
                    </td>
                </tr>
            </table> 
    </div>
    <div class="col-sm-2"></div>
    <br /><br />	
</asp:Content>

