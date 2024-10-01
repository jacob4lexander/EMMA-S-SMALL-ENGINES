<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmmaUseCaseJacobClayton.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <span class="auto-style2">Login</span><br />
<br />
<table>
    <tr>
        <td class="auto-style1">Username:</td>
        <td>
            <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">Password:</td>
        <td>
            <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
        </td>
    </tr>
</table>
<br />
<asp:Button ID="btnLogin" runat="server" OnClick="Login_Click" Text="Login" />
<asp:Button ID="btnRegister" runat="server" CausesValidation="False" OnClick="Register_Click" Text="Register" />
<br />
<br />
<asp:Label ID="lblMessage" runat="server"></asp:Label>
<br />
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="Username is required"></asp:RequiredFieldValidator>
<br />
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="Password is required"></asp:RequiredFieldValidator>
<br />
<br />
    </asp:Content>
