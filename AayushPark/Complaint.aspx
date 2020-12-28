<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Complaint.aspx.cs" Inherits="Complaint" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .auto-style1 {
            width: 464px;
        }
        .auto-style2 {
            width: 538px;
        }
    .auto-style3 {
        width: 152px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br/>
<div class="col-sm-2"></div>
<div class="container-fluid jumbotron col-sm-8" style="border :10px solid maroon;">

	<div><p style="text-align: center; font-size: 30px; font-weight: bold;padding-top: 10px;">Register your Complaint here<br/>
		Complaint Registration</p>
	</div><br/>
		
            <table class="w-100">
                <tr>
                    <td class="auto-style3"><asp:Label ID="Label1" runat="server" Text="Full Name :" Font-Bold="True"></asp:Label></td>                   
                    <td class="auto-style2"><asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Please Enter Full Name" ForeColor="Red" ControlToValidate="TextBox1" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><asp:Label ID="Label2" runat="server" Text="Block number :" Font-Bold="True"></asp:Label></td>                   
                    <td class="auto-style2"><asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="Enter Block Number" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><asp:Label ID="Label3" runat="server" Text="Category :" Font-Bold="True"></asp:Label></td>                   
                    <td class="auto-style2"><asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>-----Select Category-----</asp:ListItem>
                    <asp:ListItem>ARO</asp:ListItem>
                    <asp:ListItem>CCTV</asp:ListItem>
                    <asp:ListItem>Commmon Facility Usage</asp:ListItem>
                    <asp:ListItem>Data Correction</asp:ListItem>
                    <asp:ListItem>Electrical</asp:ListItem>
                    <asp:ListItem>Fire Extinguisher</asp:ListItem>
                    <asp:ListItem>Generator</asp:ListItem>
                    <asp:ListItem>Housekeeping</asp:ListItem>
                    <asp:ListItem>Lift</asp:ListItem>
                    <asp:ListItem>Maintenance Billing</asp:ListItem>
                    <asp:ListItem>Parking</asp:ListItem>
                    <asp:ListItem>Solar</asp:ListItem> 
                    <asp:ListItem>Security</asp:ListItem>                                                    
                    </asp:DropDownList></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="Select The Category" ForeColor="Red" InitialValue="-----Select Category-----" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><asp:Label ID="Label4" runat="server" Text="Helpdesk :" Font-Bold="True"></asp:Label></td>
                    <td class="auto-style2"><asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>-----Select-----</asp:ListItem>
                    <asp:ListItem>Personal</asp:ListItem>
                    <asp:ListItem>Community</asp:ListItem>
                    </asp:DropDownList></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList2" Display="Dynamic" ErrorMessage="Enter Help Desk" ForeColor="Red" SetFocusOnError="True">Please Enter Helpdesk Field</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><asp:Label ID="Label5" runat="server" Text="Issue :" Font-Bold="True"></asp:Label></td>
                    <td class="auto-style2"><asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Height="174px" Width="418px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Enter Issue" ForeColor="Red" SetFocusOnError="True">Please Enter your Issue</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><asp:Label ID="Label6" runat="server" Text="Attachment :" Font-Bold="True"></asp:Label></td>
                    
                    <td class="auto-style2">
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="409px" />
                    </td>
                    <td>
                        <asp:Label ID="Label9" runat="server" Font-Italic="True" Text="Attaching a Photo helps Admin Team understand your Issue better"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3"><asp:Label ID="Label7" runat="server" Text="Urgent :" Font-Bold="True"></asp:Label></td>
                    <td class="auto-style2">
                        <asp:RadioButton ID="RadioButton1" runat="server"  Text="if any urgency" />
                    </td>
                    <td>
                        <asp:Label ID="Label8" runat="server" Font-Italic="True" Text="Mark As Urgent"></asp:Label>
                    </td>
                </tr><br />
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td style="text-align:center" class="auto-style1"><asp:Button CssClass="btn-primary btn-sm" ID="Button2" runat="server" Text="Submit" BorderColor="#CC0000" Width="100px" OnClick="Button2_Click" /></td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td><asp:Label ID="Label10" runat="server" ForeColor="#009933"></asp:Label></td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
            </table> <br />
<br /><br />
    </div>
    <div class="col-sm-2"></div>


</asp:Content>

