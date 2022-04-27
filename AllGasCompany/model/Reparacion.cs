using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AllGasCompany.model
{
    public class Reparacion
    {
        public int id { get; set; }
        public DateTime fecha { get; set; }
        public int precio { get; set; }
        public string descripcion { get; set; }

        public int idVehiculo { get; set; }

        public Reparacion(int id, DateTime fecha, int precio, string descripcion, int idVehiculo)
        {
            this.id = id;
            this.fecha = fecha;
            this.precio = precio;
            this.descripcion = descripcion;
            this.idVehiculo = idVehiculo;
        }
        public static List<Reparacion> listaReparaciones = new List<Reparacion>();
    }
}