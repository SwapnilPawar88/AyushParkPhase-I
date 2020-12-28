<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ResolveComplaint.aspx.cs" Inherits="ResolveComplaint" %>

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
                <asp:Menu ID="Menu1" runat="server" BackColor="Black" BorderColor="White" Font-Size="Large" ForeColor="White" Height="35px" Orientation="Horizontal" Width="100%">
                    <DynamicHoverStyle BackColor="Yellow" BorderColor="White" BorderStyle="Groove" ForeColor="Black" />
                    <Items>           
                        <asp:MenuItem Text="Home" Value="Home" NavigateUrl="index.aspx"></asp:MenuItem>
                        <asp:MenuItem Text="User Profile" Value="User" NavigateUrl="Welcome.aspx"></asp:MenuItem>                      
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
			        <h3 style="font-size: 25px;font-weight: bold;text-align: center; font-family: verdana;">Complaints Updates</h3>
		        </div>
		
		        <div class="col-sm-4" style="border:2px solid black; height: 500px; border-radius: 0px;"> 
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="blockno" HeaderText="Block Number" SortExpression="blockno" />
                            <asp:BoundField DataField="status" HeaderText="Status" SortExpression="status" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [blockno], [status] FROM [Resolvecomplaint]"></asp:SqlDataSource>
                </div>
            </div><!-- closing of Notice board-->
            
    </div>
    </form>
</body>
</html>
