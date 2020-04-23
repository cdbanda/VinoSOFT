using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VinoSOFT
{
    public partial class NoticiaEditar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {

            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            BLL.BLL_Noticia gestorNoticia = new BLL.BLL_Noticia();
            string texto = "";
            texto = txtEditorNoticia.Text;

            literalEditorNoticia.Text = texto;

            BE.BE_Noticia noticia = new BE.BE_Noticia();
            noticia.CATEGORIA = "Drones";
            noticia.CUERPO = texto;
            noticia.TITULO = "vacio";

            gestorNoticia.insertarNoticia(noticia);

        }
    }
}