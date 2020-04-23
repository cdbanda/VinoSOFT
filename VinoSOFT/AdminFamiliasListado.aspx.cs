using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;


namespace VinoSOFT
{
    public partial class AdminFamiliasListado : System.Web.UI.Page
    {
        BLL.BLL_Familia gestorFamilia = new BLL.BLL_Familia();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {

            }
        }

        private void llenarDgv(Hashtable filtros = null) {
            List<BE.BE_Familia> registros = new List<BE.BE_Familia>();
            registros = gestorFamilia.listar(filtros);
            txtCantRegistros.Text = registros.Count.ToString();
            DgvFamilias.AutoGenerateColumns = false;
            DgvFamilias.DataSource = registros;
            DgvFamilias.DataBind();
        }

        protected void DgvFamilias_PageIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DgvFamilias_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }
    }
}