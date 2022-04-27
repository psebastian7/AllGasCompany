using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AllGasCompany.model
{
    public class Administrador
    {
        public int id { get; set; }
        public string nombre { get; set; }
        public string rut { get; set; }
        public string email { get; set; }

        public int telefono { get; set; }
        public string direccion { get; set; }
        public string password { get; set; }

        public Administrador(int id, string nombre, string rut, string email, int telefono, string direccion, string password)
        {
            this.id = id;
            this.nombre = nombre;
            this.rut = rut;
            this.email = email;
            this.telefono = telefono;
            this.direccion = direccion;
            this.password = password;


        }
        public static List<Administrador> listaAdministradores = new List<Administrador>();
    }
}