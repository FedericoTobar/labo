using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tipo : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public string GetSelected()
    {
        return RadioButtonTipo.SelectedValue;
    }
    
    public string GetFecha()
    {
        return FechaVencimiento.Text;
    }

    public void SetFecha(string text)
    {
        FechaVencimiento.Text = text;
    }

    public void Deshabilitar()
    {
        FechaVencimiento.Enabled = false;
        FechaVencimiento.Visible = false;
        LabelFecha.Enabled = false;
        LabelFecha.Visible = false;
        ValidarCampoFecha.Enabled = false;
        FechaVencimiento.Text = "";
    }

    public void Habilitar()
    {
        FechaVencimiento.Enabled = true;
        FechaVencimiento.Visible = true;
        LabelFecha.Enabled = true;
        LabelFecha.Visible = true;
        ValidarCampoFecha.Enabled = true;        
    }

}