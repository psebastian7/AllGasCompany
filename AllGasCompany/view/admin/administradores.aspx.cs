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
    public partial class administradores : System.Web.UI.Page
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
            adminListado.Text = controllerAdministrador.EnlistarAdministradores();
        }
        protected void btnAgregarAdmin_Click(object sender, EventArgs e)
        {
            bool vEmail = false;
            bool vRun2 = false;
            mensaje.Text = "";
            int id;
            string nombre;
            string rut;
            string email;
            int telefono;
            string direccion;
            string pass;

            if (txtId.Text != "" && txtNombre.Text != "" && txtRut.Text != "" && txtEmail.Text != "" && txtTelefono.Text != "" && txtDireccion.Text != "" && txtPass.Text != "")
            {
                bool validarId = true;

                validarId = controllerAdministrador.ValidarId(int.Parse(txtId.Text));
                if (validarId == false)
                {
                    mensaje.Text += "<p>Ya existe un administrador con esa ID</p>";
                }
                bool vRun = false;
                vRun = controllerAdministrador.ValidarRun(txtRut.Text);
                if (vRun == false)
                {
                    mensaje.Text += "<p>RUN invalido</p>";
                }

                vRun2 = controllerAdministrador.ValidarRun2(txtRut.Text);
                if (vRun2 == false)
                {
                    mensaje.Text += "<p>Ya existe un Administrador con ese RUN</p>";
                }

                vEmail = controllerAdministrador.ValidarEmail(txtEmail.Text);
                if (vEmail==false)
                {
                    mensaje.Text += "<p>Ya existe un Administrador con ese Email</p>";
                }

                if (validarId == true && vRun == true && vRun2==true)
                {
                    id = int.Parse(txtId.Text);
                    nombre = txtNombre.Text;
                    rut = txtRut.Text;
                    email = txtEmail.Text;
                    telefono = int.Parse(txtTelefono.Text);
                    direccion = txtDireccion.Text;
                    pass = txtPass.Text;

                    controllerAdministrador.AgregarAdmin(id, nombre, rut, email, telefono, direccion, pass);
                    Response.Redirect("administradores.aspx");
                    mensaje.Text = "<p>Administrador registrado<p>";


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