<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmmaUseCaseJacobClayton._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <p>
        <asp:Button ID="btnLogout" runat="server" OnClick="btnLogout_Click" Text="LOGOUT" />
        <asp:Label ID="lblLogin" runat="server" Text="PLEASE LOGIN TO PROCEED"></asp:Label>
    </p>


</asp:Content>
