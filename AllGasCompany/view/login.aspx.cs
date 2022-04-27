using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AllGasCompany.controller;

namespace AllGasCompany.view
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["error"] !=null)
            {
                String error = Request.Params["error"];
                if (error =="a1")
                {
                    mensaje.Text = "Debe iniciar sesión";
                }
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string pass = txtPass.Text;

            String[] usuario = new string[1];
            usuario = controllerAdministrador.IniciarSesion(email, pass);

            if (usuario !=null)
            {
                Session["usuario"] = usuario[0];
                Response.Redirect("admin/compras.aspx");

            }
            else
            {
                mensaje.Text = "Usuario incorrecto";
            }
        }
    }
}