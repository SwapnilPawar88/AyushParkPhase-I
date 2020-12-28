<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="view_allfeedback.aspx.cs" Inherits="view_allfeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br/>
    <div class="container">
        <div class="jumbotron">
            <asp:Button ID="back" CssClass="btn-primary btn-lg" style="margin-left:950px" runat="server" Text="Back" BorderColor="#CC0000" BorderStyle="Solid" Font-Bold="True" PostBackUrl="~/adminHome.aspx" />           
             <asp:Label ID="ViewFeedback" runat="server" Font-Bold="True" Font-Names="Arial Black" Text="List of All Feedback :" Font-Size="Larger"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="fid" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" width="100%">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="fid" HeaderText="Feed ID" InsertVisible="False" ReadOnly="True" SortExpression="fid" />
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                    <asp:BoundField DataField="comment" HeaderText="Comments" SortExpression="comment" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Feedback] WHERE [fid] = @fid" InsertCommand="INSERT INTO [Feedback] ([email], [comment]) VALUES (@email, @comment)" SelectCommand="SELECT * FROM [Feedback]" UpdateCommand="UPDATE [Feedback] SET [email] = @email, [comment] = @comment WHERE [fid] = @fid">
                <DeleteParameters>
                    <asp:Parameter Name="fid" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="comment" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="comment" Type="String" />
                    <asp:Parameter Name="fid" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </div>
</asp:Content>

