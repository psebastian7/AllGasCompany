using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AllGasCompany.model;
using AllGasCompany.controller;

namespace AllGasCompany.view.admin
{
    public partial class compras : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Response.Redirect("../login.aspx?error=a1");
            }
            else
            {
                user.Text = "<h3>Bienvenido " + Session["usuario"] + "</h3>";
            }
            comprasListado.Text = controller.controllerCompra.EnlistarCompras();
        }

        protected void TextBox14_TextChanged(object sender, EventArgs e)
        {

        }

        
        protected void TextBox12_TextChanged(object sender, EventArgs e)
        {

        }

        protected void dListEstado_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtKm_TextChanged(object sender, EventArgs e)
        {

        }
        protected void btnAgregarCom_Click(object sender, EventArgs e)
        {
            int id;
            DateTime fecha;
            string vendedor, estado;
            string rut, patente, marca, modelo, color;
            int precio, precioV;

            int idVehiculo, ano, km;
            mensaje.Text = "";
            if (txtIdCompra.Text != "" && txtIdVehiculo.Text != "" && txtPrecio.Text != "" && txtPrecioV.Text != "")
            {
                bool validarid = true;
                bool validarid2 = true;
                bool validarRut = false;
                validarid = controllerCompra.ValidarId(int.Parse(txtIdCompra.Text));
                if (validarid == false)
                {
                    mensaje.Text += " <p>Ya existe esa ID de compra </p>";
                }

                validarid2 = controllerVehiculo.ValidarId(int.Parse(txtIdVehiculo.Text));
                if (validarid2 == false)
                {
                    mensaje.Text += " <p>Ya existe esa ID de vehiculo </p>";
                }

                validarRut = controllerCompra.ValidarRun(txtRut.Text);
                if (validarRut == false)
                {
                    mensaje.Text += " <p>RUT invalido </p>";
                }

                if (validarid == true && validarid2 == true && validarRut == true)
                {
                    id = int.Parse(txtIdCompra.Text);
                    fecha = DateTime.Parse(txtFecha.Text);
                    vendedor = txtVendedor.Text;
                    rut = txtRut.Text;
                    precio = int.Parse(txtPrecio.Text);
                    idVehiculo = int.Parse(txtIdVehiculo.Text);
                    patente = txtPatente.Text;
                    marca = txtMarca.Text;
                    modelo = txtModelo.Text;
                    color = txtColor.Text;
                    ano = int.Parse(txtAno.Text);
                    km = int.Parse(txtKm.Text);
                    estado = dListEstado.SelectedValue;
                    precioV = int.Parse(txtPrecioV.Text);

                    controllerVehiculo.AgregarVehiculo(idVehiculo, patente, marca, modelo, color, ano, km, estado, precioV);
                    controllerCompra.AgregarCompra(id, fecha, vendedor, rut, precio, idVehiculo);
                    
               
                    Response.Redirect("compras.aspx");
                    mensaje.Text = " <p>Compra y vehiculos agregado </p>";
                }

            }

        }
        protected void lbLogout_Click(object sender, EventArgs e)
        {


            Session.RemoveAll();
            Response.Redirect("../index.aspx");

        }


    }
}