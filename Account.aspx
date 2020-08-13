<%@ Page Title="" Language="C#" MasterPageFile="~/Loggedin.master" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 186px;
        }
        .auto-style5 {
            width: 141px;
        }
        .auto-style6 {
            width: 257px;
        }
        .auto-style7 {
            width: 14px;
        }
        .auto-style8 {
            width: 175px;
        }
        .auto-style9 {
            width: 186px;
            font-size: large;
        }
        .auto-style10 {
            height: 28px;
            background-color: #993300;
        }
        .auto-style11 {
            width: 257px;
            height: 28px;
            background-color: #993300;
        }
        .auto-style12 {
            width: 141px;
            height: 28px;
            background-color: #993300;
        }
        .auto-style13 {
            width: 175px;
            height: 28px;
            background-color: #993300;
        }
        .auto-style14 {
            width: 186px;
            font-size: large;
            height: 28px;
            background-color: #993300;
        }
        .auto-style15 {
            width: 14px;
            height: 28px;
            background-color: #993300;
        }
        .auto-style16 {
            color: #FFFFFF;
        }
        .auto-style17 {
            width: 14px;
            height: 12px;
        }
        .auto-style18 {
            width: 186px;
            height: 12px;
        }
        .auto-style19 {
            width: 175px;
            height: 12px;
        }
        .auto-style20 {
            width: 141px;
            height: 12px;
        }
        .auto-style21 {
            width: 257px;
            height: 12px;
        }
        .auto-style22 {
            height: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="wrapper">
        <div id="left">
            <asp:Menu ID="Menu2" runat="server" BackColor="Silver" Font-Bold="True" Font-Size="X-Large" Font-Strikeout="False" ForeColor="Black">
                <Items>
                    <asp:MenuItem Text="Account Summary" Value="Account Summary"></asp:MenuItem>
                    <asp:MenuItem Text="Transaction History" Value="Transaction History"></asp:MenuItem>
                    <asp:MenuItem Text="Statements" Value="Statements"></asp:MenuItem>
                </Items>
                <StaticMenuItemStyle BorderColor="Black" BorderStyle="Solid" BorderWidth="1px" HorizontalPadding="5px" VerticalPadding="15px" />
                <StaticMenuStyle VerticalPadding="40px" />
            </asp:Menu>
        </div>

        <div id="maincontent">
            
            <table class="auto-style2">
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style3"><strong>Welcome </strong>
                        <asp:Label ID="Name" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style17"></td>
                    <td class="auto-style18"></td>
                    <td class="auto-style19"></td>
                    <td class="auto-style20"></td>
                    <td class="auto-style21"></td>
                    <td class="auto-style22"></td>
                    <td class="auto-style22"></td>
                </tr>
                <tr>
                    <td class="auto-style15"><span class="auto-style16"></td>
                    <td class="auto-style14"><strong>Bank Accounts</strong></span></td>
                    <td class="auto-style13"></td>
                    <td class="auto-style12"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style10"></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style9"><strong>Account Number</strong></td>
                    <td class="auto-style8"><strong>Account Type</strong></td>
                    <td class="auto-style5"><strong>Currency</strong></td>
                    <td class="auto-style6"><strong>Available Balance</strong></td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="accnum" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style8">Savings</td>
                    <td class="auto-style5">OMR</td>
                    <td class="auto-style6">
                        <asp:Label ID="bal" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style6">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>

    </div>  <%-- end of wrapper--%>
</asp:Content>

