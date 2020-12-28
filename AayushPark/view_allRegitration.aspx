<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view_allRegitration.aspx.cs" Inherits="view_allRegitration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/>
    <div class="container">
        <div class="jumbotron">
            <asp:Button ID="back" CssClass="btn-primary btn-lg" style="margin-left:950px" runat="server" Text="Back" BorderColor="#CC0000" BorderStyle="Solid" Font-Bold="True" PostBackUrl="~/adminHome.aspx" />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Arial Black" Text="List of All Registration :" Font-Size="Larger"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="email" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="wing" HeaderText="Wing" SortExpression="wing" />
                    <asp:BoundField DataField="blockno" HeaderText="Block No" SortExpression="blockno" />
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" ReadOnly="True" />
                    <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
                    <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
                    <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Register] WHERE [email] = @email" InsertCommand="INSERT INTO [Register] ([name], [wing], [blockno], [email], [mobile], [type], [password]) VALUES (@name, @wing, @blockno, @email, @mobile, @type, @password)" SelectCommand="SELECT * FROM [Register]" UpdateCommand="UPDATE [Register] SET [id] = @id, [name] = @name, [wing] = @wing, [blockno] = @blockno, [mobile] = @mobile, [type] = @type, [password] = @password WHERE [email] = @email">
                <DeleteParameters>
                    <asp:Parameter Name="email" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="wing" Type="String" />
                    <asp:Parameter Name="blockno" Type="Int32" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="mobile" Type="String" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="wing" Type="String" />
                    <asp:Parameter Name="blockno" Type="Int32" />
                    <asp:Parameter Name="mobile" Type="String" />
                    <asp:Parameter Name="type" Type="String" />
                    <asp:Parameter Name="password" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            
             
        </div>
    </div>
    <br/>
</asp:Content>

