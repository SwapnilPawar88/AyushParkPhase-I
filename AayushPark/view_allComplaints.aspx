<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view_allComplaints.aspx.cs" Inherits="view_allComplaints" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/>
    <div class="container">
        <div class="jumbotron">
            <asp:Button ID="back" CssClass="btn-primary btn-lg" style="margin-left:950px" runat="server" Text="Back" BorderColor="#CC0000" BorderStyle="Solid" Font-Bold="True" PostBackUrl="~/adminHome.aspx" />
            <table>
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Block Number :"></asp:Label></td>
                    <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td> <asp:Label ID="Label2" runat="server" Text="Status  :"></asp:Label></td>
                    <td> <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Button ID="Button1" runat="server" Text="Submit" ForeColor="Black" BorderColor="Red" Font-Bold="True" OnClick="Button1_Click" /></td>
                </tr>
            </table> 
         
            <asp:Label ID="ViewCompliants" runat="server" Font-Bold="True" Font-Names="Arial Black" Text="List of All Complaints :" Font-Size="Larger"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="cid" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="cid" HeaderText="cid" InsertVisible="False" ReadOnly="True" SortExpression="cid" />
                    <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                    <asp:BoundField DataField="helpdesk" HeaderText="helpdesk" SortExpression="helpdesk" />
                    <asp:BoundField DataField="issue" HeaderText="issue" SortExpression="issue" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="blockno" HeaderText="blockno" SortExpression="blockno" />
                    <asp:BoundField DataField="radio" HeaderText="radio" SortExpression="radio" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Tempcomplaint] WHERE [cid] = @cid" InsertCommand="INSERT INTO [Tempcomplaint] ([category], [helpdesk], [issue], [name], [blockno], [attachment], [radio]) VALUES (@category, @helpdesk, @issue, @name, @blockno, @attachment, @radio)" SelectCommand="SELECT * FROM [Tempcomplaint]" UpdateCommand="UPDATE [Tempcomplaint] SET [category] = @category, [helpdesk] = @helpdesk, [issue] = @issue, [name] = @name, [blockno] = @blockno, [attachment] = @attachment, [radio] = @radio WHERE [cid] = @cid">
                <DeleteParameters>
                    <asp:Parameter Name="cid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="helpdesk" Type="String" />
                    <asp:Parameter Name="issue" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="blockno" Type="Int32" />
                    <asp:Parameter Name="attachment" Type="Object" />
                    <asp:Parameter Name="radio" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="category" Type="String" />
                    <asp:Parameter Name="helpdesk" Type="String" />
                    <asp:Parameter Name="issue" Type="String" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="blockno" Type="Int32" />
                    <asp:Parameter Name="attachment" Type="Object" />
                    <asp:Parameter Name="radio" Type="String" />
                    <asp:Parameter Name="cid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
             
        </div>
    </div>
    <br/>
</asp:Content>

