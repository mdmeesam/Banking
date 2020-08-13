<%@ Page Title="" Language="C#" MasterPageFile="~/Loggedin.master" AutoEventWireup="true" CodeFile="Bpay.aspx.cs" Inherits="Bpay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="wrapper">
        <div id="left">
            <asp:Menu ID="Menu2" runat="server" BackColor="Silver" Font-Bold="True" Font-Size="X-Large" Font-Strikeout="False" ForeColor="Black" Width="200px">
                <Items>
                    <asp:MenuItem Text="Bill Payment" Value="Pay Bill"></asp:MenuItem>
                    <asp:MenuItem Text="Payment List" Value="Payment List"></asp:MenuItem>
                    <asp:MenuItem Text="Payee List" Value="Payee List"></asp:MenuItem>
                </Items>
                <StaticMenuItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" HorizontalPadding="5px" VerticalPadding="15px" />
                <StaticMenuStyle VerticalPadding="40px" />
            </asp:Menu>
        </div>

        <div id="maincontent">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <img src="Images/bpay.PNG" />
        </div>
    </div>
</asp:Content>

