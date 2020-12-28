<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
                        </asp:Timer>
                        <asp:Image ID="Image1" runat="server" Height="400px" Width="100%" />
                    </ContentTemplate>
                </asp:UpdatePanel>
       
        <div style="font-family:Verdana;font-size:16px;font-style:inherit;text-decoration:solid;text-align:center">
            <h3><b>INTRODUCING COMMANDER'S AAYUSH PARK<br/>
            Relish the lifestyle you always dreamed of</b></h3><br />
            <p>Remarkable attribute which will provide better benifits in the long run.Each home comes with a separate entrance<br />
            lobby and dry balcony.Awide range of amenities render the health and lifestyle requirements of the entire family<br />
            - from sports to relaxation.</p><br/>
            <h3><b>SMART FEATURES LIKE -</b></h3>
            <p>time-controlled ligths in common areas contributes to curtail the energy and maintenance costs at every stage of<br /> 
            the home lifecycle.Owning the home is as investment that will reap you happiness and satisfaction for lifetime.<br/>
            We provide various options for the owners to convey the messeges regurding the issues or complaints if any and<br /> 
            try to resolve it as early as possible.Any event organisations or the functions conducted can be discussed and<br /> 
            arrange it in better way via online booking of the club House.All the services are smooth and made user to go friendly.</p>
        </div>
</asp:Content>

