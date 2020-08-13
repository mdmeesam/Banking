<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
        }
        .auto-style3 {
            text-decoration: underline;
            font-family: narrow;
        }
        .auto-style4 {
            font-family: narrow;
            font-size: xx-large;
        }
        .auto-style5 {
            font-size: xx-large;
        }
        .auto-style6 {
            font-family: "Arial Narrow";
        }
        .auto-style7 {
            width: 100%;
        }
        .auto-style8 {
            width: 600px;
        }
        .auto-style9 {
            width: 600px;
            font-family: "Arial Narrow";
        }
        .auto-style10 {
            width: 600px;
            height: 34px;
        }
        .auto-style11 {
            height: 34px;
        }
        .auto-style12 {
            width: 50px;
        }
        .auto-style13 {
            width: 50px;
            height: 34px;
        }
        .auto-style14 {
            width: 50px;
            font-family: "Arial Narrow";
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="auto-style7">
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style8"><span class="auto-style6"><span class="auto-style5"><span class="auto-style3"><strong>APPLICAT</strong></span></span><span class="auto-style4"><strong>ION DETAILS</strong></span></span></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>Date of Birth</td>
        </tr>
        <tr>
            <td class="auto-style12">
                &nbsp;</td>
            <td class="auto-style8">
    <span class="auto-style1">Are you and existing customer?</span></td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">&nbsp;</td>
            <td class="auto-style10">
                <asp:Button ID="ExistingYes" runat="server" OnClick="ExistingYes_Click" Text="Yes" />
                <asp:Button ID="NewCustomer" runat="server" OnClick="NewCustomer_Click" Text="No" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style11"></td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>Mobile Number</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="Incorrect Number" Font-Bold="True" ForeColor="#990000" ValidationExpression="^[1-9]{1}\d{7}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style14">&nbsp;</td>
            <td class="auto-style9"><span class="auto-style5"><span class="auto-style3"><strong>TELL US </strong></span></span><span class="auto-style4"><strong>ABOUT YOURSELF</strong></span></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>Email address</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style8">Title/Salutation</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="Please Enter correct Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Bold="True"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style8">First Name</td>
            <td>Residential Address</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Cannot be blank" ForeColor="#990000" Font-Bold="True"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style8">Last Name</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style8">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Cannot be blank" ForeColor="#990000" Font-Bold="True"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:Button ID="Apply" runat="server" OnClick="Apply_Click" Text="Next &gt;" />
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">&nbsp;</td>
            <td class="auto-style8">&nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    
</asp:Content>

