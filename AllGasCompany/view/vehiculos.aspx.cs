using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AllGasCompany.view
{
    public partial class vehiculos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            vehiculosListado2.Text = controller.controllerVehiculo.EnlistarVehiculosV();
        }
    }
}