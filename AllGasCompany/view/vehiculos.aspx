<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage/MPUsuario.Master" AutoEventWireup="true" CodeBehind="vehiculos.aspx.cs" Inherits="AllGasCompany.view.vehiculos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SectionPrincipal" runat="server">
      <h2>VEHICULOS</h2>
    <form id="formVehiculos2" runat="server">
        
        <table class="table2">
        <thead>
            <tr>
                <th>ID</th>
                <th>Patente</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Color</th>
                <th>Año</th>
                <th>KM</th>
                <th>Precio</th>

            </tr>
        </thead>
        <tbody>
            <asp:Label ID="vehiculosListado2" runat="server"></asp:Label>
        </tbody>
        </table>
    </form>
</asp:Content>
