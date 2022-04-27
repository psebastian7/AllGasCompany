using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AllGasCompany.model
{
    public class Vehiculo
    {
        public int id { get; set; }
        public string patente { get; set; }
        public string marca { get; set; }
        public string modelo { get; set; }
        public string color { get; set; }

        public int ano { get; set; }

        public int km { get; set; }

        public string estado { get; set; }
        public int precio { get; set; }

        public Vehiculo(int id, string patente, string marca, string modelo, string color, int ano, int km, string estado, int precio)
        {
            this.id = id;
            this.patente = patente;
            this.marca = marca;
            this.modelo = modelo;
            this.color = color;
            this.ano = ano;
            this.km = km;
            this.estado = estado;
            this.precio = precio;
        }

        public static List<Vehiculo> listaVehiculos = new List<Vehiculo>();
    }


}