using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Categoria : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public bool algunoEstaCheck()
    {
        var length = CheckBoxCategoria.Items.Count;
        for (int i = 0; i < length; i++)
        {
            if (CheckBoxCategoria.Items[i].Selected)
            {
                return true;
            }
        }
        return false;
    }

    public String SeleccionComboBox()
    {
        String palabra = "";

        var length = CheckBoxCategoria.Items.Count;
        for (int i = 0; i < length; i++)
        {
            if (CheckBoxCategoria.Items[i].Selected)
            {
                palabra += CheckBoxCategoria.Items[i].Text + "\n";
            }
        }
        return palabra;
    }

    protected void AlMenosUnoSeleccionado_ServerValidate(object source, ServerValidateEventArgs args)
    {
        args.IsValid = algunoEstaCheck();
    }
}