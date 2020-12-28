<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Gallery2.aspx.cs" Inherits="Gallery2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="Button1" runat="server" Text="Back to Gallery" BackColor="#9999FF" BorderColor="Red" Font-Bold="True" Height="50px" Width="200px" OnClick="Button1_Click" />
        <br/><br />
        <asp:Image ID="Image1" runat="server" />
        <br/><br />
        <asp:Button ID="Button2" runat="server" Text="Back" BackColor="#9999FF" BorderColor="Red" Font-Bold="True" Height="50px" Width="100px" />
    </div>
    </form>
</body>
</html>
