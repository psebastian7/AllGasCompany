using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AllGasCompany.model;

namespace AllGasCompany.view.admin
{
    public partial class adminVehiculos : System.Web.UI.Page
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
            vehiculosListado.Text = controller.controllerVehiculo.EnlistarVehiculos();
        }
        protected void lbLogout_Click(object sender, EventArgs e)
        {


            Session.RemoveAll();
            Response.Redirect("../index.aspx");

        }

       
    }
}