using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AllGasCompany.model;
using System.Text.RegularExpressions;


namespace AllGasCompany.controller
{
    public class controllerAdministrador
    {
       
        public static string[] IniciarSesion(string email, string pass)
        {
            String[] usuario = new string[1];

            List<Administrador> admin = Administrador.listaAdministradores;
            Administrador admi = admin.Find(aux => aux.email == email && aux.password == pass);
            if (admi != null)
            {
                usuario[0] = admi.nombre;
                return usuario;
            }
            return null;
        }
        public static string EnlistarAdministradores()
        {
            string admin = "";
            List<Administrador> administradores = Administrador.listaAdministradores;
            foreach (Administrador admi in administradores)
            {
                admin += "<tr><td>" + admi.id + "</td>" +
                    "<td> " + admi.nombre + "</td>" +
                     "<td> " + admi.rut + "</td>" +
                      "<td> " + admi.email + "</td>" +
                       "<td> " + admi.telefono + "</td>" +
                        "<td> " + admi.direccion + "</td>";
            }
            return admin;
        }

        public static void AgregarAdmin(int id, string nombre, string rut, string email, int telefono, string direccion, string password)
        {
            Administrador admin = new Administrador(id, nombre, rut, email, telefono, direccion, password);
            Administrador.listaAdministradores.Add(admin);
        }

        public static bool ValidarId(int id)
        {
            
            foreach (var admi in Administrador.listaAdministradores)
            {
                if (id.Equals(admi.id))
                {
                   return false;
                    
                }

            }
            return true;
        }

        public static bool ValidarEmail(string email)
        {

            foreach (var admi in Administrador.listaAdministradores)
            {
                if (email.Equals(admi.email))
                {
                    return false;

                }

            }
            return true;
        }
        public static bool ValidarRun2(string run)
        {

            foreach (var admi in Administrador.listaAdministradores)
            {
                if (run.Equals(admi.rut))
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