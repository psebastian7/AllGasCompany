<%@ Page Title="" Language="C#" MasterPageFile="~/masterPage/MPAdmin.Master" AutoEventWireup="true" CodeBehind="compras.aspx.cs" Inherits="AllGasCompany.view.admin.compras" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 27px;
        }
        .auto-style3 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="SectionPrincipalAdmin" runat="server">
    

    <form id="formCompras" runat="server">
       <nav>
            <asp:LinkButton ID="lbLogout" runat="server" OnClick="lbLogout_Click"><br />CERRAR SESIÓN</asp:LinkButton>
        </nav>
        <asp:Label ID="user" runat="server" ></asp:Label>
        <h2>COMPRAS</h2>
       <br />
        <br />
        <h3>Agregar compra</h3>
             <table class="auto-style1">
            <tr>
                <td>ID</td>
                <td>
                    <asp:TextBox ID="txtIdCompra" runat="server" TextMode="Number" min="1"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtIdCompra" ErrorMessage="Ingrese ID" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Ingrese un numero" ValidationExpression="[0-9]*" Text="(*)" ControlToValidate="txtIdCompra" ForeColor="Red"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td>Fecha</td>
                <td>
                    <asp:TextBox ID="txtFecha" runat="server" TextMode="Date"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtFecha" ErrorMessage="Ingrese fecha" ForeColor="Red" Text="(*)"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Vendedor</td>
                <td>
                    <asp:TextBox ID="txtVendedor" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtVendedor" ErrorMessage="Ingrese nombre del vendedor" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>RUT</td>
                <td>
                    <asp:TextBox ID="txtRut" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtRut" ErrorMessage="Ingrese RUT" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Precio</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtPrecio" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPrecio" ErrorMessage="Ingrese Precio de compra" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Debe ingresar un numero" Text="(*)" ValidationExpression="[0-9]*" ControlToValidate="txtPrecio" ForeColor="Red"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td>ID Vehiculo</td>
                <td>
                    <asp:TextBox ID="txtIdVehiculo" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtIdVehiculo" ErrorMessage="Ingrese ID del vehiculo" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Ingrese un numero" Text="(*)" ControlToValidate="txtIdVehiculo" ValidationExpression="[0-9]*" ForeColor="Red"></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td>Patente</td>
                <td>
                    <asp:TextBox ID="txtPatente" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtPatente" ErrorMessage="Ingrese Patente" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Marca</td>
                <td>
                    <asp:TextBox ID="txtMarca" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtMarca" ErrorMessage="Ingrese Marca" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Modelo</td>
                <td>
                    <asp:TextBox ID="txtModelo" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtModelo" ErrorMessage="Ingrese Modelo" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Color</td>
                <td>
                    <asp:TextBox ID="txtColor" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtColor" ErrorMessage="Ingrese Color" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Año</td>
                <td>
                    <asp:TextBox ID="txtAno" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtAno" ErrorMessage="Ingrese Año" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>KM</td>
                <td>
                    <asp:TextBox ID="txtKm" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtKm" ErrorMessage="Ingrese KM" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Estado</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="dListEstado" runat="server">
                        <asp:ListItem>En venta</asp:ListItem>
                        <asp:ListItem>En espera</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style3">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="dListEstado" ErrorMessage="Ingrese Estado" ForeColor="Red">(*)</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Precio de venta</td>
                <td>
                    <asp:TextBox ID="txtPrecioV" runat="server" TextMode="Number"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtPrecioV" ErrorMessage="Ingrese Precio de venta" ForeColor="Red" Text="(*)"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Debe ingresar numeros" ValidationExpression="[0-9]*" Text="(*)" ControlToValidate="txtPrecioV" ForeColor="Red"></asp:RegularExpressionValidator></td>
            </tr>
             <tr>
                <td>
                    
                 </td>
                <td>
                 <asp:Button ID="btnAgregarCom" runat="server" Text="Agregar" OnClick="btnAgregarCom_Click" />
                </td>
                <td>
                    
                 </td>
            </tr>
        </table>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <asp:Label ID="mensaje" runat="server" ></asp:Label>
        <br />
         <br />
        <h3>Tabla de compras</h3>
          <table class="tableEnlistar">
        <thead>
            <tr>
                <th>ID</th>
                <th>Fecha</th>
                <th>Vendedor</th>
                <th>RUT</th>
                <th>Precio</th>
                <th>ID Vehiculo</th>

            </tr>
        </thead>
        <tbody>
            <asp:Label ID="comprasListado" runat="server"></asp:Label>
        </tbody>
        </table>
    </form>
  
    
    
        <article>


        
        

  </article>
    
      
</asp:Content>
