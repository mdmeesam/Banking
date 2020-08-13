<%@ Page Title="" Language="C#" MasterPageFile="~/Loggedin.master" AutoEventWireup="true" CodeFile="Transfers.aspx.cs" Inherits="Transfers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="wrapper">
        <div id="left">
            <asp:Menu ID="Menu2" runat="server" BackColor="Silver" Font-Bold="True" Font-Size="X-Large" Font-Strikeout="False" ForeColor="Black">
                <Items>
                    <asp:MenuItem Text="Local Transfers" Value="Local Transfers"></asp:MenuItem>
                    <asp:MenuItem Text="International Transfers" Value="International Transfers"></asp:MenuItem>
                    <asp:MenuItem Text="Mobile TopUp" Value="Mobile TopUp"></asp:MenuItem>
                    <asp:MenuItem Text="Payee" Value="Payee"></asp:MenuItem>
                </Items>
                <StaticMenuItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" HorizontalPadding="5px" VerticalPadding="15px" />
                <StaticMenuStyle VerticalPadding="40px" />
            </asp:Menu>
        </div>

        <div id="maincontent">
            &nbsp;&nbsp;&nbsp;&nbsp;<img src="Images/transfer%20funds.jpg" />
        </div>

    </div>
</asp:Content>

