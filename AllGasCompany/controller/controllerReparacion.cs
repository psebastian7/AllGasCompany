using AllGasCompany.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AllGasCompany.controller
{
    public class controllerReparacion
    {
        public static string EnlistarReparaciones()
        {
            string repa = "";
            List<Reparacion> reparaciones = Reparacion.listaReparaciones;

            foreach (Reparacion miRepa in reparaciones)
            {
                repa += "<tr><td>" + miRepa.id + "</td>" +
                    "<td> " + miRepa.fecha + "</td> " +
                    "<td> " + miRepa.precio + "</td> " +
                    "<td> " + miRepa.descripcion + "</td> " +
                    "<td> " + miRepa.idVehiculo + "</td> ";
                  
            }
            return repa;
        }

        public static void AgregarReparacion(int id, DateTime fecha, int precio, string descripcion, int idVehiculo)
        {
            Reparacion repa = new Reparacion(id, fecha, precio, descripcion, idVehiculo);
            Reparacion.listaReparaciones.Add(repa);
        }
        public static bool ValidarId(int id)
        {

            foreach (var repa in Reparacion.listaReparaciones)
            {
                if (id.Equals(repa.id))
                {
                    return false;

                }

            }
            return true;
        }
    }
}