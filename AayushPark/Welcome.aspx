<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width:100%;height:42px; margin:0 auto;font-family:verdana;background-color:#109196;text-align:right;">
           <tr>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <asp:Button ID="btnlogout" CssClass="btn-primary btn-lg" runat="server" Text="Logout" onclick="btnlogout_Click" BorderColor="#CC0000" Width="100px" Height="35px" BorderStyle="Solid" Font-Bold="True" /></td> 
           </tr>
           <tr>
               <td>
                <asp:Menu ID="Menu1" runat="server" BackColor="Black" BorderColor="White" Font-Size="Large" ForeColor="White" Height="35px" Orientation="Horizontal" Width="100%">
                    <DynamicHoverStyle BackColor="Yellow" BorderColor="White" BorderStyle="Groove" ForeColor="Black" />
                    <Items>           
                        <asp:MenuItem Text="Home" Value="Home" NavigateUrl="index.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Resolved Complaint" Value="Complaint" NavigateUrl="ResolveComplaint.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="Club House Booking" Value="Event" NavigateUrl="clubHouseBooking.aspx"></asp:MenuItem>
                    </Items>
                    <StaticHoverStyle BackColor="Yellow" BorderColor="White" ForeColor="Black" />
                    <StaticMenuItemStyle HorizontalPadding="30px" />
                </asp:Menu>
            </td>               
           </tr>
        </table><br />
            <div style="width:50%">	<!--Notice board-->	
		        <div style="border:5px solid black;border-bottom: groove; border-radius: 30px;">
			        <h3 style="font-size: 25px;font-weight: bold;text-align: center; font-family: verdana;">Event Updates and Notifications</h3>
		        </div>
		
		        <div class="col-sm-4" style="border:2px solid black; height: 500px; border-radius: 0px;">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="heading" HeaderText="Notification" SortExpression="heading" />
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [heading] FROM [Notification]"></asp:SqlDataSource>
                </div>
            </div><!-- closing of Notice board-->
            
    </div>
    </form>
</body>
</html>
