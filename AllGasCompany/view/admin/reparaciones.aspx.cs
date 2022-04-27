using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AllGasCompany.controller;


namespace AllGasCompany.view.admin
{
    public partial class reparaciones : System.Web.UI.Page
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
            reparacionesListado.Text = controllerReparacion.EnlistarReparaciones();
        }
        protected void btnAgregarRepa_Click(object sender, EventArgs e)
        {
            mensaje.Text = "";
            int id;
            DateTime fecha;
            int precio;
            string descripcion;
            int idV;
            if (txtID.Text != "" && txtFecha.Text != "" && txtPrecio.Text != "" && txtDescripcion.Text != "" && txtIdV.Text != "")
            {
                bool validarid = false;
                bool validarid2 = true;

                validarid2 = controllerReparacion.ValidarId(int.Parse(txtID.Text));

                if (validarid2 == false)
                {
                    mensaje.Text += "<p>Ya existe una reparación con esa ID</p>";
                }



                validarid = controllerVehiculo.ValidarIdRepa(int.Parse(txtIdV.Text));

                if (validarid == false)
                {
                    mensaje.Text += "<p>No existe un vehiculo con esa ID</p>";
                }

                if (validarid2 == true && validarid == true)
                {
                    id = int.Parse(txtID.Text);
                    fecha = DateTime.Parse(txtFecha.Text);
                    precio = int.Parse(txtPrecio.Text);
                    descripcion = txtDescripcion.Text;
                    idV = int.Parse(txtIdV.Text);

                    controllerReparacion.AgregarReparacion(id, fecha, precio, descripcion, idV);
                    Response.Redirect("reparaciones.aspx");
                  
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