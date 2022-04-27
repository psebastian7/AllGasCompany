<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage/MPUsuario.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="AllGasCompany.view.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 33px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SectionPrincipal" runat="server">
    <form id="form1" runat="server">
        <h2>INICIAR SESIÓN</h2>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Email</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Ingrese email" ControlToValidate="txtEmail" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Ingrese un email valido" ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">(*)</asp:RegularExpressionValidator>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>Contraseña</td>
                <td>
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Ingrese contraseña" ControlToValidate="txtPass" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Iniciar sesión" OnClick="btnLogin_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <asp:Label ID="mensaje" runat="server" ></asp:Label>
    </form>
</asp:Content>
