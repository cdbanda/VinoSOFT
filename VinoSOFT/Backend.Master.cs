using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VinoSOFT
{
    public partial class Backend : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public string isActive(string pagina) {
            string urlActual = HttpContext.Current.Request.Url.AbsoluteUri;
            string pagActual = urlActual.Substring(urlActual.LastIndexOf("/")+1);
            if (pagina == pagActual) {
                return "active";
            }
            return "";
        }

        public string isActive(string[] paginas)
        {
            string urlActual = HttpContext.Current.Request.Url.AbsoluteUri;
            string pagActual = urlActual.Substring(urlActual.LastIndexOf("/") + 1);
            if (paginas.Contains(pagActual))
            {
                return "active";
            }
            return "";
        }

    }
}