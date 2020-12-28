<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="clubHouseBooking.aspx.cs" Inherits="clubHouseBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 198px;
        }
        .auto-style2 {
            width: 473px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <br />
        <div class="jumbotron col-sm-12" style="border :10px solid maroon;text-align:center">
            <h1>Club House Booking From</h1>
&nbsp;<table class="w-100">
            <tr>
                <td class="auto-style1">
                    <br />
                    Your Full Name :<br />
                    <br />
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Height="30px" Width="404px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Please Enter Name" ForeColor="#FF6600" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <br />
                    Block No :<br />
                    <br />
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" Height="30px" Width="404px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Please Enter Block No" ForeColor="#FF6600" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <br />
                    Mobile No :<br />
                    <br />
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Height="30px" Width="404px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Please Enter Mobile No." ForeColor="#FF6600" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <br />
                    Start Date :
                    <br />
                    <br />
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Height="30px" Width="404px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Please Enter Start_Date" ForeColor="#FF6600" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <br />
                    End Date :<br />
                    <br />
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Height="30px" Width="404px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Please Enter End Date" ForeColor="#FF6600" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <br />
                    Duration :<br />
                    <br />
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" Height="30px" Width="404px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Enter How much Time You Required" ForeColor="#FF6600" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <br />
                    Note :<br />
                    <br />
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" Height="30px" Width="404px"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" Font-Italic="True" Text="*Give a Note about the Event or Function for Booking"></asp:Label>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Please Enter Note" ForeColor="#FF6600" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <br />
                    Rate :<br />
                    <br />
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" Height="30px" Width="404px" ReadOnly="True" value="0.00 $"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="*Rate is Not Aplicable for Society Member."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td style="margin-left: 40px" class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="43px" Text="Submit" Width="145px" Cssclass="btn-info" OnClick="Button1_Click"/>
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />

        </div>
    </div>
    
</asp:Content>

