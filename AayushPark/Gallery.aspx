<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:FileUpload ID="FileUpload1" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" CssClass="btn-primary btn-lg" runat="server" Text="Upload" BorderColor="Red" OnClick="Button1_Click" />
    <br />

    <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" BorderWidth="8px">
    </asp:Panel>

</asp:Content>

