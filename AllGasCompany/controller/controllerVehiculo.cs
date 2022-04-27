using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AllGasCompany.model;
namespace AllGasCompany.controller
{
    public class controllerVehiculo
    {
        //Enlistar vehiculos
        public static string EnlistarVehiculosV()
        {
            string ve = "";
            List<Vehiculo> vehiculos = Vehiculo.listaVehiculos;
            foreach (Vehiculo miVe in vehiculos)
            {
                if (miVe.estado.Equals("En venta"))
                {
                    ve += "<tr><td>" + miVe.id + "</td>" +
                                         "<td> " + miVe.patente + "</td> " +
                                         "<td> " + miVe.marca + "</td> " +
                                         "<td> " + miVe.modelo + "</td> " +
                                         "<td> " + miVe.color + "</td> " +
                                         "<td> " + miVe.ano + "</td> " +
                                         "<td> " + miVe.km + "</td> " +
                                         "<td> " + miVe.precio + "</td></tr> ";
                }
              
            }
            return ve;
        }
        public static string EnlistarVehiculos()
        {
            string ve = "";
            List<Vehiculo> vehiculos = Vehiculo.listaVehiculos;
            foreach(Vehiculo miVe in vehiculos)
            {
                ve += "<tr><td>" + miVe.id + "</td>" +
                       "<td> " + miVe.patente + "</td> " +
                       "<td> " + miVe.marca + "</td> " +
                       "<td> " + miVe.modelo + "</td> " +
                       "<td> " + miVe.color + "</td> " +
                       "<td> " + miVe.ano + "</td> " +
                       "<td> " + miVe.km + "</td> " +
                       "<td> " + miVe.estado + "</td> " +
                       "<td> " + miVe.precio + "</td></tr> ";
            }
            return ve;
        }

        public static void AgregarVehiculo(int id, string patente, string marca, string modelo, string color, int ano, int km, string estado, int precioV)
        {
            Vehiculo ve=new Vehiculo(id,patente,marca,modelo,color,ano,km,estado,precioV);
            Vehiculo.listaVehiculos.Add(ve);
        }
        public static bool ValidarId(int id)
        {

            foreach (var ve in Vehiculo.listaVehiculos)
            {
                if (id.Equals(ve.id))
                {
                    return false;

                }

            }
            return true;
        }
        public static bool ValidarIdRepa(int id)
        {

            foreach (var ve in Vehiculo.listaVehiculos)
            {
                if (id.Equals(ve.id))
                {
                    return true;

                }

            }
            return false;
        }
    }
}