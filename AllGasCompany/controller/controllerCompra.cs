using AllGasCompany.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace AllGasCompany.controller
{
    public class controllerCompra
    {
        //Enlistar compras
        public static string EnlistarCompras()
        {
            string com = "";
            List<Compra> compras = Compra.listaCompras;
            foreach (Compra miCom in compras)
            {
                com += "<tr><td>" + miCom.id + "</td>" +
                    "<td> " + miCom.fecha + "</td> " +
                    "<td> " + miCom.nombreVendedor + "</td> " +
                    "<td> " + miCom.rut + "</td> " +
                    "<td> " + miCom.precio + "</td> " +
                    "<td> " + miCom.idVehiculo + "</td></tr> ";
            }
            return com;
        }
        
        public static void AgregarCompra(int id, DateTime fecha, string vendedor, string rut, int precio, int idVehiculo)
        {
            Compra com = new Compra(id, fecha, vendedor, rut, precio, idVehiculo);
            Compra.listaCompras.Add(com);
        }

        public static bool ValidarId(int id)
        {

            foreach (var com in Compra.listaCompras)
            {
                if (id.Equals(com.id))
                {
                    return false;

                }

            }
            return true;
        }

        public static bool ValidarRun(string rn)
        {

            rn = rn.Replace(".", " ").ToUpper();
            Regex expresion = new Regex("^([0-9]+-[0-9K])$");
            string dv = rn.Substring(rn.Length - 1, 1);


            if (!expresion.IsMatch(rn))
            {
                return false;

            }
            else
            {
                char[] charcorte = { '-' };
                string[] rutTemp = rn.Split(charcorte);
                if (dv != digVerificador(int.Parse(rutTemp[0])))
                {

                    return false;

                }

                else
                {

                    return true;
                }
            }


        }

        public static string digVerificador(int r)
        {
            int suma = 0;
            int multiplicador = 1;
            while (r != 0)
            {
                multiplicador++;
                if (multiplicador == 8)
                    multiplicador = 2;
                suma += (r % 10) * multiplicador;
                r = r / 10;

            }
            suma = 11 - (suma % 11);
            if (suma == 11)
            {
                return "0";
            }
            else
            {
                if (suma == 10)
                {
                    return "K";
                }
                else
                {
                    return suma.ToString();
                }
            }
        }


    }
}