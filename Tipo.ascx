<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Tipo.ascx.cs" Inherits="Tipo" %>
<asp:RadioButtonList ID="RadioButtonTipo" runat="server" AutoPostBack="true">
    <asp:ListItem Value="Con Vencimiento">Con Vencimiento</asp:ListItem>
    <asp:ListItem Value="Sin Vencimiento">Sin Vencimiento</asp:ListItem>
</asp:RadioButtonList>
<asp:Label runat="server" ID="LabelFecha">Fecha Vencimiento: </asp:Label><br /><asp:TextBox runat="server" ID="FechaVencimiento" placeholder="Dia/Mes/Año"/>
<asp:RequiredFieldValidator runat="server" ID="ValidarCampoFecha" ControlToValidate="FechaVencimiento" ErrorMessage="<br>No puede ser vacío este campo!"/>