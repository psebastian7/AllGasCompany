<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage/MPAdmin.Master" AutoEventWireup="true" CodeBehind="adminVehiculos.aspx.cs" Inherits="AllGasCompany.view.admin.adminVehiculos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SectionPrincipalAdmin" runat="server">
    
    
    <form id="formVehiculos" runat="server">
         <nav>
            <asp:LinkButton ID="lbLogout" runat="server" OnClick="lbLogout_Click"><br />CERRAR SESIÓN</asp:LinkButton>
        </nav>
        <asp:Label ID="user" runat="server" ></asp:Label>
        <h2>VEHICULOS(Administración)</h2>
        <br />
        <br />
        <h3>Tabla de Vehiculos</h3>
        <table class="tableEnlistar">
        <thead>
            <tr>
                <th>ID</th>
                <th>Patente</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Color</th>
                <th>Año</th>
                <th>KM</th>
                <th>Estado</th>
                <th>Precio</th>

            </tr>
        </thead>
        <tbody>
            <asp:Label ID="vehiculosListado" runat="server"></asp:Label>
        </tbody>
        </table>
    </form>
</asp:Content>
