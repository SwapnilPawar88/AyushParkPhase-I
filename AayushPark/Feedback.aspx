<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

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

	<div><p style="text-align: center; font-size: 30px; font-weight: bold;padding-top: 10px;">How May we Help you ???<br/>
		Feedback</p>
	</div><br/>
		
		
            <table class="w-100">
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Email Address :" Font-Bold="True"></asp:Label></td>                   
                    <td class="auto-style2"><asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Width="341px"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Incorrect Email ID" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid Email Id</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
               
                <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Leave Your Comments :" Font-Bold="True"></asp:Label></td>                   
                    <td class="auto-style2"><asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Height="153px" Width="341px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Please Enter Comments" ForeColor="Red" ControlToValidate="TextBox2" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>               
                
                <tr>                  
                    <td rowspan="3" style="text-align:center" class="auto-style1"><asp:Button CssClass="btn-primary btn-sm" ID="Button2" runat="server" Text="Submit" BorderColor="#CC0000" Width="100px" OnClick="Button2_Click"/>               
                    </td>
                    <td><asp:Label ID="Label3" runat="server" ForeColor="#009900"></asp:Label></td>
                </tr>
            </table> 
		
    </div>
    <div class="col-sm-2"></div>
    <br /><br />
</asp:Content>

