using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace VinoSOFT
{
    public class Mensajes
    {
        public string mostrarMensaje(string mensaje) {
            string alert = "<script>alert('"+mensaje+"')</script>";
            return alert;
        }
    }
}