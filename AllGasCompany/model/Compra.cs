using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AllGasCompany.model
{
    public class Compra
    {
        public int id { get; set; }
        public DateTime fecha { get; set; }
        public string nombreVendedor { get; set; }
        public string rut { get; set; }

        public int precio { get; set; }
        public int idVehiculo { get; set; }

        public Compra(int id, DateTime fecha, string nombreVendedor, string rut, int precio, int idVehiculo)
        {
            this.id = id;
            this.fecha = fecha;
            this.nombreVendedor = nombreVendedor;
            this.rut = rut;
            this.precio = precio;
            this.idVehiculo = idVehiculo;
        }
        public static List<Compra> listaCompras = new List<Compra>();
    }
}