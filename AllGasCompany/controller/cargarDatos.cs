using AllGasCompany.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AllGasCompany.controller
{
    public class cargarDatos
    {
        public static void Cargar()
        {
            if (Administrador.listaAdministradores.Count==0)
            {
                Administrador admin = new Administrador(1, "admin", "1111-1", "admin@gmail.com", 1234, "sdsdsd", "admin");
                Administrador.listaAdministradores.Add(admin);

                Administrador admin2 = new Administrador(2, "admin2", "222-2", "admin2@gmail.com", 1234, "sdsdsd", "admin2");
                Administrador.listaAdministradores.Add(admin2);
            }

            if (Compra.listaCompras.Count==0)
            {
                DateTime date = new DateTime(2018, 01, 01);
                Compra compra = new Compra(1, date, "juan", "asdsd-s", 1111, 1);
                Compra.listaCompras.Add(compra);

                date = new DateTime(2017, 01, 01);
                Compra compra2 = new Compra(2, date, "pedro", "sdsdsd-d", 2222, 2);
                Compra.listaCompras.Add(compra2);
            }

            if (Vehiculo.listaVehiculos.Count==0)
            {
                Vehiculo vehiculo = new Vehiculo(1, "sdsd", "Hyundai", "Santafe", "rojo", 2010, 12, "En venta", 1111);
                Vehiculo.listaVehiculos.Add(vehiculo);
            }

            
        }
       
    }
}