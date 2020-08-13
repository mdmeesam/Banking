<%@ Page Title="" Language="C#" MasterPageFile="~/Loggedin.master" AutoEventWireup="true" CodeFile="Settings.aspx.cs" Inherits="Settings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="wrapper">
        <div id="left">
            <asp:Menu ID="Menu2" runat="server" BackColor="Silver" Font-Bold="True" Font-Size="X-Large" Font-Strikeout="False" ForeColor="Black">
                <Items>
                    <asp:MenuItem Text="Card Settings" Value="Card Settings"></asp:MenuItem>
                    <asp:MenuItem Text="My Details" Value="My Details"></asp:MenuItem>
                    <asp:MenuItem Text="2 factor authentication" Value="2 factor authentication"></asp:MenuItem>
                    <asp:MenuItem Text="Security &amp; Password" Value="Security &amp; Password"></asp:MenuItem>
                </Items>
                <StaticMenuItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" HorizontalPadding="5px" VerticalPadding="15px" />
                <StaticMenuStyle VerticalPadding="40px" />
            </asp:Menu>
        </div>

        <div id="maincontent">
            &nbsp;&nbsp;&nbsp;&nbsp;<img src="Images/block%20card.PNG" />
        </div>

    </div>
</asp:Content>

