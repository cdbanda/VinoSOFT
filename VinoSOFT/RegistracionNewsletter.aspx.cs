using AjaxControlToolkit;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace VinoSOFT
{
    public partial class RegistracionNewsletter : System.Web.UI.Page
    {
        BLL.BLL_Newsletter gestorNewsletter = new BLL.BLL_Newsletter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                limpiarPantalla();
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            //bool ok = false;

            //if (string.IsNullOrEmpty(checkCaptcha.Value))
            //{
            //    Response.Write("<script>alert('Fallo capcha')</script>");
            //}
            //else
            //{
            //    BE.BE_UsuarioSuscripcion usuario = new BE.BE_UsuarioSuscripcion();
            //    usuario.EMAIL = inpAltaEmail.Text;
            //    foreach (ListItem item in checkBoxListReg.Items)
            //    {
            //        if (string.Equals(item.Value, "Imagenes") && item.Selected)
            //        {
            //            usuario.IMAGENES = 1;
            //        }
            //        if (string.Equals(item.Value, "Riego") && item.Selected)
            //        {
            //            usuario.RIEGO = 1;
            //        }
            //        if (string.Equals(item.Value, "Humedad") && item.Selected)
            //        {
            //            usuario.HUMEDAD = 1;
            //        }
            //    }

            //    ok = gestorNewsletter.insertarMail(usuario);

            //    if (ok)
            //    {

            //        AjaxControlToolkit.ModalPopupExtender mpelogin = (AjaxControlToolkit.ModalPopupExtender)Page.Master.FindControl("modalPopMaster");
            //        mpelogin.Show();

            //        //Response.Write("<script>alert('Alta Correcta')</script>");
            //        limpiarPantalla();
            //    }
            //    else
            //    {
            //        Response.Write("<script>alert('Error al suscribirse')</script>");
            //    }
            //}

            if (IsPostBack)
            {
                // validate the Captcha to check we're not dealing with a bot
                bool isHuman = ExampleCaptcha.Validate(CaptchaCodeTextBox.Text);

                CaptchaCodeTextBox.Text = null; // clear previous user input

                if (!isHuman)
                {
                    // TODO: Captcha validation failed, show error message  
                    Response.Write("<script language=javascript>alert('ERROR');</script>");
                }
                else
                {
                    // TODO: captcha validation succeeded; execute the protected action
                    Response.Write("<script language=javascript>alert('OK');</script>");
                }
            }


        }

        protected void CheckBoxRequired_ServerValidate(object sender, ServerValidateEventArgs e)
        {
            e.IsValid = chkTyC.Checked;
        }

        protected void CheckBoxListReg_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (checkBoxListReg.Items[3].Selected == true)
            {
                foreach (ListItem ls in checkBoxListReg.Items)
                {
                    ls.Selected = true;

                }

            }
        }

        protected void limpiarPantalla() {
            chkTyC.Checked = false;
            inpAltaEmail.Text = "";
            foreach (ListItem item in checkBoxListReg.Items) {
                item.Selected = false;
            }

        }

    }
}