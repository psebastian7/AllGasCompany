<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage/MPAdmin.Master" AutoEventWireup="true" CodeBehind="reparaciones.aspx.cs" Inherits="AllGasCompany.view.admin.reparaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SectionPrincipalAdmin" runat="server">
    <form id="formReparaciones" runat="server">
         <nav>
            <asp:LinkButton ID="lbLogout" runat="server" OnClick="lbLogout_Click"><br />CERRAR SESIÓN</asp:LinkButton>
        </nav>
        <asp:Label ID="user" runat="server" ></asp:Label>
        <h2>REPARACIONES</h2>
        <h2>AGREGAR REPARACIONES</h2>
        <table class="auto-style1">
            <tr>
                <td>ID</td>
                <td>
                    <asp:TextBox ID="txtID" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtID" ErrorMessage="Debe ingresar una ID" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtID" ErrorMessage="Ingrese un numero" ForeColor="Red" ValidationExpression="[0-9]*">(*)</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Fecha</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtFecha" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFecha" ErrorMessage="Debe ingresar una fecha" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Precio</td>
                <td>
                    <asp:TextBox ID="txtPrecio" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPrecio" ErrorMessage="Debe ingresar un precio" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtPrecio" ErrorMessage="Debe ingresar un numero" ForeColor="Red" ValidationExpression="[0-9]*">(*)</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>Descripción</td>
                <td>
                    <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtDescripcion" ErrorMessage="Debe ingresar una descripcion" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>ID Vehiculo</td>
                <td>
                    <asp:TextBox ID="txtIdV" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtIdV" ErrorMessage="Debe ingresar una ID de vehiculo" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtIdV" ErrorMessage="Ingrese un numero" ForeColor="Red" ValidationExpression="[0-9]*">(*)</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnAgregarRepa" runat="server" Text="Agregar" OnClick="btnAgregarRepa_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <asp:Label ID="mensaje" runat="server"></asp:Label>
        <table class="tableEnlistar">
        <thead>
            <tr>
                <th>ID</th>
                <th>Fecha</th>
                <th>Precio</th>
                <th>Descripción</th>
                <th>ID Vehiculo</th>
      

            </tr>
        </thead>
        <tbody>
            <asp:Label ID="reparacionesListado" runat="server"></asp:Label>
        </tbody>
        </table>
    </form>
</asp:Content>
