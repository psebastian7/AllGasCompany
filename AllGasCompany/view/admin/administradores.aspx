<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage/MPAdmin.Master" AutoEventWireup="true" CodeBehind="administradores.aspx.cs" Inherits="AllGasCompany.view.admin.administradores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SectionPrincipalAdmin" runat="server">
    <form id="formAdmin" runat="server">
        <nav>
            <asp:LinkButton ID="lbLogout" runat="server" OnClick="lbLogout_Click"><br />CERRAR SESIÓN</asp:LinkButton>
        </nav>
        <asp:Label ID="user" runat="server" ></asp:Label>
        <h2>ADMINISTRADORES</h2>
       <br />
        <br />
        <h3>Agregar Administradores</h3>
        <table class="auto-style1">
            <tr>
                <td>ID</td>
                <td>
                    <asp:TextBox ID="txtId" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtId" ErrorMessage="Ingrese ID" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtId" ErrorMessage="Debe ingresar numeros" ForeColor="Red" ValidationExpression="[0-9]*">(*)</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Nombre</td>
                <td>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNombre" ErrorMessage="Ingrese nombre" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>RUT</td>
                <td>
                    <asp:TextBox ID="txtRut" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtRut" ErrorMessage="Ingrese RUT" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail" ErrorMessage="Ingrese Email" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Ingrese un email valido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">(*)</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Telefono</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtTelefono" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTelefono" ErrorMessage="Ingrese telefono" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtId" ErrorMessage="Debe ingresar numeros" ForeColor="Red" ValidationExpression="[0-9]*">(*)</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Direccion</td>
                <td>
                    <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtDireccion" ErrorMessage="Ingrese dirección" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Contraseña</td>
                <td>
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPass" ErrorMessage="Ingrese contraseña" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnAgregarAdmin" runat="server" Text="Agregar" OnClick="btnAgregarAdmin_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <asp:Label ID="mensaje" runat="server" ></asp:Label>
        <br />
        <br />
        <h3>Tabla de Administradores</h3>
        <table class="tableEnlistar">
            <thead>
                <tr>
                <td>ID</td>
                <td>Nombre</td>
                <td>RUT</td>
                <td>Email</td>
                <td>Telefono</td>
                <td>Direccion</td>
                    </tr>
            </thead>
            <tbody>
                <asp:Label ID="adminListado" runat="server" ></asp:Label>
            </tbody>
        </table>
    </form>
</asp:Content>
