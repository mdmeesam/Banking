<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            background-color:darkred;
            color:white;
        }
        .auto-style2 {
            width: 191px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            width: 191px;
            height: 26px;
        }
        .auto-style8 {
            width: 191px;
            text-align: left;
            height: 62px;
        }
        .auto-style10 {
            font-size: large;
        }
        .auto-style11 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style12 {
            width: 256px;
            text-align: center;
            height: 62px;
        }
        .auto-style13 {
            text-align: right;
            width: 256px;
        }
        .auto-style14 {
            height: 26px;
            text-align: right;
            width: 256px;
        }
        .auto-style15 {
            width: 256px;
        }
        .auto-style16 {
            width: 251px;
            text-align: left;
            height: 62px;
            font-size: xx-large;
        }
        .auto-style17 {
            text-align: left;
            width: 251px;
            font-size: large;
        }
        .auto-style18 {
            height: 26px;
            text-align: left;
            width: 251px;
        }
        .auto-style19 {
            width: 251px;
        }
        .auto-style20 {
            height: 62px;
        }
        .auto-style21 {
            width: 256px;
            text-align: center;
            height: 44px;
        }
        .auto-style22 {
            width: 251px;
            text-align: left;
            height: 44px;
            font-size: xx-large;
        }
        .auto-style23 {
            width: 191px;
            text-align: left;
            height: 44px;
        }
        .auto-style24 {
            height: 44px;
        }
        .auto-style25 {
            width: 191px;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr class="auto-style10">
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td class="auto-style20">&nbsp;</td>
        </tr>
        <tr class="auto-style10">
            <td class="auto-style21"></td>
            <td class="auto-style22"><strong>Internet Banking</strong></td>
            <td class="auto-style23"></td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style17"><strong>DCNT ID</strong></td>
            <td class="auto-style25">
                <strong>Password</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="160px"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="30px" Width="160px"></asp:TextBox>
            </td>
            <td class="auto-style3"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style11" OnClick="Button1_Click" Text="Login" BackColor="Black" ForeColor="White" />
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
&nbsp;
</asp:Content>

